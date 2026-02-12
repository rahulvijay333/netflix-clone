// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_and_new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingResponse _$UpcomingResponseFromJson(Map<String, dynamic> json) =>
    UpcomingResponse(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => UpcomingData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpcomingResponseToJson(UpcomingResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

UpcomingData _$UpcomingDataFromJson(Map<String, dynamic> json) => UpcomingData(
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
    );

Map<String, dynamic> _$UpcomingDataToJson(UpcomingData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
    };
