import 'package:flutter/material.dart';

import '../../../../../core/constants/keys.dart';
import '../../../../../core/i18n/i18n.dart';

import '../../domain/entities/user_info.dart';
import 'button_widget.dart';

class LoginAlertWidget extends StatefulWidget {
  final UserInfo userInfo;

  const LoginAlertWidget({super.key, required this.userInfo});

  @override
  State<LoginAlertWidget> createState() => _LoginAlertWidgetState();
}

class _LoginAlertWidgetState extends State<LoginAlertWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(I18n.strings.textLoginSuccess),
      content: SizedBox(
        height: 130,
        child: Center(
          child: Column(
            children: [
              Text(
                I18n.strings.textLoginSuccessName(widget.userInfo.name),
              ),
              Text(
                I18n.strings.textLoginSuccessEmail(widget.userInfo.email),
              ),
              const SizedBox(
                height: 16,
              ),
              ButtonWidget(
                key: const Key(keyLoginAlertButton),
                text: I18n.strings.textButtonLoginSuccess,
                onPressed: _onClickPushMovies,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onClickPushMovies() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return  Container();
        },
      ),
    );
  }
}
