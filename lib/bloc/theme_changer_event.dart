import 'package:meta/meta.dart';

@immutable
abstract class ThemeChangerEvent {}

enum ThemeColor { light, dark }

class ChangeToColor extends ThemeChangerEvent {
  final ThemeColor color;

  ChangeToColor(this.color);
}

class ThemeDark extends ThemeChangerEvent {}

class ThemeLight extends ThemeChangerEvent {}
