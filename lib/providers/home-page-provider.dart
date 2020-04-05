import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier {
  bool _isCreatureTab = false;

  bool get isCreatureTab => _isCreatureTab;

  toggleTab() {
    _isCreatureTab = !_isCreatureTab;
    notifyListeners();
  }
}
