import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_background/core/constants/color.dart';
import 'package:random_color_background/features/home/presentation/bloc/background_color/background_color_cubit.dart';

/// The Home page of the app.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BackgroundColorCubit, BackgroundColorState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<BackgroundColorCubit>().changeColor();
          },
          child: Scaffold(
            backgroundColor: state.color,
            body: const Center(
              child: Text(
                'Hello there',
                style: TextStyle(color: textColor, fontSize: 24),
              ),
            ),
          ),
        );
      },
    );
  }
}
