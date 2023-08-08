import 'package:hello_world_flutter_movies/features/login/presentation/validators/login_validators_interface.dart';
import 'package:hello_world_flutter_movies/features/login/presentation/viewmodel/login_view_model.dart';
import 'package:hello_world_flutter_movies/features/login/usecases/do_login_usecase.dart';

import '../../core/foundation/injector/feature_injector.dart';
import '../../core/foundation/injector/get.dart';
import 'data/handlers/login_exception_handler.dart';
import 'data/repositories/login_repository_impl.dart';
import 'domain/repositories/login_repository_interface.dart';
import 'domain/validators/login_validators_impl.dart';


class LoginInjector extends FeatureInjector {

  @override
  void injectAnalytics() {}

  @override
  void injectRepositories() {
    get.registerFactory<LoginRepositoryInterface>(
      () => LoginRepositoryImpl(
        loginDatasource: get(),
        exceptionHandler: get(),
      ),
    );
  }

  @override
  void injectUseCases() {
    get
      ..registerFactory<DoLoginUsecaseInterface>(
        () => DoLoginUsecaseImpl(
          loginRepository: get(),
        ),
      )
      ..registerFactory<LoginValidatorsInterface>(
        () => LoginValidatorsImpl(),
      );
  }

  @override
  void injectViewModels() {
    get.registerFactory<LoginViewModel>(
      () => LoginViewModel(
        doLoginUsecase: get(),
      ),
    );
  }

  @override
  void injectExceptionHandler() {
    get.registerLazySingleton<LoginExceptionHandler>(
      () => LoginExceptionHandler(),
    );
  }
}
