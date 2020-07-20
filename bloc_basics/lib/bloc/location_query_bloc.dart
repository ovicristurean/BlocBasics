import 'dart:async';

import 'package:blocbasics/bloc/bloc.dart';
import 'package:blocbasics/data/location.dart';

import '../constants.dart';

class LocationQueryBloc implements Bloc {
  final _controller = StreamController<List<Location>>();
  final _client = ZomatoClient();

  Stream<List<Location>> get locationStream => _controller.stream;

  void submitQuery(String query) async {
    // 1
    if (query.isEmpty) {
      _controller.sink.add(new List());
      return;
    }
    List<Location> locations = new List();
    locations.add(Location("Gherla"));
    locations.add(Location("Dej"));
    locations.add(Location("Cluj-Napoca"));
    locations.add(Location("Gelsenchircken"));
    // final results = await _client.fetchLocations(query);
    //_controller.sink.add(results);
    _controller.sink.add(locations);
  }

  @override
  void dispose() {
    _controller.close();
  }
}
