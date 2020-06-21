import 'package:coka/models/Scenario.dart';
import 'package:flutter/material.dart';

class ScenarioCardWidget extends StatefulWidget {
  final Scenario scenario;
  final String storyImagePath;

  ScenarioCardWidget({
    this.scenario,
    this.storyImagePath
  });

  @override
  _ScenarioCardWidgetState createState() => _ScenarioCardWidgetState(storyImagePath: storyImagePath, scenario: this.scenario);
}

class _ScenarioCardWidgetState extends State<ScenarioCardWidget> {
  final Scenario scenario;
  final String storyImagePath;

  bool _showImage = false;
  bool _isFlipped = false;

  _ScenarioCardWidgetState({
    this.scenario,
    this.storyImagePath
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      color: Colors.black,
      child: Container(
        child: Column(
          children: <Widget>[
            _title(),
            this._showImage? _image() : SizedBox.shrink()
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment(0, 1),
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
                image: AssetImage(this.storyImagePath),
                fit: BoxFit.fitWidth
            )
        ),
        child: ListTile(
          title: Text(
            this.scenario.title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
          onTap: () {
            setState(() {
              this._showImage = !this._showImage;
            });
          },
        ),
      ),
    );
  }

  Widget _image() {
    return GestureDetector(
      child: Container(
        child: Image(
          fit: BoxFit.fill,
          image: AssetImage(this._isFlipped? this.scenario.setupImagePath : this.scenario.scenarioImagePath),
        ),
      ),
      onTap: () {
        setState(() {
          this._isFlipped = !this._isFlipped;
        });
      },
    );
  }
}
