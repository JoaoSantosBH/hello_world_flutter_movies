import '../../../../core/foundation/data/result.dart';
import '../entities/login_request.dart';
import '../entities/user_info.dart';

abstract class LoginRepositoryInterface {
  Future<Result<UserInfo>> doLogin({required LoginRequest loginRequest});
}
