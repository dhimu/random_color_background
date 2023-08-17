import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:random_color_background/features/home/presentation/bloc/background_color/background_color_cubit.dart';
import 'package:random_color_background/features/home/presentation/pages/home_page.dart';
import 'package:random_color_background/main_app.dart';


class MockBackgroundColorCubit extends Mock implements BackgroundColorCubit {}

void main() {
  group('HomePage', () {
    final MockBackgroundColorCubit mockBackgroundColorCubit = MockBackgroundColorCubit();;

    testWidgets('App launches and shows HomePage', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: MainApp(),
      ),);

      // Verify that HomePage is displayed after the app launches
      expect(find.byType(HomePage), findsOneWidget);
    });

    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider.value(
            value: mockBackgroundColorCubit,
            child: HomePage(),
          ),
        ),
      );

      expect(find.text('Hello there'), findsOneWidget);
    });


  });
}
