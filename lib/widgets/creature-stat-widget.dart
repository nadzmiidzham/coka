import 'package:coka/models/Ability.dart';
import 'package:coka/models/Creature.dart';
import 'package:coka/widgets/stat/ability-widget.dart';
import 'package:coka/widgets/stat/description-widget.dart';
import 'package:coka/widgets/stat/hp-widget.dart';
import 'package:coka/widgets/stat/profile-image-widget.dart';
import 'package:coka/widgets/stat/profile-name-widget.dart';
import 'package:coka/widgets/stat/status-ailment-widget.dart';
import 'package:flutter/material.dart';

class CreatureStatWidget extends StatelessWidget {
  final bool isSummary;
  final Creature creature;

  CreatureStatWidget({ this.isSummary=false, this.creature });

  // TODO: dummy data (remove before v1)
  final List<Ability> _creatureAbilityList = [
    Ability(),
    Ability(),
    Ability(),
    Ability(),
    Ability(),
  ];
  final List<Ability> _creatureSpecialAbilityList = [
    Ability(),
    Ability(),
    Ability(),
    Ability(),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          child: Column(
            children: <Widget>[
              ProfileImageWidget(image: creature.image,),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ProfileNameWidget(statType: StatType.creature,),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: StatusAilmentWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                child: HPWidget(),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: AbilityWidget(abilities: _creatureAbilityList,),
              ),
              (isSummary)? SizedBox.shrink() : Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                child: DescriptionWidget(description: 'Description',),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: _creatureSpecialAbilityWidgetList(_creatureSpecialAbilityList),
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
            Icon(Icons.add),
            Text('Knockback')
          ],
        ),
      ),
    );
  }
}
