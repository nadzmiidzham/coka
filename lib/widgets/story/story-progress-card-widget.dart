import 'package:coka/models/Game.dart';
import 'package:coka/models/GameTime.dart';
import 'package:coka/widgets/stat/meter-bar-widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoryProgressCardWidget extends StatelessWidget {
  final Game game;
  final List<GameTime> timeList;

  int _touchedTimeTrackerIndex = -1;
  GameTime _selectedTime;

  StoryProgressCardWidget({
    this.game,
    this.timeList
  });

  @override
  Widget build(BuildContext context) {
    this._selectedTime = game.time;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'HOPE: ',
                        textAlign: TextAlign.end,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'MORALE: ',
                        textAlign: TextAlign.end,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: <Widget>[
                          MeterBarWidget(
                            maxValue: 10,
                            curValue: game.hope,
                            textColor: Colors.white,
                            foregroundColor: Colors.green,
                            backgroundColor: Colors.red,
                          ),
                          MeterBarWidget(
                            maxValue: 3,
                            curValue: game.morale,
                            textColor: Colors.white,
                            foregroundColor: Colors.green,
                            backgroundColor: Colors.red,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.access_time),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return _showTimeTracker();
                          }
                      );
                    },
                  ),
                  Text(
                    game.time.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }

  Widget _showTimeTracker() {
    List<PieChartSectionData> gameTimeList = [];

    for(int x=0 ; x<timeList.length ; x++) {
      bool isTouched = (x == this._touchedTimeTrackerIndex);
      String title = timeList[x].description.replaceAll(' ', '\n');
      double radius = (timeList[x].time == game.time.time)? 100 : 80;
      Color color = Colors.red;

      switch(timeList[x].time) {
        case GameTimeState.EARLY_MORNING:
          color = Colors.blue;
          break;
        case GameTimeState.MIDNIGHT:
          color = Colors.green;
          break;
        case GameTimeState.LATE_MORNING:
          color = Colors.red;
          break;
        case GameTimeState.MIDDAY:
          color = Colors.green;
          break;
        case GameTimeState.AFTERNOON:
          color = Colors.blue;
          break;
        case GameTimeState.EVENING:
          color = Colors.red;
          break;
      }

      gameTimeList.add(PieChartSectionData(
          title: title,
          radius: radius,
          color: color
      ));
    }

    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          content: Column(
            children: <Widget>[
              PieChart(
                  PieChartData(
                      sections: gameTimeList,
                      borderData: FlBorderData(show: false),
                      centerSpaceRadius: 0,
                      pieTouchData: PieTouchData(touchCallback: (touchResponse) {
                        setState(() {
                          this._touchedTimeTrackerIndex = (touchResponse.touchedSectionIndex == null)? this._touchedTimeTrackerIndex : touchResponse.touchedSectionIndex;
                          this._selectedTime = timeList[this._touchedTimeTrackerIndex];
                        });
                      })
                  )
              ),
              Container(
                width: double.infinity,
                child: Text(this._selectedTime.name),
              )
            ],
          ),
        );
      },
    );
  }
}
