import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/downloads/download_services.dart';
import 'package:netflix_clone/domain/downloads/model/download_response.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadService _downloadService;

  DownloadsBloc(this._downloadService) : super(DownloadsState.initial()) {
    on<GetDownloadsImage>((event, emit) async {
      if (state.downloads.isNotEmpty) {
        emit(state);
        return;
      }
      //
      //initialstate
      emit(const DownloadsState(isloading: true, downloads: [], isError: false));

      final _result = await _downloadService.getDownloadsImages();

      _result.fold((failure) {
        return emit(const DownloadsState(
            isloading: false, downloads: [], isError: true));
      }, (downloadList) {
        return emit(DownloadsState(
            isloading: false,
            downloads: downloadList.results!,
            isError: false));
      });
    });
  }
}
