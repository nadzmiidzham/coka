import 'package:coka/widgets/creature-stat-widget.dart';
import 'package:flutter/material.dart';

class CreaturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          CreatureStatWidget(),
          CreatureStatWidget(),
          CreatureStatWidget(),
        ],
      ),
    );
  }
}
