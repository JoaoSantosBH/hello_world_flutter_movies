import 'package:hello_world_flutter_movies/features/movies/domain/entities/movie.dart';

import '../models/movie_model.dart';

abstract class MoviesDatasourceInterface {

  Future<List<MovieModel>> getMovies();

}
