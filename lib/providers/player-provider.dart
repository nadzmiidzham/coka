import 'package:coka/models/Ability.dart';
import 'package:coka/models/Item.dart';
import 'package:coka/models/Player.dart';
import 'package:coka/models/StatusAilment.dart';
import 'package:coka/models/Worker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerProvider extends ChangeNotifier {
  Player player;

  PlayerProvider() {
    initPlayer();
  }

  // other methods
  initPlayer() {
    this.player = Player(
      name: 'Nadzmi',
      level: 2,
      description: 'This is Nadzmi',
      maxHp: 10,
      curHp: 8,
      image: null,
      statusAilments: [
        StatusAilment(
          name: '',
          description: '',
          value: 0,
          icon: Icons.edit
        )
      ],
      abilities: [
        Ability(
          name: '',
          description: '',
          type: 1,
          value: 1,
          icon: Icons.description
        ),
        Ability(
            name: '',
            description: '',
            type: 1,
            value: 2,
            icon: Icons.brightness_1
        ),
        Ability(
            name: '',
            description: '',
            type: 1,
            value: 3,
            icon: Icons.trip_origin
        ),
        Ability(
            name: '',
            description: '',
            type: 1,
            value: 4,
            icon: Icons.ac_unit
        ),
        Ability(
            name: '',
            description: '',
            type: 1,
            value: 5,
            icon: Icons.access_alarm
        )
      ],
      workerAbilities: [
        Ability(
            name: '',
            description: '',
            type: 1,
            value: 1,
            icon: Icons.account_balance_wallet
        ),
        Ability(
            name: '',
            description: '',
            type: 1,
            value: 2,
            icon: Icons.library_add
        ),
        Ability(
            name: '',
            description: '',
            type: 1,
            value: 3,
            icon: Icons.blur_circular
        )
      ],
      workers: [
        Worker(
          no: 1,
          icon: Icons.adb,
          items: [
            Item(name: '', type: 1, icon: Icons.face),
            Item(name: '', type: 1, icon: Icons.face),
            Item(name: '', type: 1, icon: Icons.face),
            Item(name: '', type: 1, icon: Icons.face),
            Item(name: '', type: 1, icon: Icons.face),
            Item(name: '', type: 1, icon: Icons.face),
          ]
        ),
        Worker(no: 2, icon: Icons.alarm_on)
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
