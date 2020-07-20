import 'dart:async';

import 'package:blocbasics/bloc/bloc.dart';
import 'package:blocbasics/data/location.dart';
import 'package:blocbasics/data/restaurant.dart';

import '../constants.dart';

class RestaurantBloc implements Bloc {
  final Location location;
  final _client = ZomatoClient();
  final _controller = StreamController<List<Restaurant>>();

  Stream<List<Restaurant>> get stream => _controller.stream;

  RestaurantBloc(this.location);

  void submitQuery(String query) async {
    //final results = await _client.fetchRestaurants(location, query);
    if (query.isEmpty) {
      _controller.sink.add(new List());
      return;
    }
    List<Restaurant> results = new List();
    results.add(Restaurant("Shanghai"));
    results.add(Restaurant("Napoli Centrale"));
    results.add(Restaurant("Chios"));
    _controller.sink.add(results);
  }

  @override
  void dispose() {
    _controller.close();
  }
}
