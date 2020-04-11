import 'package:flutter/material.dart';

enum StatType { player, creature }
class ProfileNameWidget extends StatelessWidget {
  final StatType statType;
  final String name;
  final int value;

  ProfileNameWidget({ this.statType=StatType.player, this.name='', this.value=0 });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(name),
        ),
        Row(
          children: <Widget>[
            Text(value.toString()),
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

    return '';
  }
}
