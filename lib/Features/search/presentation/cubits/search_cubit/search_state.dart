// features/search/presentation/cubit/search_state.dart

import 'package:equatable/equatable.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/search/domain/entities/search_filter.dart';


abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object?> get props => [];
}

class SearchInitial extends SearchState {
  final List<String> history;
  const SearchInitial({this.history = const []});

  @override
  List<Object?> get props => [history];
}

class SearchLoading extends SearchState {
  const SearchLoading();
}

class SearchSuccess extends SearchState {
  final List<ProductModel> products;
  final SearchFilter filter;
  final bool isEmpty;

  const SearchSuccess({
    required this.products,
    required this.filter,
    this.isEmpty = false,
  });

  @override
  List<Object?> get props => [products, filter, isEmpty];
}

class SearchError extends SearchState {
  final String message;
  const SearchError(this.message);

  @override
  List<Object?> get props => [message];
}

