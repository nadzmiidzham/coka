import 'package:coka/core/models/StatusAilment.dart';
import 'package:flutter/material.dart';

class StatusAilmentWidget extends StatelessWidget {
  final List<StatusAilment> statusAilments;

  StatusAilmentWidget({ this.statusAilments });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: _statusAilmentWidgetList(),
      ),
    );
  }

  List<Widget> _statusAilmentWidgetList() {
    List<Icon> statusAilmentIconList = [];

    if(statusAilments != null) {
      for(int x=0 ; x<statusAilments.length ; x++) {
        statusAilmentIconList.add(Icon(statusAilments[x].icon));
      }
    }

    return statusAilmentIconList;
  }
}
