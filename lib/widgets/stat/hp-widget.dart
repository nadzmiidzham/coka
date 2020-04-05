import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HPWidget extends StatelessWidget {
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
          Container(
            height: 20,
            width: 100, // TODO: must be dynamic
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
