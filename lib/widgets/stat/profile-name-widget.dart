import 'package:flutter/material.dart';

enum StatType { player, creature }
class ProfileNameWidget extends StatelessWidget {
  final StatType statType;

  ProfileNameWidget({this.statType});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text('Name'),
        ),
        Row(
          children: <Widget>[
            Text('1'),
            Text(
              _initNoDesc(),
              style: TextStyle(color: Colors.orange),
            )
          ],
        )
      ],
    );
  }

  String _initNoDesc() {
    switch(statType) {
      case StatType.player:
        return ' Lvl';
        break;
      case StatType.creature:
        return ' XP';
        break;
    }
  }
}
