import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/host_and_new/hot_new_service.dart';
import 'package:netflix_clone/domain/host_and_new/model/hot_and_new.dart';

@LazySingleton(as: HotNewService)
class HotNewServiceImple implements HotNewService {
  @override
  Future<Either<MainFailure, UpcomingResponse>> getCommingSoon()  async{
     try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.upcoming);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = UpcomingResponse.fromJson(response.data);
        // log(result.results.toString());
        return Right(result);
      } else {
        return left(const MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, UpcomingResponse>> getNowPlaying()  async{
     try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = UpcomingResponse.fromJson(response.data);
        // log(result.results.toString());
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