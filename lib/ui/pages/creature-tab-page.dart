import 'package:coka/core/models/Creature.dart';
import 'package:coka/ui/providers/creature-provider.dart';
import 'package:coka/ui/widgets/creature-stat-widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreatureTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<CreatureProvider>(
        builder: (context, provider, child) {
          return ListView(
            children: _creatureList(provider.creaturelist),
          );
        },
      ),
    );
  }

  List<Widget> _creatureList(List<Creature> creaturelist) {
    List<CreatureStatWidget> creatureStatWidgetList = [];

    if(creaturelist != null) {
      for(int x=0 ; x< creaturelist.length ; x++) {
        creatureStatWidgetList.add(CreatureStatWidget(
          isSummary: false,
          creature: creaturelist[x],
        ));
      }
    }

    return creatureStatWidgetList;
  }
}
