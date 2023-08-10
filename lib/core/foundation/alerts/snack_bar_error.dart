import 'package:flutter/material.dart';

import '../../constants/keys.dart';
import '../data/failure.dart';

void showSnackBarAlert(BuildContext context, Failure failure) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      key: const Key(keyScaffolMessage),
      content: Text(
        failure.message,
      ),
    ),
  );
}