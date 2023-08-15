import 'package:dio/dio.dart';
import 'package:hello_world_flutter_movies/features/movies/data/datasources/movies_datasource.dart';

import '../../../../core/constants/endpoinst.dart';
import '../models/movie_model.dart';

class MoviesDatasourceImpl implements MoviesDatasourceInterface {
  final Dio dio;

  MoviesDatasourceImpl({required this.dio});

  @override
  Future<List<MovieModel>> getMovies() async {
    final response = await dio.get(
      moviesEndpoint,
      queryParameters: {
        'api_key': '2d3dde5a6c33f4ea16ae6ed1e141714e',
        'language': 'pt-BR',
      },
    );

    final result = response.data['results'] as List;
    return result.map((e) => MovieModel.fromJson(e)).toList();

  }
}
