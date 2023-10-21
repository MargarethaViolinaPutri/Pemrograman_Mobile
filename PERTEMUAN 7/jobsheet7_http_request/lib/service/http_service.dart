import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jobsheet7_http_request/models/movie.dart';

class HttpService {
  final String apiKey = '168a39405d472b370ac209c17d078125';
  final String baseUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=';

  Future<List<Movie>?> getPopularMovies() async {
    final String uri = baseUrl + apikey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Success");
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List<Movie> movies =
          List<Movie>.from(moviesMap.map((i) => Movie.fromJson(i) as Movie));
      return movies;
    } else {
      print("Fail");
      return null;
    }
  }
}
