import 'package:flutter/material.dart';

class UndefinedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(40),
          color: Colors.white,
          child: Center(
            child: Text(
              'Pantalla no definida.',
              style: Theme.of(context).textTheme.headline,
            ),
          )),
    );
  }
}
