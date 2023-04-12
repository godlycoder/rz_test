part of 'unknown_cubit.dart';

@freezed
class UnknownState with _$UnknownState {
  const factory UnknownState.initial() = _Initial;

  const factory UnknownState.hasListUnknown({
    required List<UnknownUiModel> list
  }) = _HasListUnKnown;

  const factory UnknownState.unknownError({
    required String message
  }) = UnknownError;

  const factory UnknownState.isLoading() = _IsLoading;
}
