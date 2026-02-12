import 'package:json_annotation/json_annotation.dart';

part 'hot_and_new.g.dart';

@JsonSerializable()
class UpcomingResponse {
  @JsonKey(name: 'results')
  List<UpcomingData>? results;

  UpcomingResponse({
    this.results,
  });

  factory UpcomingResponse.fromJson(Map<String, dynamic> json) {
    return _$UpcomingResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpcomingResponseToJson(this);
}

@JsonSerializable()
class UpcomingData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'overview')
  String? overview;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'release_date')
  String? releaseDate;

  UpcomingData({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.releaseDate,
  });

  factory UpcomingData.fromJson(Map<String, dynamic> json) {
    return _$UpcomingDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpcomingDataToJson(this);
}
