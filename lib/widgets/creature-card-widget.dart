import 'package:coka/models/Ability.dart';
import 'package:coka/models/Creature.dart';
import 'package:coka/widgets/stat/ability-widget.dart';
import 'package:coka/widgets/stat/description-widget.dart';
import 'package:coka/widgets/stat/hp-widget.dart';
import 'package:coka/widgets/stat/profile-image-widget.dart';
import 'package:coka/widgets/stat/profile-name-widget.dart';
import 'package:coka/widgets/stat/status-ailment-widget.dart';
import 'package:flutter/material.dart';

class CreatureCardWidget extends StatelessWidget {
  final bool isSummary;
  final Creature creature;

  CreatureCardWidget({ this.isSummary=false, this.creature });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          child: Column(
            children: <Widget>[
              ProfileImageWidget(path: creature.image,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ProfileNameWidget(statType: StatType.creature, name: creature.name, value: creature.xp,),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: StatusAilmentWidget(statusAilments: creature.statusImpairmentList,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                child: HPWidget(maxHp: creature.maxHp, curHp: creature.curHp,),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: AbilityWidget(abilities: creature.mainAbilityList,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: _creatureSpecialAbilityWidgetList(creature.specialAbilityList),
              ),
              (isSummary)? SizedBox.shrink() : Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                child: DescriptionWidget(description: creature.description,),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _creatureSpecialAbilityWidgetList(List<Ability> specialAbilityList) {
    List<Widget> specialAbilityWidgetList = [];

    for(var x=0 ; x<specialAbilityList.length ; x++) {
      specialAbilityWidgetList.add(_creatureSpecialAbilityWidget(specialAbilityList[x]));
    }

    return Wrap(
      direction: Axis.horizontal,
      children: specialAbilityWidgetList,
    );
  }

  Widget _creatureSpecialAbilityWidget(Ability specialAbility) {
    return Card(
      color: Colors.green,
      child: Container(
        padding: const EdgeInsets.only(top: 3, bottom: 3, right: 5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(specialAbility.icon),
            Text(specialAbility.name)
          ],
        ),
      ),
    );
  }
}
