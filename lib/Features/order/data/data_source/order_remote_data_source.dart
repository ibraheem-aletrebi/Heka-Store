import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:heka_store/Features/order/data/models/create_order_request_model.dart';
import 'package:heka_store/Features/order/data/models/initiate_payment_response_model.dart';
import 'package:heka_store/Features/order/data/models/order_model.dart';
import 'package:heka_store/Features/order/data/models/order_tracking.dart';
import 'package:heka_store/core/constants/api_constants.dart';
import 'package:heka_store/core/services/remote/api_result.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class OrderRemoteDataSource {
  Future<ApiResult<OrderModel>> createOrder(CreateOrderRequestModel request);
  Future<ApiResult<InitiatePaymentResponseModel>> initiatePayment(int orderId);
  Future<ApiResult<OrderTracking>> trackOrder(String orderNumber);
}

class OrderRemoteDataSourceImpl implements OrderRemoteDataSource {
  final ApiService _apiService;

  OrderRemoteDataSourceImpl(this._apiService);

  @override
  Future<ApiResult<OrderModel>> createOrder(
      CreateOrderRequestModel request) async {
    try {
      // Build body manually so field names and enum values are 100% guaranteed
      // to match what the API expects regardless of json_serializable config.
      final body = <String, dynamic>{
        'shippingFirstName': request.shippingFirstName,
        'shippingLastName': request.shippingLastName,
        'shippingPhone': request.shippingPhone,
        'addressId': request.addressId,
        if (request.latitude != null) 'latitude': request.latitude,
        if (request.longitude != null) 'longitude': request.longitude,
        if (request.shippingAddress != null)
          'shippingAddress': request.shippingAddress,
        // Must match Graduation.DAL.Entities.PaymentMethod exactly
        'paymentMethod': request.paymentMethod == PaymentMethod.cashOnDelivery
            ? 'CashOnDelivery'
            : 'CreditCard',
        'clientType': 'mobile',
        if (request.notes != null) 'notes': request.notes,
      };

      debugPrint('── ORDER REQUEST BODY ──────────────────');
      debugPrint(body.toString());
      debugPrint('────────────────────────────────────────');

      final response = await _apiService.post('/api/orders', data: body);

      // Response shape:
      // { "success": true, "data": { "orders": [...], "payment": null | {...} } }
      final data = response.data['data'] as Map<String, dynamic>;
      final orders = data['orders'] as List<dynamic>;
      final order = OrderModel.fromJson(orders.first as Map<String, dynamic>);

      // For online orders, data['payment'] contains paymentUrl.
      // For COD, data['payment'] is null.
      final paymentMap = data['payment'] as Map<String, dynamic>?;
      final paymentUrl = paymentMap?['paymentUrl'] as String?;
      final finalOrder = paymentUrl != null
          ? order.copyWith(paymentUrl: paymentUrl)
          : order;

      return ApiResult.success(finalOrder);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<InitiatePaymentResponseModel>> initiatePayment(
      int orderId) async {
    try {
      final response = await _apiService.post(
        '/api/orders/$orderId/initiate-payment',
        queryParameters: {'clientType': 'mobile'},
      );
      return ApiResult.success(
          InitiatePaymentResponseModel.fromJson(response.data));
    } catch (e) {
      return ApiResult.error(e);
    }
  }

    Future<ApiResult<OrderTracking>> trackOrder(String orderNumber) async {
 try {
      final response = await _apiService.get(
        ApiConstants.orderTracking(orderNumber),
        queryParameters: {'clientType': 'mobile'},
      );
      return ApiResult.success(
          OrderTracking.fromJson(response.data['data'] as Map<String, dynamic>));
    } catch (e) {
      return ApiResult.error(e);
    }
  }
}