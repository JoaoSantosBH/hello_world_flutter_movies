import 'package:hello_world_flutter_movies/core/foundation/injector/feature_injector.dart';
import 'package:hello_world_flutter_movies/core/foundation/injector/get.dart';
import 'package:hello_world_flutter_movies/features/movies/data/handlers/movies_exception_handler.dart';
import 'package:hello_world_flutter_movies/features/movies/data/repositories/movies_repository_impl.dart';
import 'package:hello_world_flutter_movies/features/movies/domain/repositories/movies_repository_interface.dart';
import 'package:hello_world_flutter_movies/features/movies/domain/usecases/get_movies_usecase.dart';
import 'package:hello_world_flutter_movies/features/movies/presentation/viewmodel/movies_view_model.dart';

class MoviesInjector extends FeatureInjector {
  @override
  void injectAnalytics() {}

  @override
  void injectExceptionHandler() {
    get.registerFactory<MoviesExceptionHandler>(
      () => MoviesExceptionHandler(),
    );
  }

  @override
  void injectRepositories() {
    get.registerFactory<MoviesRepositoryInterface>(
      () => MoviesRepositoryImpl(
        datasource: get(),
        exceptionHandler: get(),
      ),
    );
  }

  @override
  void injectUseCases() {
    get.registerFactory<GetMoviesUsecaseInterface>(() => GetMoviesUsecaseImpl(
          repository: get(),
        ));
  }

  @override
  void injectViewModels() {
    get.registerFactory<MoviesViewModel>(
      () => MoviesViewModel(
        getMoviesUsecase: get(),
      ),
    );
  }
}
