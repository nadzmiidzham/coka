import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final Image image;

  ProfileImageWidget({ this.image });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: image,
    );
  }
}
