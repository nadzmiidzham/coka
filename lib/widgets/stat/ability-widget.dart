import 'package:coka/models/Ability.dart';
import 'package:flutter/material.dart';

class AbilityWidget extends StatelessWidget {
  final List<Ability> abilityList;

  AbilityWidget({this.abilityList});

  @override
  Widget build(BuildContext context) {
    // TODO: implement ability widget
    List<Widget> abilityWidgetList = [];

    for(int x=0 ; x<abilityList.length ; x++) {
      abilityWidgetList.add(_abilityWidget(abilityList[x]));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: abilityWidgetList,
    );
  }

  Widget _abilityWidget(Ability ability) {
    return Card(
      child: Container(
        height: 50,
        width: 50,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.add),
              Text('2')
            ],
          ),
        ),
      ),
    );
  }
}
