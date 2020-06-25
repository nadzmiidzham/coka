import 'package:coka/models/Player.dart';
import 'package:coka/models/Worker.dart';
import 'package:coka/widgets/stat/ability-widget.dart';
import 'package:coka/widgets/stat/description-widget.dart';
import 'package:coka/widgets/stat/meter-bar-widget.dart';
import 'package:coka/widgets/stat/profile-image-widget.dart';
import 'package:coka/widgets/stat/profile-name-widget.dart';
import 'package:coka/widgets/stat/status-ailment-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlayerCardWidget extends StatefulWidget {
  final Player player;
  final bool isSummary;

  PlayerCardWidget({
    this.player,
    this.isSummary=false
  });

  @override
  _PlayerCardWidgetState createState() => _PlayerCardWidgetState(player: this.player, isSummary: this.isSummary);
}

class _PlayerCardWidgetState extends State<PlayerCardWidget> {
  Player player;
  bool isSummary;

  _PlayerCardWidgetState({
    this.player,
    this.isSummary=false
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Column(
          children: <Widget>[
            InkWell(
              child: ProfileImageWidget(path: player.imagePath),
              onTap: () {
                setState(() {
                  this.isSummary = !this.isSummary;
                });
              },
            ),
            isSummary? SizedBox.shrink() : _playerStatWidget(), // player stat widgets
            isSummary? SizedBox.shrink() : _workerStatWidget(), // worker stat widgets
          ],
        ),
      ),
    );
  }

  Widget _playerStatWidget() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5),
          child: ProfileNameWidget(statType: StatType.player, name: player.name, value: player.level,),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: StatusAilmentWidget(statusAilments: player.statusImpairmentList,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
          child: MeterBarWidget(
            maxValue: player.maxHp,
            curValue: player.curHp,
            backgroundColor: Colors.red,
            foregroundColor: Colors.green,
            textColor: Colors.white
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: AbilityWidget(abilities: player.abilityList),
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
          child: Divider(color: Colors.black, thickness: 2),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: AbilityWidget(abilities: player.workerAbilityList),
        ),

        // worker 1 item list
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: _workerItemWidget(player.workerList[0]),
        ),

        // worker 2 item list
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
          child: _workerItemWidget(player.workerList[1]),
        ),
      ],
    );
  }

  Widget _workerItemWidget(Worker worker) {
    List<Image> itemList = [];
    Widget itemWidget = SizedBox.shrink();

    if(worker.itemList != null) {
      for(int x=0 ; x<worker.itemList.length ; x++) {
        itemList.add(Image(
          image: AssetImage(worker.itemList[x].iconPath),
        ));
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
          child: Image(image: AssetImage(worker.iconPath)),
        ),
        itemWidget
      ],
    );
  }
}
