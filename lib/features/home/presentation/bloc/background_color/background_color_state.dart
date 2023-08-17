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
class BackgroundColorInitial extends BackgroundColorState {

  /// initial background color white.
  const BackgroundColorInitial() : super(Colors.white);
}

/// State representing a background color change.
class BackgroundColorChange extends BackgroundColorState {
  /// The new background color.
  final Color newColor;

  /// Create a new background color change state.
  const BackgroundColorChange(this.newColor) : super(newColor);
}
