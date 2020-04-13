import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Image.network(
        'https://picsum.photos/250?image=9',
        fit: BoxFit.fitWidth,
        width: double.infinity,
      ),
    );
  }
}
