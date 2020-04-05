import 'package:coka/pages/creature-page.dart';
import 'package:coka/pages/player-page.dart';
import 'package:coka/widgets/menu_drawer/main-menu-drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 2, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: MainMenuDrawer(),
        appBar: AppBar(
          title: Text('CoKA'),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(text: 'Player',),
              Tab(text: 'Creature',)
            ],
          ),
        ),
        floatingActionButton: (_tabController.index == 1)? FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ) : null,
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            PlayerPage(),
            CreaturePage()
          ],
        ),
      ),
    );
  }
}
