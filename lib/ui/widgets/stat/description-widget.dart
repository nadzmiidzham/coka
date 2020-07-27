import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  final String description;

  DescriptionWidget({ this.description='' });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        color: Colors.black12,
        child: Text(description),
      ),
    );
  }
}
