import 'package:coka/models/Player.dart';
import 'package:coka/providers/game-provider.dart';
import 'package:coka/widgets/player-card-widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayerTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Center(
        child: Consumer<GameProvider>(
          builder: (context, provider, child) {
            return ListView(
              children: _playerCardWidgetList(provider.game.maxPlayer, provider.game.playerList),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _playerCardWidgetList(int maxPlayer, List<Player> playerList) {
    List<Widget> tempWidgetList = [];

    for(int x=0 ; x<playerList.length ; x++) {
      tempWidgetList.add(PlayerCardWidget(player: playerList[x], isSummary: true));
    }

    if(playerList.length < maxPlayer) {
      tempWidgetList.add(Consumer<GameProvider>(
        builder: (context, provider, child) {
          return RaisedButton(
            child: Text('Add Player'),
            onPressed: () {
              showBottomSheet(
                context: context,
                builder: (context) => Container(
                  color: Colors.red,
                  width: double.infinity,
                  height: 200,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        child: Text('Select Player'),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/setup-player');
                        },
                      ),
                      RaisedButton(
                        child: Text('Randomize Player'),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/setup-player', arguments: { 'isRandomize': true });
                        },
                      ),
                    ],
                  ),
                )
              );
            },
          );
        },
      ));
    }

    return tempWidgetList;
  }
}
