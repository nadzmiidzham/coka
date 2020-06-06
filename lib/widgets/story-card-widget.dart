import 'package:coka/models/Story.dart';
import 'package:flutter/material.dart';

enum StoryCardState {
  SUMMARY,
  DESCRIPTION
}

class StoryCardWidget extends StatelessWidget {
  final Story story;
  final StoryCardState state;

  StoryCardWidget({
    this.story,
    this.state
  });

  @override
  Widget build(BuildContext context) {
    switch(state) {
      case StoryCardState.SUMMARY:
        return _showSummary(context);
        break;
      case StoryCardState.DESCRIPTION:
        return _showDescription(context);
        break;
    }

    return _showSummary(context);
  }

  Widget _showSummary(BuildContext context) {
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
              image: AssetImage(story.imagepath),
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
            onTap: () {
              Scaffold.of(context).showSnackBar(SnackBar(
                duration: Duration(seconds: 1),
                content: Text(story.title),
              ));
            },
          ),
        ),
      ),
    );
  }

  Widget _showDescription(BuildContext context) {}
}
