import 'package:equatable/equatable.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';

abstract class CategoryProductsState extends Equatable {
  const CategoryProductsState();

  @override
  List<Object?> get props => [];
}

class CategoryProductsInitial extends CategoryProductsState {}

class CategoryProductsLoading extends CategoryProductsState {}

class CategoryProductsLoaded extends CategoryProductsState {
  const CategoryProductsLoaded({
    required this.products,
    required this.hasNextPage,
    required this.totalCount,
  });

  final List<ProductModel> products;
  final bool hasNextPage;
  final int totalCount;

  @override
  List<Object?> get props => [products, hasNextPage, totalCount];
}

class CategoryProductsError extends CategoryProductsState {
  const CategoryProductsError(this.message);
  final String message;

  @override
  List<Object?> get props => [message];
}