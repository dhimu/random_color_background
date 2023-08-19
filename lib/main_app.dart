import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_background/config/theme/app_theme.dart';
import 'package:random_color_background/features/home/presentation/bloc/background_color/background_color_cubit.dart';
import 'package:random_color_background/features/home/presentation/pages/home_page.dart';

/// The main application widget
class MainApp extends StatelessWidget {

  /// initialization
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Color Background',
      theme: theme(),
      home: BlocProvider<BackgroundColorCubit>(
        create: (context) => BackgroundColorCubit(),
        child: HomePage(),
      ),
    );
  }
}
