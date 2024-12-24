import 'package:flutter/material.dart';
import 'package:my_awesome_namer/state/app_state.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    if (appState.favorites.isEmpty) {
      return Center(
        child: Text("No data"),
      );
    }
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text("You have ${appState.favorites.length} favorites:"),
        ),
        for(var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          )
      ],
    );
  }
}
