import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/domain/core/failures/failure.dart';
import 'package:netflix_clone/domain/host_and_new/model/hot_and_new.dart';

abstract class HotNewService {
  Future<Either<MainFailure, UpcomingResponse>> getCommingSoon();
  Future<Either<MainFailure, UpcomingResponse>> getNowPlaying();
}
