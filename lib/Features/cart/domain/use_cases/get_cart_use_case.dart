
import 'package:heka_store/Features/cart/data/models/cart_model.dart';
import 'package:heka_store/Features/cart/domain/repos/cart_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';


class GetCartUseCase {
  final CartRepository _repository;
  const GetCartUseCase(this._repository);

  Future<ApiResult< CartModel>> call() => _repository.getCart();
}