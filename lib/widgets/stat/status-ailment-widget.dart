import 'package:coka/models/StatusAilmentModel.dart';
import 'package:flutter/material.dart';

class StatusAilmentWidget extends StatelessWidget {
  final List<StatusAilmentModel> statusAilments;

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
