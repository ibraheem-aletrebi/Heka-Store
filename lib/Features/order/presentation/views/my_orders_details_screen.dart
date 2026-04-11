import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/order/presentation/blocs/order_details/order_details_bloc.dart';
import 'package:heka_store/Features/order/presentation/widgets/order_details_body.dart';
import 'package:heka_store/core/di/injector.dart';

class OrderDetailsView extends StatelessWidget {
  final int orderId;
  const OrderDetailsView({super.key, required this.orderId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          sl<OrderDetailsBloc>()
            ..add(OrderDetailsEvent.loaded(orderId: orderId)),
      child: const OrderDetailsBody(),
    );
  }
}
