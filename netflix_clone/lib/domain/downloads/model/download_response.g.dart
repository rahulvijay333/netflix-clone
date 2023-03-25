// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadModel _$DownloadModelFromJson(Map<String, dynamic> json) =>
    DownloadModel(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => ResponseData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DownloadModelToJson(DownloadModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) => ResponseData(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
