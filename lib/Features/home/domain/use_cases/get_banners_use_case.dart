
import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetBannersUseCase {
  final HomeRepo _repo;
  const GetBannersUseCase({required HomeRepo repo}) : _repo = repo;

  Future<ApiResult<List<BannerModel>>> call() => _repo.getBanners();
}