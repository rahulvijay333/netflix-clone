import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/download_services.dart';
import 'package:netflix_clone/domain/downloads/model/download_response.dart';
import 'package:netflix_clone/presentation/fast_laughs/screen_fast_laughs.dart';

part 'fast_laughs_event.dart';
part 'fast_laughs_state.dart';


part 'fast_laughs_bloc.freezed.dart';
@injectable
class FastLaughsBloc extends Bloc<FastLaughsEvent, FastLaughsState> {
  final DownloadService _downloadService;

  FastLaughsBloc(this._downloadService) : super(FastLaughsState.initial()) {
    on<FastLaughsEvent>((event, emit) async {
      //send loading to ui

      if (state.videoList.isNotEmpty) {
        emit(FastLaughsState(
            videoList: state.videoList, isLoading: false, isError: false));

        return;
      }

      emit(const FastLaughsState(
          videoList: [], isLoading: true, isError: false));

      final _result = await _downloadService.getDownloadsImages();
      _result.fold(
          //----------------fail
          (fail) {
        return emit(const FastLaughsState(
            videoList: [], isLoading: false, isError: true));
      },
          //-----------------success
          (response) {
        return emit(FastLaughsState(
            videoList: response.results!, isLoading: false, isError: false));
      });
    });

    on<Liked>((event, emit) {
      likedVideosNotifier.value.add(event.id);
    });

    on<Unliked>((event, emit) {
      likedVideosNotifier.value.remove(event.id);
    });
  }
}
