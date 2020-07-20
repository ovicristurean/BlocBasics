class Location {
  String _title;
  double _latitude;
  double _longitude;

  Location(String title) {
    _title = title;
  }

  String get title => _title;

  double get latitude => _latitude;

  double get longitude => _longitude;
}
