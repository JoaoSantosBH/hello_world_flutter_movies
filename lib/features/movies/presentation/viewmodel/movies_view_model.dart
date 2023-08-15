import 'package:hello_world_flutter_movies/core/foundation/states/state_extension.dart';

import '../../../../core/foundation/states/state.dart';
import '../../domain/entities/movie.dart';
import '../../domain/usecases/get_movies_usecase.dart';

class MoviesViewModel {
  final GetMoviesUsecaseInterface getMoviesUsecase;

  MoviesViewModel({
    required this.getMoviesUsecase,
  });

  final moviesState = ViewState<List<Movie>>()..loading = false;

  Future<void> fetch() async {
    await moviesState.update(
      () async => await getMoviesUsecase.call(),
    );
  }
}
