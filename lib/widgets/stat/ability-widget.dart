import 'package:coka/models/Ability.dart';
import 'package:flutter/material.dart';

class AbilityWidget extends StatelessWidget {
  final List<Ability> abilities;

  AbilityWidget({this.abilities});

  @override
  Widget build(BuildContext context) {
    List<Widget> abilityWidgetList = [];

    if(abilities != null) {
      for(int x=0 ; x<abilities.length ; x++) {
        abilityWidgetList.add(_abilityWidget(abilities[x]));
      }
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
              Icon(ability.icon),
              Text(ability.value.toString())
            ],
          ),
        ),
      ),
    );
  }
}
