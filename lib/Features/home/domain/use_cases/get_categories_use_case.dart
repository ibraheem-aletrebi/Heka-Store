
import 'package:heka_store/Features/home/data/models/category/category_model.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetCategoriesUseCase {
  final HomeRepo _repo;
  const GetCategoriesUseCase({required HomeRepo repo}) : _repo = repo;

  Future<ApiResult<List<CategoryModel>>> call() => _repo.getCategories();
}