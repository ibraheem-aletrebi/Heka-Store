import 'package:heka_store/Features/home/data/models/category/categories_data.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetCategoriesUseCase {
  final HomeRepo _repo;
  const GetCategoriesUseCase({required HomeRepo repo}) : _repo = repo;

  Future<ApiResult<CategoriesData>> call({
    int pageNumber = 1,
    int pageSize = 20,
  }) => _repo.getCategories(pageNumber: pageNumber, pageSize: pageSize);
}