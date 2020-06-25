import 'package:coka/models/Story.dart';
import 'package:flutter/material.dart';

class StoryCardWidget extends StatelessWidget {
  final Story story;
  final Function callback;

  StoryCardWidget({
    this.story,
    this.callback
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment(0, 1),
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
              image: AssetImage(story.imagePath),
              fit: BoxFit.fitWidth
            )
          ),
          child: ListTile(
            title: Text(
              story.title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            onTap: callback,
          ),
        ),
      ),
    );
  }
}
