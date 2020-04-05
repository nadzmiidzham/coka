import 'package:coka/widgets/player-stat-widget.dart';
import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: <Widget>[
            PlayerStatWidget(),
          ],
        ),
      ),
    );
  }
}