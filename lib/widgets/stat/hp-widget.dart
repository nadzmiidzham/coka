import 'package:coka/providers/player-provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HPWidget extends StatelessWidget {
  final int maxHp, curHp;

  HPWidget({ this.maxHp, this.curHp });

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
          Center(child: _hpValueWidget(),)
        ],
      ),
    );
  }

  Widget _renderHp(BuildContext context) {
    return Container(
      height: 20,
      width: MediaQuery.of(context).size.width * (curHp / maxHp),
      color: Colors.green,
    );
  }

  Widget _hpValueWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          curHp.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' / ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          maxHp.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}
