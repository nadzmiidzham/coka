import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final String path;

  ProfileImageWidget({ this.path });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment(0, 1),
          image: AssetImage(path),
          fit: BoxFit.fitWidth
        )
      ),
    );
  }
}
