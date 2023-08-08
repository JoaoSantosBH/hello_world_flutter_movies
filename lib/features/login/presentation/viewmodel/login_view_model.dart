import '../../../../../core/foundation/states/state.dart';
import '../../../../../core/foundation/states/state_extension.dart';
import '../../domain/entities/login_request.dart';
import '../../domain/entities/user_info.dart';
import '../../usecases/do_login_usecase.dart';


class LoginViewModel {
  final DoLoginUsecaseInterface doLoginUsecase;

  LoginViewModel({required this.doLoginUsecase});

  final loginViewState = ViewState<UserInfo>()..loading = false;

  Future<void> doLogin(LoginRequest loginRequest) async {
    loginViewState.update(
      (() async => await doLoginUsecase(
            loginRequest: loginRequest,
          )),
    );
  }

  void cleanViewState() {
    loginViewState.value = null;
  }
}
