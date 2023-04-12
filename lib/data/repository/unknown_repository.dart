import 'package:dartz/dartz.dart';
import 'package:rz_test/data/datasources/unknown/unknown_remote_data_source.dart';
import 'package:rz_test/data/mapper/unknown_mapper.dart';
import 'package:rz_test/domain/failure.dart';
import 'package:rz_test/domain/repository/unknown_repository.dart';
import 'package:rz_test/domain/uimodel/unknown.dart';

class UnknownRepositoryImpl extends UnknownRepository {
  final UnknownRemoteDataSource _remoteDataSource;

  UnknownRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<Failure, List<UnknownUiModel>>> getListUnknown() async {
    try {
      final result = await _remoteDataSource.fetchAll();
      final filteredResult = result.where((e) => e.pantoneValue.startsWith('17')).toList();
      return Right(
        filteredResult.map((e) => e.toUiModel()).toList()
      );
    } on Exception catch(e) {
      return Left(
        Failure(e.toString())
      );
    }
  }

}