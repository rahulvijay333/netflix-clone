import 'package:netflix_clone/domain/core/failures/failure.dart';
import 'package:netflix_clone/domain/downloads/model/download_response.dart';
import 'package:dartz/dartz.dart';

abstract class DownloadService {
  Future<Either<MainFailure, DownloadModel>> getDownloadsImages();
}
