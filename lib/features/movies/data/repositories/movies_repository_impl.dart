import 'package:hello_world_flutter_movies/core/foundation/base_repository/base_repository.dart';
import 'package:hello_world_flutter_movies/core/foundation/data/result.dart';
import 'package:hello_world_flutter_movies/features/movies/domain/entities/movie.dart';
import 'package:hello_world_flutter_movies/features/movies/domain/repositories/movies_repository_interface.dart';

import '../datasources/movies_datasource.dart';
import '../handlers/movies_exception_handler.dart';
import '../mapper/movies_mapper.dart';

class MoviesRepositoryImpl extends BaseRepository<MoviesExceptionHandler>
    implements MoviesRepositoryInterface {
  final MoviesDatasourceInterface datasource;

  MoviesRepositoryImpl({
    required this.datasource,
    required MoviesExceptionHandler exceptionHandler,
  }) : super(exceptionHandler: exceptionHandler);

  @override
  Future<Result<List<Movie>>> getMovies() async {
    return await exec<List<Movie>>(() async {

      final result = await datasource.getMovies();
      return result.map((e) => MoviesMapper.toEntity(e)).toList();

    });
  }
}
