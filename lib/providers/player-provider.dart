import 'package:coka/models/AbilityModel.dart';
import 'package:coka/models/ItemModel.dart';
import 'package:coka/models/PlayerModel.dart';
import 'package:coka/models/StatusAilmentModel.dart';
import 'package:coka/models/WorkerModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerProvider extends ChangeNotifier {
  PlayerModel player;

  PlayerProvider() {
    initPlayer();
  }

  // other methods
  initPlayer() {
    this.player = PlayerModel(
      name: 'Nadzmi',
      level: 2,
      description: 'This is Nadzmi',
      maxHp: 10,
      curHp: 8,
      image: 'images/test.jpg',
      statusAilments: [
        StatusAilmentModel(
          name: '',
          description: '',
          value: 0,
          icon: Icons.edit
        )
      ],
      abilities: [
        AbilityModel(
          name: '',
          description: '',
          type: 1,
          value: 1,
          icon: Icons.description
        ),
        AbilityModel(
            name: '',
            description: '',
            type: 1,
            value: 2,
            icon: Icons.brightness_1
        ),
        AbilityModel(
            name: '',
            description: '',
            type: 1,
            value: 3,
            icon: Icons.trip_origin
        ),
        AbilityModel(
            name: '',
            description: '',
            type: 1,
            value: 4,
            icon: Icons.ac_unit
        ),
        AbilityModel(
            name: '',
            description: '',
            type: 1,
            value: 5,
            icon: Icons.access_alarm
        )
      ],
      workerAbilities: [
        AbilityModel(
            name: '',
            description: '',
            type: 1,
            value: 1,
            icon: Icons.account_balance_wallet
        ),
        AbilityModel(
            name: '',
            description: '',
            type: 1,
            value: 2,
            icon: Icons.library_add
        ),
        AbilityModel(
            name: '',
            description: '',
            type: 1,
            value: 3,
            icon: Icons.blur_circular
        )
      ],
      workers: [
        WorkerModel(
          no: 1,
          icon: Icons.adb,
          items: [
            ItemModel(name: '', type: 1, icon: Icons.face),
            ItemModel(name: '', type: 1, icon: Icons.face),
            ItemModel(name: '', type: 1, icon: Icons.face),
            ItemModel(name: '', type: 1, icon: Icons.face),
            ItemModel(name: '', type: 1, icon: Icons.face),
            ItemModel(name: '', type: 1, icon: Icons.face),
          ]
        ),
        WorkerModel(no: 2, icon: Icons.alarm_on)
      ],
    );

    notifyListeners();
  }

  // notify listener action
  increaseHP(int amount) {
    int newHp = player.curHp + amount;

    if(newHp >= player.maxHp) {
      player.curHp = player.maxHp;
    } else {
      player.curHp = newHp;
    }

    notifyListeners();
  }

  decreaseHP(int amount) {
    int newHp = player.curHp - amount;

    if(newHp <= 0) {
      player.curHp = 0;
    } else {
      player.curHp = newHp;
    }

    notifyListeners();
  }
}
