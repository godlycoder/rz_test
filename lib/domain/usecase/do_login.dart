import 'package:dartz/dartz.dart';
import 'package:rz_test/domain/failure.dart';
import 'package:rz_test/domain/repository/user_repository.dart';

class DoLogin {
  final UserRepository _repository;

  DoLogin(this._repository);

  Future<Either<Failure, bool>> execute(String email, String password) {
    return _repository.login(email, password);
  }
}