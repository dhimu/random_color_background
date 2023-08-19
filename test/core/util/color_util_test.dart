import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:random_color_background/core/util/color_util.dart';


void main() {
  group('ColorUtil', () {
    test('getRandomColor generates a valid color', () {
      final color = ColorUtil.getRandomColor();

      expect(color, isA<Color>());
    });

    test('getRandomColor generates valid alpha value', () {
      const int alphaValue = 255;
      final color = ColorUtil.getRandomColor();
      expect(color.alpha, equals(alphaValue));
    });

    test('getRandomColor generates valid RGB values', () {
      const int minRange = 0;
      const int maxRange = 255;
      final color = ColorUtil.getRandomColor();
      expect(color.red, inInclusiveRange(minRange, maxRange));
      expect(color.green, inInclusiveRange(minRange, maxRange));
      expect(color.blue, inInclusiveRange(minRange, maxRange));
    });

    test('getRandomColor generates different colors', () {
      final color1 = ColorUtil.getRandomColor();
      final color2 = ColorUtil.getRandomColor();

      expect(color1, isNot(equals(color2)));
    });


  });
}
