import 'package:coka/models/Item.dart';
import 'package:flutter/cupertino.dart';

class Worker {
  int no;
  List<Item> items;
  IconData icon;

  Worker({
    this.no,
    this.items,
    this.icon,
  });
}
