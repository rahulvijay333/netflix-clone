part of 'fast_laughs_bloc.dart';

@freezed
class FastLaughsState with _$FastLaughsState{
  const factory FastLaughsState({
    required List<ResponseData> videoList,
    required bool isLoading,
    required bool isError
  }) = _FastLaughsState;

  factory FastLaughsState.initial() {
    return const FastLaughsState(videoList: [], isLoading: false, isError: false);
  }
}