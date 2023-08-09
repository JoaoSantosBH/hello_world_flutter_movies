import '../../../../core/foundation/data/result.dart';
import '../entities/login_request.dart';
import '../entities/user_info.dart';
import '../repositories/login_repository_interface.dart';


abstract class DoLoginUsecaseInterface {
  Future<Result<UserInfo>> call({required LoginRequest loginRequest});
}

class DoLoginUsecaseImpl implements DoLoginUsecaseInterface {

  final LoginRepositoryInterface loginRepository;

  DoLoginUsecaseImpl({required this.loginRepository});

  @override
  Future<Result<UserInfo>> call({
    required LoginRequest loginRequest,
  }) async {
    return await loginRepository.doLogin(loginRequest: loginRequest);
  }
}
