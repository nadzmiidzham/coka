import 'package:coka/models/Ability.dart';
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
      curHp: 10,
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
            icon: null
        ),
        Ability(
            name: '',
            description: '',
            type: 1,
            value: 1,
            icon: null
        ),
        Ability(
            name: '',
            description: '',
            type: 1,
            value: 1,
            icon: null
        )
      ],
      workers: [
        Worker(no: 1),
        Worker(no: 2)
      ],
    );

    notifyListeners();
  }
}
