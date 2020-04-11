import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
}
