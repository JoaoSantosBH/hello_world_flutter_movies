

import '../models/login_request_model.dart';
import '../models/user_info_model.dart';

abstract class LoginDatasourceInterface {
  Future<UserInfoModel> doLogin({required LoginRequestModel loginRequest});
}
