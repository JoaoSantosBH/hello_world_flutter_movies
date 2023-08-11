import 'package:flutter/material.dart';

import '../data/failure.dart';

class ViewState<T> extends ChangeNotifier {
  T? _value;
  bool _loading = true;
  Failure? _error;

  ViewState();

  ViewState.loading(this._loading);

  ViewState.value(this._value);

  ViewState.error(this._error);

  T? get value => _value;

  bool get loading => _loading;

  Failure? get error => _error;

  set value(T? value) {
    _loading = false;
    _error = null;
    _value = value;
    notifyListeners();
  }

  /// Remover Erro e Valor ao setar estado de Loading?
  /// Manter os dados de erro e valor
  set loading(bool b) {
    _loading = b;
    _error = null;
    _value = null;
    notifyListeners();
  }

  set error(Failure? error) {
    _error = error;
    _loading = false;
    _value = null;
    notifyListeners();
  }
}
