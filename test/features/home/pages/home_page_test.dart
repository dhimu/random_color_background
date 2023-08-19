import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:random_color_background/core/constants/color.dart'
    as constant_color;
import 'package:random_color_background/features/home/presentation/bloc/background_color/background_color_cubit.dart';
import 'package:random_color_background/features/home/presentation/pages/home_page.dart';
import 'package:random_color_background/main_app.dart';

void main() {
  group('HomePage', () {
    late BackgroundColorCubit backgroundColorCubit;
    setUp(() {
      backgroundColorCubit = BackgroundColorCubit();
    });

    tearDown(() {
      backgroundColorCubit.close();
    });

    testWidgets('App launches and shows HomePage', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: MainApp(),
        ),
      );

      /// Verify that HomePage is displayed after the app launches
      expect(find.byType(HomePage), findsOneWidget);

      /// Verify render correctly
      expect(find.text('Hello there'), findsOneWidget);
    });

    testWidgets('background color changes on tap', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<BackgroundColorCubit>.value(
            value: backgroundColorCubit,
            child: HomePage(),
          ),
        ),
      );

      await tester.pumpAndSettle();
      final initialBackgroundColor = backgroundColorCubit.state.color;

      /// is initial background color white
      expect(initialBackgroundColor, constant_color.initialBackgroundColor);

      expect(find.byType(Scaffold), findsOneWidget);

      await tester.tap(find.byType(Scaffold));
      final backgroundColorAfterFirstTab = backgroundColorCubit.state.color;

      ///verify background color change after change
      expect(
        backgroundColorAfterFirstTab,
        isNot(equals(initialBackgroundColor)),
      );

      await tester.tap(find.byType(Scaffold));
      final backgroundColorAfterSecondTab = backgroundColorCubit.state.color;

      ///verify background color change after change
      expect(
        backgroundColorAfterSecondTab,
        isNot(equals(backgroundColorAfterFirstTab)),
      );
    });
  });
}
