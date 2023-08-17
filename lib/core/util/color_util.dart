import 'dart:math';

import 'package:flutter/material.dart';

/// Generate a random color using RGB values.
Color getRandomColor() {
  const int alphaValue = 255;
  const int colorRange = 256;
  final Random random = Random();

  return Color.fromARGB(
    alphaValue,
    random.nextInt(colorRange),
    random.nextInt(colorRange),
    random.nextInt(colorRange),);
}
