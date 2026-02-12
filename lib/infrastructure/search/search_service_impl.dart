import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/api_end_points.dart';
import 'package:netflix_clone/domain/search/model/search_response_model.dart';
import 'package:netflix_clone/domain/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchServiceImpl implements SearchService {
  @override
  Future<Either<MainFailure, SearchResponseModel>> searchMovies(
      {required String search}) async {
    try {
      final Response response = await Dio(BaseOptions())
          .get(ApiEndPoints.search, queryParameters: {'query': search});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponseModel.fromJson(response.data);
      
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
