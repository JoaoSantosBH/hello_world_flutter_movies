import 'package:flutter/material.dart';

import 'strings/pt_br.dart';
import 'strings/translations.dart';

class I18n {
  static Translations strings = PtBr();

  static void load(Locale locale) {
    strings = PtBr();
  }
}
