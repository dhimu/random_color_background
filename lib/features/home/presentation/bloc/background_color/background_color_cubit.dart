import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:random_color_background/core/util/color_util.dart';

part 'background_color_state.dart';

/// A Cubit responsible for managing the background color state.
class BackgroundColorCubit extends Cubit<BackgroundColorState> {

  /// Initialize the background color cubit.
  BackgroundColorCubit() : super(const BackgroundColorInitial());

  /// Change the background color to a new random color.
  void changeColor() {
    final Color newColor = getRandomColor();
    emit(BackgroundColorChange(newColor));
  }
}
