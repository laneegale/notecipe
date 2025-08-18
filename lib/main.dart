import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:notecipe/pages/startup/startup.dart';
import 'package:notecipe/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => (MyAppState()),
      child: MaterialApp(
        title: 'Notecipe',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light,
        home: StartupPage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
}
