import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:movies_example/models/movie.dart';

class MoviesService {
  final http.Client httpClient = http.Client();
  static const String apiKey = '780ebbc5bdedf5c2ed2f00a75d78a285';

  Future<List<Movie>> getNowPlaying() async {
    try {
      var response = await httpClient.get(Uri.parse(
          'https://api.themoviedb.org/3/movie/now_playing?api_key=$apiKey&language=en-US&page=1'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        List<Movie> movies =
            data['results'].map<Movie>((e) => Movie.fromMap(e)).toList();
        return movies;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<Movie>> getTopRated() async {
    try {
      var response = await httpClient.get(Uri.parse(
          'https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey&language=en-US&page=1'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        List<Movie> movies =
            data['results'].map<Movie>((e) => Movie.fromMap(e)).toList();
        return movies;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
