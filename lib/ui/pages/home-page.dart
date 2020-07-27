import 'package:coka/ui/pages/creature-tab-page.dart';
import 'package:coka/ui/pages/player-tab-page.dart';
import 'package:coka/ui/pages/story-tab-page.dart';
import 'package:coka/ui/widgets/menu_drawer/main-menu-drawer.dart';
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

    _tabController = TabController(vsync: this, length: 3, initialIndex: 0)
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
      length: _tabController.length,
      child: Scaffold(
        drawer: MainMenuDrawer(),
        appBar: AppBar(
          title: Text('CoKA'),
          bottom: TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(text: 'Story',),
              Tab(text: 'Player',),
              Tab(text: 'Creature',)
            ],
          ),
        ),
        floatingActionButton: (_tabController.index == 1)? FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _showCreatureGenerateMenu();
          },
        ) : null,
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            StoryTabPage(),
            PlayerTabPage(),
            CreatureTabPage()
          ],
        ),
      ),
    );
  }

  _showCreatureGenerateMenu() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10)
        )
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ButtonTheme(
                  minWidth: double.infinity,
                  buttonColor: Colors.blue,
                  child: RaisedButton(
                    child: Text(
                      'Randomize',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: () {
                      _randomizeCreature();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ButtonTheme(
                  minWidth: double.infinity,
                  buttonColor: Colors.red,
                  child: RaisedButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: () {
                      _generateCreature();
                    },
                  ),
                ),
              ),
            ],
          ),
        );
    });
  }

  _randomizeCreature() {
    Navigator.pop(context);
  }

  _generateCreature() {
    Navigator.pop(context);
  }
}
