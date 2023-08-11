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

    return ElevatedButton(
      onPressed: showProgress ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary
      ),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 200,
        height: 40,
        child: showProgress
            ?  Center(
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    key: const Key(keyLoginCircularProgressIndicator),
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).colorScheme.onPrimary),
                  ),
                ),
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
      ),
    );
  }
}
