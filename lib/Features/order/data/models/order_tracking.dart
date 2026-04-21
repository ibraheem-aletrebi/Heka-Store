class OrderTracking {
  final String orderNumber;
  final String status;
  final double? deliveryLatitude;
  final double? deliveryLongitude;
  final double? vendorLatitude;
  final double? vendorLongitude;
  final double? currentLatitude;
  final double? currentLongitude;

  const OrderTracking({
    required this.orderNumber,
    required this.status,
    this.deliveryLatitude,
    this.deliveryLongitude,
    this.vendorLatitude,
    this.vendorLongitude,
    this.currentLatitude,
    this.currentLongitude,
  });

  factory OrderTracking.fromJson(Map<String, dynamic> json) {
    return OrderTracking(
      orderNumber: json['orderNumber'] as String,
      status: json['status'] as String,
      deliveryLatitude: (json['deliveryLatitude'] as num?)?.toDouble(),
      deliveryLongitude: (json['deliveryLongitude'] as num?)?.toDouble(),
      vendorLatitude: (json['vendorLatitude'] as num?)?.toDouble(),
      vendorLongitude: (json['vendorLongitude'] as num?)?.toDouble(),
      currentLatitude: (json['currentLatitude'] as num?)?.toDouble(),
      currentLongitude: (json['currentLongitude'] as num?)?.toDouble(),
    );
  }

  bool get hasDeliveryLocation =>
      deliveryLatitude != null && deliveryLongitude != null;

  bool get hasVendorLocation =>
      vendorLatitude != null && vendorLongitude != null;

  bool get hasCurrentLocation =>
      currentLatitude != null && currentLongitude != null;
}