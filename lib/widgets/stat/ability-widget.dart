import 'package:flutter/material.dart';

class AbilityWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement ability widget
    return Card(
      child: Container(
        height: 50,
        width: 50,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add),
              Text('2')
            ],
          ),
        ),
      ),
    );
  }
}
