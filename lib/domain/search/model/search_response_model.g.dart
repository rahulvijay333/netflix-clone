// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponseModel _$SearchResponseModelFromJson(Map<String, dynamic> json) =>
    SearchResponseModel(
      results: (json['results'] as List<dynamic>?)
              ?.map(
                  (e) => ResultResponseData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchResponseModelToJson(
        SearchResponseModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

ResultResponseData _$ResultResponseDataFromJson(Map<String, dynamic> json) =>
    ResultResponseData(
      backdropPath: json['backdrop_path'],
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'],
    )..adult = json['adult'] as bool?;

Map<String, dynamic> _$ResultResponseDataToJson(ResultResponseData instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
