import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ThemeChangerState {}

class InitialThemeChangerState extends ThemeChangerState {
  final ThemeData theme = ThemeData.light();
}

class CurrentThemeChangerState extends ThemeChangerState {
  final ThemeData theme;
  CurrentThemeChangerState(this.theme);
}
