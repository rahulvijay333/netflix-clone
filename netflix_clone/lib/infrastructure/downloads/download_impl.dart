import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/downloads/download_services.dart';
import 'package:netflix_clone/domain/downloads/model/download_response.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: DownloadService)
class DownloadServiceImpl implements DownloadService {
  @override
  Future<Either<MainFailure, DownloadModel>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = DownloadModel.fromJson(response.data);
      
        return Right(result);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clientFailure());
    }
  }
}
