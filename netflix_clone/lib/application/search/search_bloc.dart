import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/download_services.dart';
import 'package:netflix_clone/domain/downloads/model/download_response.dart';
import 'package:netflix_clone/domain/search/model/search_response_model.dart';
import 'package:netflix_clone/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadService _downloadService;
  final SearchService _searchService;

  SearchBloc(this._downloadService, this._searchService)
      : super(SearchState.initial()) {
   

    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(state);

        return;
      }

      emit(const SearchState(
          searchResultList: [], idleList: [], isLoading: true, isError: false));

      final _result = await _downloadService.getDownloadsImages();
      _result.fold(

          //-----------------------------------------error
          (failure) {
        return emit(const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true));
      },
          //--------------------------------------idle list
          (idleList) {
        return emit(SearchState(
            searchResultList: [],
            idleList: idleList.results!,
            isLoading: false,
            isError: false));
      });
    });

    //search results

    on<SearchMovie>((event, emit) async {
      emit(SearchState(
          searchResultList: [],
          idleList: state.idleList,
          isLoading: true,
          isError: false));

      final _result =
          await _searchService.searchMovies(search: event.searchQuery);
      _result.fold(

          //---------------------------------error
          (failure) {
        return emit(const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true));
      },
          //---------------------------------------search list
          (response) {
        return emit(SearchState(
            searchResultList: response.results!,
            idleList: state.idleList,
            isLoading: false,
            isError: false));
      });
    });
  }
}
