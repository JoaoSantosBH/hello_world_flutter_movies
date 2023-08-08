import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter_movies/features/login/presentation/validators/login_validators_interface.dart';

import '../../../../core/i18n/i18n.dart';

SizedBox TopSpaceWidget() {
  return const SizedBox(
    height: 120,
  );
}


SizedBox LogoWidget() {
  return SizedBox(
    width: 185,
    height: 133,
    child: Image.asset('assets/images/splash_logo.png'),
  );
}

TextFormField nameFormField(String key,
    TextEditingController _controller,
    LoginValidatorsInterface formValidators) {
  return TextFormField(
    key: Key(key),
    controller: _controller,
    decoration: InputDecoration(
      label: Text(I18n.strings.textUsernameFormFieldHint),
    ),
    validator: formValidators.usernameValidator(),
  );
}


TextFormField passFormField(String key,
    TextEditingController _controller,
    LoginValidatorsInterface formValidators) {
  return TextFormField(
    key: Key(key),
    controller: _controller,
    decoration: InputDecoration(
      label: Text(I18n.strings.textPasswordFormFieldHint),
    ),
    validator: formValidators.passwordValidator(),
  );
}

