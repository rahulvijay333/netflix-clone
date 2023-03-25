import 'package:json_annotation/json_annotation.dart';
part 'search_response_model.g.dart';

@JsonSerializable()
class SearchResponseModel {
  @JsonKey(name: 'results')
  List<ResultResponseData>? results;

  SearchResponseModel({
    this.results = const [],
  });

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SearchResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponseModelToJson(this);
}

@JsonSerializable()
class ResultResponseData {
  bool? adult;
  @JsonKey(name: 'backdrop_path')
  dynamic backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  dynamic posterPath;

  ResultResponseData({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory ResultResponseData.fromJson(Map<String, dynamic> json) {
    return _$ResultResponseDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultResponseDataToJson(this);
}
