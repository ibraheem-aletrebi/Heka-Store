import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/paginated_result.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetBrandsUseCase {
  final HomeRepo _repo;
  const GetBrandsUseCase({required HomeRepo repo}) : _repo = repo;

  Future<ApiResult<PaginatedResult<BrandModel>>> call({
    int pageNumber = 1,
    int pageSize = 10,
  }) =>
      _repo.getBrands(pageNumber: pageNumber, pageSize: pageSize);
}