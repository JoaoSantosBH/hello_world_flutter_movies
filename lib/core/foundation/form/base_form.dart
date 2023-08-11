import 'package:flutter/material.dart';

mixin BaseForm<T extends StatefulWidget> on State<T> {
  final _formKey = GlobalKey<FormState>();

  GlobalKey<FormState> get formKey => _formKey;

  bool formUpdate() {
    FocusScope.of(context).unfocus();
    return _formKey.currentState?.validate() ?? false;
  }

  @override
  void dispose() {
    debugPrint('dispose form');
    _formKey.currentState?.dispose();
    super.dispose();
  }
}
