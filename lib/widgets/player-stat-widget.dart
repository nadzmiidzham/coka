import 'package:coka/models/Player.dart';
import 'package:coka/models/Worker.dart';
import 'package:coka/widgets/stat/ability-widget.dart';
import 'package:coka/widgets/stat/description-widget.dart';
import 'package:coka/widgets/stat/hp-widget.dart';
import 'package:coka/widgets/stat/profile-image-widget.dart';
import 'package:coka/widgets/stat/profile-name-widget.dart';
import 'package:coka/widgets/stat/status-ailment-widget.dart';
import 'package:flutter/material.dart';

class PlayerStatWidget extends StatelessWidget {
  final Player player;
  final bool isSummary;

  PlayerStatWidget({ this.player, this.isSummary=false });
  
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
          child: ProfileNameWidget(statType: StatType.player, name: player.name, value: player.level,),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: StatusAilmentWidget(statusAilments: player.statusAilments,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          child: HPWidget(maxHp: player.maxHp, curHp: player.curHp,),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: AbilityWidget(abilities: player.abilities,),
        ),
        isSummary? SizedBox.shrink() : Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          child: DescriptionWidget(description: player.description,),
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
          child: AbilityWidget(abilities: player.workerAbilities,),
        ),

        // worker 1 item list
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: _workerItemWidget(player.workers[0]),
        ),

        // worker 2 item list
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: _workerItemWidget(player.workers[1]),
        ),
      ],
    );
  }

  Widget _workerItemWidget(Worker worker) {
    List<Icon> itemList = [];
    Widget itemWidget = SizedBox.shrink();

    if(worker.items != null) {
      for(int x=0 ; x<worker.items.length ; x++) {
        itemList.add(Icon(worker.items[x].icon));
      }
    }

    if(itemList.isNotEmpty) {
      itemWidget = Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(children: itemList,),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Icon(worker.icon),
        ),
        itemWidget
      ],
    );
  }
}
