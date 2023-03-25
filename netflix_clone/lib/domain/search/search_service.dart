import 'package:dartz/dartz.dart';
import 'package:netflix_clone/domain/core/failures/failure.dart';
import 'package:netflix_clone/domain/search/model/search_response_model.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResponseModel>> searchMovies(
      {required String search});
}
