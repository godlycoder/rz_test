import 'package:dartz/dartz.dart';
import 'package:rz_test/domain/failure.dart';

abstract class UserRepository {

  Future<Either<Failure, bool>> registration(String email, String password);

  Future<Either<Failure, bool>> login(String email, String password);

  Future<Either<Failure, bool>> isLoggedIn();

}