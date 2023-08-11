import 'package:flutter/material.dart';
import 'package:hello_world_flutter_movies/core/constants.dart';
import 'package:hello_world_flutter_movies/injectors.dart';
import 'package:hello_world_flutter_movies/theme/theme.dart';

import 'features/login/presentation/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const CleanNext(),
    );
  }
}

class CleanNext extends StatefulWidget {
  const CleanNext({super.key});

  @override
  State<CleanNext> createState() => _CleanNextState();
}

class _CleanNextState extends State<CleanNext> {
  @override
  void initState() {
    super.initState();
    _configApp();
  }

  Future<void> _configApp() async {
    await ReleaseInjectors().inject();

    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}


