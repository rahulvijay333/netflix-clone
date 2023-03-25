import 'package:netflix_clone/core/string.dart';
import 'package:netflix_clone/infrastructure/key/api_key.dart';

class ApiEndPoints {
  static const downloads = "$KbaseUrl/trending/all/day?api_key=$apiKey";
  static const search = "$KbaseUrl/search/movie?api_key=$apiKey";
  static const upcoming = "$KbaseUrl/movie/upcoming?api_key=$apiKey";
  static const nowPlaying = "$KbaseUrl/movie/now_playing?api_key=$apiKey";
}
