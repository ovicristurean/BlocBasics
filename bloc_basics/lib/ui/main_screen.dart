
import 'package:blocbasics/bloc/bloc_provider.dart';
import 'package:blocbasics/bloc/location_bloc.dart';
import 'package:blocbasics/data/location.dart';
import 'package:blocbasics/ui/location_screen.dart';
import 'package:flutter/cupertino.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(
      stream: BlocProvider.of<LocationBloc>(context).locationStream,
      builder: (context, snapshot) {
        final location = snapshot.data;

        if (location == null) {
          return LocationScreen();
        }

        return Container();
      },
    );
  }
}
