import 'package:rz_test/data/dto/token_dto.dart';
import 'package:rz_test/data/dto/user_dto.dart';
import 'package:rz_test/data/services/api_services.dart';

abstract class UserRemoteDataSource {
  Future<UserDTO> registration(String email, String password);

  Future<UserDTO> login(String email, String password);
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  final ApiServices _apiServices;

  UserRemoteDataSourceImpl(this._apiServices);

  @override
  Future<UserDTO> registration(String email, String password) async {
    final tokenResponse = await _apiServices.registration(email, password);
    final token = TokenDTO.fromJson(tokenResponse.data);
    final userResponse = await _apiServices.getUser(token.id);
    return UserDTO.fromJson(userResponse.data['data']);
  }

  @override
  Future<UserDTO> login(String email, String password) async {
    final tokenResponse = await _apiServices.login(email, password);
    final token = TokenDTO.fromJson(tokenResponse.data);
    final userResponse = await _apiServices.getUser(token.id);
    return UserDTO.fromJson(userResponse.data['data']);
  }

}