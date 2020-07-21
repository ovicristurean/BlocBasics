import 'package:blocbasics/data/restaurant.dart';
import 'package:blocbasics/ui/restaurant_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantTile extends StatelessWidget {
  const RestaurantTile({
    Key key,
    @required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: Center(
          child: Text("Chef"),
        ),
      ),
      trailing: Icon(Icons.keyboard_arrow_right),
      title: Text(restaurant.name),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                RestaurantDetailsScreen(restaurant: restaurant),
          ),
        );
      },
    );
  }
}
