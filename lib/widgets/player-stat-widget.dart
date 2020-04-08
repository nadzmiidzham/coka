
import 'package:coka/models/Ability.dart';
import 'package:coka/models/Item.dart';
import 'package:coka/widgets/stat/ability-widget.dart';
import 'package:coka/widgets/stat/description-widget.dart';
import 'package:coka/widgets/stat/hp-widget.dart';
import 'package:coka/widgets/stat/profile-image-widget.dart';
import 'package:coka/widgets/stat/profile-name-widget.dart';
import 'package:coka/widgets/stat/status-ailment-widget.dart';
import 'package:flutter/material.dart';

class PlayerStatWidget extends StatelessWidget {
  final bool isSummary;

  PlayerStatWidget({ this.isSummary=false });

  // TODO: dummy data (remove before v1)
  List<Ability> _playerAbilityList = [
    Ability(),
    Ability(),
    Ability(),
    Ability(),
    Ability(),
  ];
  List<Ability> _workerAbilityList = [
    Ability(),
    Ability(),
    Ability(),
  ];
  List<Item> _workerItemList = [
    Item(),
    Item(),
    Item(),
    Item(),
    Item(),
    Item(),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Column(
          children: <Widget>[
            _playerStatWidget(), // player stat widgets
            isSummary? SizedBox.shrink() : _workerStatWidget(), // worker stat widgets
          ],
        ),
      ),
    );
  }

  Widget _playerStatWidget() {
    return Column(
      children: <Widget>[
        ProfileImageWidget(),
        Padding(
          padding: const EdgeInsets.all(5),
          child: ProfileNameWidget(statType: StatType.player,),
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
          child: AbilityWidget(abilityList: _playerAbilityList,),
        ),
        isSummary? SizedBox.shrink() : Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          child: DescriptionWidget(),
        ),
      ],
    );
  }

  Widget _workerStatWidget() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          child: Divider(color: Colors.black, thickness: 2,),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: AbilityWidget(abilityList: _workerAbilityList,),
        ),

        // worker 1 item list
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: _workerItemWidget(_workerItemList),
        ),

        // worker 2 item list
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: _workerItemWidget(_workerItemList),
        ),
      ],
    );
  }

  Widget _workerItemWidget(List<Item> itemList) {
    List<Icon> _iconList = [];

    for(int x=0 ; x<itemList.length ; x++) {
      _iconList.add(Icon(Icons.brightness_1));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Icon(Icons.add),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(children: _iconList,),
        )
      ],
    );
  }
}
