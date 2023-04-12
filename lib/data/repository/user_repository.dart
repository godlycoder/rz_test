import 'package:dartz/dartz.dart';
import 'package:rz_test/data/datasources/unknown/user_remote_data_source.dart';
import 'package:rz_test/data/preferences/prefs.dart';
import 'package:rz_test/domain/failure.dart';
import 'package:rz_test/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, bool>> registration(String email, String password) async {
    try {
      final user = await _remoteDataSource.login(email, password);
      Prefs.saveUserData(user);
      return const Right(true);
    } on Exception catch(e) {
      return Left(
        Failure(e.toString())
      );
    }
  }

  @override
  Future<Either<Failure, bool>> login(String email, String password) async {
    try {
      final user = await _remoteDataSource.registration(email, password);
      Prefs.saveUserData(user);
      return const Right(true);
    } on Exception catch(e) {
      return Left(
          Failure(e.toString())
      );
    }
  }

  @override
  Future<Either<Failure, bool>> isLoggedIn() async {
    try {
      final result = await Prefs.hasUserData();
      return Right(
        result
      );
    } on Exception {
      return const Left(
        Failure('Error')
      );
    }
  }

}