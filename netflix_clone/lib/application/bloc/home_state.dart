part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String id,
    required List<ResponseData> pastYearMovieList,
    required List<UpcomingData> trendingNowList,
    required List<UpcomingData> tenseDramasList,
    required List<ResponseData> southIndianMovieList,
    required List<UpcomingData> top10TvShowsList,
    required bool isLoading,
    required bool hasError,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        pastYearMovieList: [],
        trendingNowList: [],
        tenseDramasList: [],
        southIndianMovieList: [],
        top10TvShowsList: [],
        isLoading: false,
        hasError: false, id: '0',
      );
}
