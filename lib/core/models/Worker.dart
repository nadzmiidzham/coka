import 'package:coka/core/models/Item.dart';
import 'package:flutter/material.dart';

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
