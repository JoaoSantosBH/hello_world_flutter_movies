import 'package:hello_world_flutter_movies/features/movies/data/models/movie_model.dart';
import 'package:hello_world_flutter_movies/features/movies/domain/entities/movie.dart';

import '../../../../core/constants/endpoinst.dart';

class MoviesMapper {
  static Movie toEntity(MovieModel movie) {
    return Movie(
        id: movie.id,
        title: movie.title,
        posterImageUrl: '$moviesPicturePath500${movie.posterImageUrl}',
        averageRating: movie.averageRating,
        overview: movie.overview,
        bannerImageUrl: '$moviesPicturePath500${movie.bannerImageUrl}',
    );
  }
}
