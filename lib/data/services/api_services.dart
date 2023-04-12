import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;

  ApiServices(this._dio);
  
  Future<Response> fetchAllUnknown() async {
    return _dio.get('/unknown');
  }

  Future<Response> registration(String email, String password) {
    return _dio.post('/register', queryParameters: {
      'email' : email,
      'password' : password
    });
  }

  Future<Response> getUser(int id) {
    return _dio.get('users/$id');
  }

  Future<Response> login(String email, String password) {
    return _dio.post('/login', queryParameters: {
      'email' : email,
      'password' : password
    });
  }
  
}