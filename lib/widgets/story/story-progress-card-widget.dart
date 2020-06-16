import 'package:coka/models/GameTime.dart';
import 'package:coka/providers/game-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StoryProgressCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('HOPE: '),
                  Text('MORALE: ')
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Selector<GameProvider, GameTime>(
                  selector: (context, provider) => provider.game.time,
                  builder: (context, gameTime, child) {
                    return IconButton(
                      icon: Icon(Icons.access_time),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return _showTimeTracker(gameTime);
                            }
                        );
                      },
                    );
                  },
                ),
                Text('MIDNIGHT')
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _showTimeTracker(GameTime time) {
    return AlertDialog(
      content: Column(
        children: <Widget>[
          Container(),
          Container(
            width: double.infinity,
            child: Text(time.description),
          )
        ],
      ),
    );
  }
}
