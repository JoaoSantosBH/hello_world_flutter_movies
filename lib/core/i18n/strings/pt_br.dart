import 'translations.dart';

class PtBr implements Translations {

  //LOGIN

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
  String get textButtonLoginSuccess => 'Ir para filmes';

  @override
  String get textLoginSuccess => 'Login realizado com sucesso';

  @override
  String get textButtonLogin  => 'Entrar';

  @override
  String get textGenericFailureMessage =>
      'Ocorreu um erro! Tente novamente mais tarde';

  //MOVIES

  @override
  String get textMoviesListTitle => 'Menu';
}
