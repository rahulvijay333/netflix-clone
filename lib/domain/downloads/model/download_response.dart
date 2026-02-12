import 'package:json_annotation/json_annotation.dart';
part 'download_response.g.dart';

@JsonSerializable()
class DownloadModel {
  List<ResponseData>? results;

  DownloadModel({
    this.results = const [],
  });

  factory DownloadModel.fromJson(Map<String, dynamic> json) {
    return _$DownloadModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadModelToJson(this);
}

@JsonSerializable()
class ResponseData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  ResponseData({
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory ResponseData.fromJson(Map<String, dynamic> json) {
    return _$ResponseDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
