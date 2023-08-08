import 'package:flutter/material.dart';

import '../../../../../core/constants/keys.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool showProgress;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.showProgress = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textColor = Colors.white;

    return ElevatedButton(
      onPressed: showProgress ? null : onPressed,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 200,
        height: 54,
        child: showProgress
            ? const Center(
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    key: Key(keyLoginCircularProgressIndicator),
                    valueColor: AlwaysStoppedAnimation<Color>(textColor),
                  ),
                ),
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: textColor,
                ),
              ),
      ),
    );
  }
}
