import 'package:dartz/dartz.dart';
import 'package:rz_test/domain/failure.dart';
import 'package:rz_test/domain/repository/unknown_repository.dart';
import 'package:rz_test/domain/uimodel/unknown.dart';

class GetListUnknown {
  final UnknownRepository _repository;

  GetListUnknown(this._repository);

  Future<Either<Failure, List<UnknownUiModel>>> execute() {
    return _repository.getListUnknown();
  }
}