import 'package:dartz/dartz.dart';
import 'package:rz_test/domain/failure.dart';
import 'package:rz_test/domain/repository/user_repository.dart';

class DoRegistration {
  final UserRepository _repository;

  DoRegistration(this._repository);

  Future<Either<Failure, void>> execute(String email, String password) {
    return _repository.registration(email, password);
  }

}