import 'package:coka/providers/player-provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HPWidget extends StatelessWidget {
  final int maxHp, curHp;

  HPWidget({ this.maxHp=1, this.curHp=1 });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: <Widget>[
          Container(
            height: 20,
            width: double.infinity,
            color: Colors.red,
          ),
          _renderHp(context),
          Center(child: _hpValueWidget(context),)
        ],
      ),
    );
  }

  Widget _renderHp(BuildContext context) {
    return Selector<PlayerProvider, double>(
      selector: (context, provider) => provider.getHpPercent(),
      builder: (context, hpPercent, child) {
        return Container(
          height: 20,
          width: MediaQuery.of(context).size.width * hpPercent,
          color: Colors.green,
        );
      },
    );
  }

  Widget _hpValueWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Selector<PlayerProvider, int>(
          selector: (context, provider) => provider.player.curHp,
          builder: (context, curHp, child) {
            return Text(
              curHp.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            );
          },
        ),
        Text(
          ' / ',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        Selector<PlayerProvider, int>(
          selector: (context, provider) => provider.player.maxHp,
          builder: (context, maxHp, child) {
            return Text(
              maxHp.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            );
          },
        ),
      ],
    );
  }
}
