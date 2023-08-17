import 'package:flutter/material.dart';
import 'package:random_color_background/config/theme/app_theme.dart';

import 'package:random_color_background/features/home/presentation/pages/home_page.dart';

/// The main application widget that initializes the app.
class MainApp extends StatelessWidget {

  /// Initialize the main app.
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color Background',
      theme: theme(),
      home:  HomePage(),
    );
  }
}
