import 'package:flutter/material.dart';

// TODO: show list of story titles

class StoryTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: _storylist(['storyList']),
        ),
      ),
    );
  }

  List<Widget> _storylist(List<String> storyList) {
    List<Widget> creatureStatWidgetList = [];

    return creatureStatWidgetList;
  }
}
