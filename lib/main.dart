import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:weather/models/location_search_response.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dio dio;

  int _counter = 0;

  _getWeather() async {
    try {
      Response response = await dio
          .get('/api/location/search', queryParameters: {'query': 'london'});

      print(response);
      if (response.statusCode != 200) return;

      LocationSearchResponse ls =
          LocationSearchResponse.fromJson(response.data);
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();

    dio = Dio();
    dio.options
      ..responseType = ResponseType.plain
      ..baseUrl = 'https://www.metaweather.com/api/';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _getWeather(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
