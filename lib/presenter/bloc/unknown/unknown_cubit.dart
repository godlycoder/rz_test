import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rz_test/domain/uimodel/unknown.dart';
import 'package:rz_test/domain/usecase/get_list_unknown.dart';

part 'unknown_state.dart';
part 'unknown_cubit.freezed.dart';

class UnknownCubit extends Cubit<UnknownState> {
  final GetListUnknown _getListUnknown;
  UnknownCubit(this._getListUnknown) : super(const UnknownState.initial());

  void getListUnknown() async {
    emit(const _IsLoading());

    final result = await _getListUnknown.execute();

    result.fold(
      (failure) => emit(UnknownError(message: failure.message)),
      (data) => emit(_HasListUnKnown(list: data))
    );
  }
}
