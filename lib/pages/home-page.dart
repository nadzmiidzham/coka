import 'package:coka/pages/creature-page.dart';
import 'package:coka/pages/player-page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('CoKA'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Player',),
              Tab(text: 'Creature',)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            PlayerPage(),
            CreaturePage()
          ],
        ),
      ),
    );
  }
}
