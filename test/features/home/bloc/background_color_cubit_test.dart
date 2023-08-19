import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_background/core/constants/color.dart';
import 'package:random_color_background/features/home/presentation/bloc/background_color/background_color_cubit.dart';

void main() {
  group('BackgroundColorCubit', () {
    late BackgroundColorCubit backgroundColorCubit;

    setUp(() {
      backgroundColorCubit = BackgroundColorCubit();
    });

    tearDown(() {
      backgroundColorCubit.close();
    });

    group('initial', () {
      test('check initial background state is BackgroundColorInitial',
          () async {
        expect(backgroundColorCubit.state, isA<BackgroundColorStateInitial>());
      });
      test('is initial background color $initialBackgroundColor', () async {
        expect(backgroundColorCubit.state.color, initialBackgroundColor);
      });
    });

    blocTest(
      'emits [BackgroundColorChange] when changeColor is called',
      build: () => backgroundColorCubit,
      act: (cubit) => cubit.changeColor(),
      expect: () => [isA<BackgroundColorStateChange>()],
    );
  });
}
