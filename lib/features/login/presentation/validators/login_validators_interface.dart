abstract class LoginValidatorsInterface {
  String? Function(String?)? usernameValidator();
  String? Function(String?)? passwordValidator();
}