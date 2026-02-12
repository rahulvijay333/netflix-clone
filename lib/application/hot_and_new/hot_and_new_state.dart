part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required bool isloading,
    required bool isError,
    required List<UpcomingData> upcomingList,
    required List<UpcomingData> nowPlayingList,
  }) = _HotAndNewState;

  factory HotAndNewState.initial() {
    return HotAndNewState(
        isloading: false, upcomingList: [], nowPlayingList: [], isError: false);
  }
}
