import 'package:flutter/material.dart';

/// Define the overall theme for the app.
ThemeData theme() {
  return ThemeData(
    // Set the primary color scheme.
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true, // Enable the use of Material 3 design.
  );
}
