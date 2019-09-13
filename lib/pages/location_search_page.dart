import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_parsed_text/flutter_parsed_text.dart';
import 'package:weather/bloc/bloc.dart';
import 'package:weather_icons/weather_icons.dart';

class LocationSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: LocationSearchDelegate(),
              );
            },
          )
        ],
      ),
      body: Center(child: Text('Type your Location')),
    );
  }
}

class LocationSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        this.close(context, null);
        //Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: BlocBuilder<WeatherApiBloc, WeatherApiState>(
        builder: (context, state) {
          if (state is LocationState) {
            final location = state.location;
            final today = location.consolidatedWeather[0];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${today.theTemp.round().toString()} º',
                    style: Theme.of(context).textTheme.display3,
                  ),
                ),
                Text(
                  location.title,
                  style: Theme.of(context).textTheme.display2,
                ),
                Text(today.weatherStateName),
                Expanded(
                  child: BoxedIcon(
                    WeatherApiBloc.weatherIconfromState[today.weatherStateAbbr],
                    size: MediaQuery.of(context).size.width * .5,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: RawMaterialButton(
                    onPressed: () {},
                    child: new Icon(
                      Icons.add,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      size: 35.0,
                    ),
                    shape: new CircleBorder(),
                    elevation: 2.0,
                    fillColor: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.all(10.0),
                  ),
                ),
              ],
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Perform a query to the bloc and return the results as a widget;
    // Delegate as a query prop which is type String
    if (query.isNotEmpty && query.length >= 2) {
      // queries are debounced in the bloc
      BlocProvider.of<WeatherApiBloc>(context)
          .dispatch(LocationSearchEvent(query));
    } else {
      return Center(
        child: Icon(
          Icons.search,
          size: 64,
        ),
      );
    }

    return BlocBuilder<WeatherApiBloc, WeatherApiState>(
      builder: (context, state) {
        // when is fecthing data
        if (state is BusyState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        // when data is returned
        else if (state is LocationSearchState) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final suggestion = state.locationSearch[index].title;
              print(suggestion);
              print(query);

              final pattern = query.isNotEmpty
                  ? query
                  : '¯|_(ツ)_|¯'; // needs an unmatchable query here in order to display normal text otherwise the text would be all highlighted

              var listTile = ListTile(
                onTap: () {
                  showResults(context);
                  // show results and dispatch the woeid of the selcted location
                  BlocProvider.of<WeatherApiBloc>(context).dispatch(
                      LocationEvent(state.locationSearch[index].woeid));
                },
                title: ParsedText(
                  style: Theme.of(context).textTheme.title,
                  text: suggestion,
                  parse: <MatchText>[
                    MatchText(
                      onTap: () {
                        showResults(context);
                        // show results and dispatch the woeid of the selcted location
                        BlocProvider.of<WeatherApiBloc>(context).dispatch(
                            LocationEvent(state.locationSearch[index].woeid));
                      },
                      pattern: pattern,
                      regexOptions: RegexOptions(caseSensitive: false),
                      style: TextStyle(color: Theme.of(context).accentColor),
                    ),
                  ],
                ),
              );
              return listTile;
            },
            itemCount: state.locationSearch.length,
          );
        }
        // default view without typing anything
        else {
          return Center(
            child: Text('Type The Location'),
          );
        }
      },
    );
  }
}
