part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState(
      {required bool isloading,
      required List<ResponseData> downloads,
      required bool isError}) = _DownloadsState;

  factory DownloadsState.initial() {
    return DownloadsState(isloading: false, downloads: [], isError: false);
  }
}
