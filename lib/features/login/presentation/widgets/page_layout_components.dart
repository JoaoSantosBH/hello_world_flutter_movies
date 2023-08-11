import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world_flutter_movies/features/login/presentation/validators/login_validators_interface.dart';
import '../../../../core/i18n/i18n.dart';

SizedBox logoWidget() {
  return SizedBox(
    width: 185,
    height: 133,
    child: Image.asset('assets/images/splash_logo.png'),
  );
}

TextFormField nameFormField(String key, TextEditingController _controller,
    LoginValidatorsInterface formValidators) {
  FocusNode focusNode = FocusNode();
  return TextFormField(
    key: Key(key),
    controller: _controller,
    decoration: InputDecoration(
      label: Text(
        I18n.strings.textUsernameFormFieldHint,
        style: const TextStyle(fontSize: 16),
      ),
      prefixIcon: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.person),
      ),
      suffixIcon: IconButton(
        icon: const Icon(
          Icons.close,
        ),
        onPressed: () {
          _controller.text = '';
        },
      ),
    ),
    validator: formValidators.usernameValidator(),
  );
}

TextFormField passFormField(String key, TextEditingController _controller,
    LoginValidatorsInterface formValidators) {
  return TextFormField(
    key: Key(key),
    controller: _controller,
    decoration: InputDecoration(
      label: Text(
        I18n.strings.textPasswordFormFieldHint,
        style: const TextStyle(fontSize: 16),
      ),
      prefixIcon: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.lock),
      ),
      suffixIcon: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {_controller.text = '';},
      ),
    ),
    validator: formValidators.passwordValidator(),
    obscureText: true,
  );
}
