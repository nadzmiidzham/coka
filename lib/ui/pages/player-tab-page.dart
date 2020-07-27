import 'package:coka/ui/providers/player-provider.dart';
import 'package:coka/ui/widgets/player-stat-widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayerTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: <Widget>[
            Consumer<PlayerProvider>(
              builder: (context, provider, child) {
                return PlayerStatWidget(player: provider.player, isSummary: false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
