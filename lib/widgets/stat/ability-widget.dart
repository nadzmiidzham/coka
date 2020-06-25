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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Image(
                  width: 50,
                  height: 50,
                  fit: BoxFit.contain,
                  image: AssetImage(ability.iconPath)
                ),
              ),
              Text(ability.value.toString())
            ],
          ),
        ),
      ),
    );
  }
}
