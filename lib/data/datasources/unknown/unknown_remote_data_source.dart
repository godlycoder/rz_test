import 'package:rz_test/data/dto/unknown_dto.dart';
import 'package:rz_test/data/services/api_services.dart';

abstract class UnknownRemoteDataSource {
  Future<List<UnknownDTO>> fetchAll();
}

class UnknownRemoteDataSourceImpl extends UnknownRemoteDataSource {
  final ApiServices _apiServices;

  UnknownRemoteDataSourceImpl(this._apiServices);

  @override
  Future<List<UnknownDTO>> fetchAll() async {
    final response = await _apiServices.fetchAllUnknown();
    return (response.data['data'] as List).map(
            (e) => UnknownDTO.fromJson(e)).toList();
  }

}