import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:random_color_background/features/home/presentation/bloc/background_color/background_color_cubit.dart';

/// The main page of the app.
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _backgroundColorCubit = BackgroundColorCubit();

    return BlocProvider<BackgroundColorCubit>(
      create: (context) => _backgroundColorCubit,
      child: BlocBuilder<BackgroundColorCubit, BackgroundColorState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              _backgroundColorCubit.changeColor();
            },
            child: Scaffold(
              backgroundColor: state.color,
              body: const Center(
                child: Text(
                  'Hello there',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
