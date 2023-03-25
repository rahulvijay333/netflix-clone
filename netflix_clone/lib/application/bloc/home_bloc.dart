import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/download_services.dart';
import 'package:netflix_clone/domain/downloads/model/download_response.dart';
import 'package:netflix_clone/domain/host_and_new/hot_new_service.dart';
import 'package:netflix_clone/domain/host_and_new/model/hot_and_new.dart';

part 'home_event.dart';
part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final HotNewService _hotNewService;
  final DownloadService _downloadService;
  
  
  
  HomeBloc(this._downloadService, this._hotNewService) : super(HomeState.initial()) {
    on<GetHomeScreenData>((event, emit) async {

       //---------------------------- send loading to UI

       if(state.pastYearMovieList.isNotEmpty){
        emit(state);
        return;
       }
        
      emit(state.copyWith(isLoading: true, hasError: false));
      //------------------------------ get Data

      final _movieResult1 = await _hotNewService.getCommingSoon();
      final _movieResult2 = await _hotNewService.getNowPlaying();
      final _tvResult1 = await _downloadService.getDownloadsImages();

      //-------------------------------transaform Data

      //--------------------------------------------------------- past year & south
      _movieResult1.fold(

          //failure

          (l) {
        return emit(HomeState(
          pastYearMovieList: [],
          trendingNowList: [],
          tenseDramasList: [],
          southIndianMovieList: [],
          top10TvShowsList: [],
          isLoading: false,
          hasError: true,
          id: DateTime.now().millisecondsSinceEpoch.toString(),
        ));
      },

          //sucess

          ( resp) {
        final pastYear = resp.results;
        pastYear?.shuffle();
        return emit(HomeState(
          pastYearMovieList: state.pastYearMovieList,
          trendingNowList: pastYear!,
          tenseDramasList: resp.results!,
          southIndianMovieList: state.southIndianMovieList,
          top10TvShowsList: state.top10TvShowsList,
          isLoading: false,
          hasError: false,
          id: DateTime.now().millisecondsSinceEpoch.toString(),
        ));
      });

      //----------------------------------------------------------trending
      _movieResult2.fold(

          //failure
          (l) {
        return emit(HomeState(
            pastYearMovieList: [],
            trendingNowList: [],
            tenseDramasList: [],
            southIndianMovieList: [],
            top10TvShowsList: [],
            isLoading: false,
            hasError: true,
            id: DateTime.now().millisecondsSinceEpoch.toString()));
      },
          //sucess

          ( resp) {
        final trendingNow = resp.results;
        return emit(HomeState(
          pastYearMovieList: state.pastYearMovieList,
          trendingNowList: trendingNow!,
          tenseDramasList: resp.results!,
          southIndianMovieList: state.southIndianMovieList,
          top10TvShowsList: resp.results!,
          isLoading: false,
          hasError: true,
          id: DateTime.now().millisecondsSinceEpoch.toString(),
        ));
      });

      //---------------------------------------------------------top10 & tense
      _tvResult1.fold(
          //failure

          (failure) {
        return emit(HomeState(
          pastYearMovieList: [],
          trendingNowList: [],
          tenseDramasList: [],
          southIndianMovieList: [],
          top10TvShowsList: [],
          isLoading: false,
          hasError: true,
          id: DateTime.now().millisecondsSinceEpoch.toString(),
        ));
      },
          //sucess

          (resp) {
        final top10 = resp.results!;
        top10.shuffle();
        return emit(HomeState(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          pastYearMovieList: resp.results!,
          trendingNowList: state.trendingNowList,
          tenseDramasList: state.tenseDramasList,
          southIndianMovieList: resp.results!,
          top10TvShowsList: state.top10TvShowsList,
          isLoading: false,
          hasError: false,
        ));
      });

      
      
    });
  }
}
