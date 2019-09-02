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
    if (event is ChangeToColor) {
      var e = event;

      if (e.color == ThemeColor.light) {
        yield CurrentThemeChangerState(ThemeData.light());
      }
      if (e.color == ThemeColor.dark) {
        yield CurrentThemeChangerState(ThemeData.dark());
      }
    }
  }
}
