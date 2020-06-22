import 'package:flutter/material.dart';

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
            height: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: (curValue / maxValue),
                valueColor: AlwaysStoppedAnimation<Color>(foregroundColor),
                backgroundColor: backgroundColor,
              ),
            ),
          ),
          Center(child: _hpValueWidget(),)
        ],
      ),
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
        ),
      ],
    );
  }
}
