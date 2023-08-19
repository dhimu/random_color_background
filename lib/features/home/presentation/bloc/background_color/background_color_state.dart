part of 'background_color_cubit.dart';

/// An abstract class representing the background color state.
@immutable
abstract class BackgroundColorState {
  /// The current color of the background.
  final Color color;

  /// Create a new background color state.
  const BackgroundColorState(this.color);
}

/// Initial state for the background color, set to white.
class BackgroundColorStateInitial extends BackgroundColorState {
  /// initial background color .
  const BackgroundColorStateInitial() : super(initialBackgroundColor);
}

/// State representing a background color change.
class BackgroundColorStateChange extends BackgroundColorState {
  /// The new background color.
  final Color newColor;

  /// Create a new background color change state.
  const BackgroundColorStateChange(this.newColor) : super(newColor);
}
