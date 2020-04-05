import 'package:flutter/material.dart';

class StatusAilmentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: temp dummy data
    List<IconData> statusAilmentList = [
      Icons.trip_origin,
      Icons.trip_origin,
      Icons.trip_origin,
    ];

    return Container(
      child: Row(
        children: _statusAilmentList(statusAilmentList),
      ),
    );
  }

  // TODO: should use StatusAilment object
  List<Widget> _statusAilmentList(List<IconData> statusAilmentList) {
    List<Icon> statusAilmentIconList = [];

    for(int x=0 ; x<statusAilmentList.length ; x++) {
      statusAilmentIconList.add(Icon(statusAilmentList[x]));
    }

    return statusAilmentIconList;
  }
}
