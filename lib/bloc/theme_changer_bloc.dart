import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import './bloc.dart';

class ThemeChangerBloc extends Bloc<ThemeChangerEvent, ThemeChangerState> {
  @override
  ThemeChangerState get initialState => InitialThemeChangerState();

  @override
  Stream<ThemeChangerState> mapEventToState(
    ThemeChangerEvent event,
  ) async* {
    if (event is ThemeDark) {
      yield CurrentThemeChangerState(ThemeData.dark());
    }

    if (event is ThemeLight) {
      yield CurrentThemeChangerState(ThemeData.light());
    }
  }
}
