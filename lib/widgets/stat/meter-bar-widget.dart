import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MeterBarWidget extends StatelessWidget {
  final int maxValue, curValue;
  final Color backgroundColor, foregroundColor, textColor;

  MeterBarWidget({
    this.maxValue,
    this.curValue,
    this.backgroundColor,
    this.foregroundColor,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: <Widget>[
          Container(
            height: 20,
            width: double.infinity,
            color: backgroundColor,
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
      width: MediaQuery.of(context).size.width * (curValue / maxValue),
      color: foregroundColor,
    );
  }

  Widget _hpValueWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          curValue.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          ' / ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          maxValue.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}
