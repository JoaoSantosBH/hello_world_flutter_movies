
import 'package:hello_world_flutter_movies/features/movies/domain/entities/movie.dart';

import '../../../../core/foundation/data/result.dart';

abstract class MoviesRepositoryInterface {
  Future<Result<List<Movie>>> getMovies();
}