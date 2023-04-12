import 'package:rz_test/data/dto/unknown_dto.dart';
import 'package:rz_test/data/mapper/color_mapper.dart';
import 'package:rz_test/domain/uimodel/unknown.dart';

extension UnknownDTOMapper on UnknownDTO {
  UnknownUiModel toUiModel() {
    return UnknownUiModel(
      color.toColor(),
      name,
      year.toString()
    );
  }
}