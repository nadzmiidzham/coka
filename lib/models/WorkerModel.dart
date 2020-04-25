import 'package:coka/models/ItemModel.dart';
import 'package:flutter/cupertino.dart';

class WorkerModel {
  int no;
  List<ItemModel> items;
  IconData icon;

  WorkerModel({
    this.no,
    this.items,
    this.icon,
  });
}
