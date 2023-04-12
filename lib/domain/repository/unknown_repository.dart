import 'package:dartz/dartz.dart';
import 'package:rz_test/domain/failure.dart';
import 'package:rz_test/domain/uimodel/unknown.dart';

abstract class UnknownRepository {
  Future<Either<Failure, List<UnknownUiModel>>> getListUnknown();

}