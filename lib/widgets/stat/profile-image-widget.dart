import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: prevent the image from being distorted
    return Container(
      height: 150,
      child: Image.network(
        'https://picsum.photos/250?image=9',
        fit: BoxFit.fill,
        width: double.infinity,
      ),
    );
  }
}
