import '../../domain/entities/login_request.dart';
import '../models/login_request_model.dart';

class LoginRequestMapper {
  static LoginRequestModel toModel(LoginRequest loginRequest) {
    return LoginRequestModel(
      username: loginRequest.username,
      password: loginRequest.password,
    );
  }
}
