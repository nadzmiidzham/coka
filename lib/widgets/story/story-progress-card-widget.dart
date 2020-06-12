import 'package:flutter/material.dart';

class StoryProgressCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('HOPE: '),
                  Text('5/10')
                ],
              ),
              Row(
                children: <Widget>[
                  Text('MORALE: '),
                  Text('2/3')
                ],
              )
            ],
          ),
          Column()
        ],
      ),
    );
  }
}
