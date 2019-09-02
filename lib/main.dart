import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather/bloc/bloc.dart';
import 'package:weather/bloc/theme_changer_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeChangerBloc>(
        builder: (context) => ThemeChangerBloc(),
        child: BlocBuilder<ThemeChangerBloc, ThemeChangerState>(
            builder: (context, state) => MaterialApp(
                  title: 'Flutter Demo',
                  theme: (state is CurrentThemeChangerState)
                      ? state.theme
                      : ThemeData.light(),
                  home: BlocProvider<WeatherApiBloc>(
                      builder: (context) => WeatherApiBloc(Dio()),
                      child: MyHomePage(title: 'Flutter Demo Home Page')),
                )));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    WeatherApiBloc weatherApiBloc = BlocProvider.of<WeatherApiBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('color'),
              onPressed: () {
                BlocProvider.of<ThemeChangerBloc>(context)
                    .dispatch(ChangeToColor(ThemeColor.dark));
              },
            ),
            BlocBuilder<WeatherApiBloc, WeatherApiState>(
              builder: (context, state) {
                if (state is BusyState) {
                  return (Text('Loading...'));
                } else if (state is LocationSearchState) {
                  return Column(
                    children: state.locationSearch
                        .map((l) => Text(l.woeid.toString()))
                        .toList(),
                  );
                } else
                  return Text('Click to load location');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (weatherApiBloc.currentState is BusyState) return;
          print('dispatch');
          weatherApiBloc.dispatch(LocationSearchEvent('lisbon'));
        },
        tooltip: 'get data',
        child: Text(
          'gimme the data',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
