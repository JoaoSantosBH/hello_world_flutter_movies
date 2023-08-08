import 'translations.dart';

class PtBr implements Translations {

  @override
  String get textUsernameFormFieldHint => 'Usuário';

  @override
  String get textPasswordFormFieldHint => 'Senha';

  @override
  String get validatorMinLengthPassword =>
      'A senha deve ter no mínimo 3 caracteres';

  @override
  String get validatorMinLengthUsername =>
      'O usuário deve ter no mínimo 3 caracteres';

  @override
  String get validatorRequiredPassword => 'A senha é obrigatória';

  @override
  String get validatorRequiredUsername => 'O usuário é obrigatório';

  @override
  String textLoginSuccessEmail(String email) => 'Email: $email';

  @override
  String textLoginSuccessName(String name) => 'Nome: $name';

  @override
  // TODO: implement textButtonLoginSuccess
  String get textButtonLoginSuccess => 'Ir para filmes';

  @override
  // TODO: implement textLoginSuccess
  String get textLoginSuccess => 'Login realizado com sucesso';

  @override
  // TODO: implement textButtonLogin
  String get textButtonLogin  => 'Entrar';

  @override
  String get textGenericFailureMessage =>
      'Ocorrou um erro, favor tente novamente mais tarde';
}
