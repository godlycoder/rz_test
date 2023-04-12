import 'package:dartz/dartz.dart';
import 'package:rz_test/domain/failure.dart';
import 'package:rz_test/domain/repository/user_repository.dart';

class IsLoggedIn {
  final UserRepository _repository;

  IsLoggedIn(this._repository);

  Future<Either<Failure, bool>> execute() {
    return _repository.isLoggedIn();
  }

}