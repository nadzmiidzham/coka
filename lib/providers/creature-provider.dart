import 'package:coka/models/Ability.dart';
import 'package:coka/models/Creature.dart';
import 'package:coka/models/StatusAilment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatureProvider extends ChangeNotifier {
  List<Creature> creaturelist;

  CreatureProvider() {
    initCreature();
  }

  // init method
  initCreature() {
    creaturelist = [
      Creature(
        image: 'images/test.jpg',
        name: 'Creature 1',
        description: 'Creature 1 description',
        xp: 1,
        maxHp: 10,
        curHp: 10,
        mainAbilities: [
          Ability(
            name: 'Defend',
            description: '',
            icon: Icons.account_circle,
            value: 1,
            type: 0
          ),
          Ability(
            name: 'Heal',
            description: '',
            icon: Icons.add,
            value: 2,
            type: 0
          ),
          Ability(
            name: 'Attack',
            description: '',
            icon: Icons.edit,
            value: 3,
            type: 0
          ),
          Ability(
            name: 'Attack All',
            description: '',
            icon: Icons.wifi,
            value: 4,
            type: 0
          ),
          Ability(
            name: 'Range',
            description: '',
            icon: Icons.account_circle,
            value: 5,
            type: 0
          ),
        ],
        specialAbilities: [
          Ability(
              name: 'Knockback',
              description: '',
              icon: Icons.pause,
              value: 1,
              type: 0
          ),
        ],
        statusAilments: []
      ),
      Creature(
          image: 'images/test.jpg',
          name: 'Creature 2',
          description: 'Creature 2 description',
          xp: 2,
          maxHp: 10,
          curHp: 8,
          mainAbilities: [
            Ability(
                name: 'Defend',
                description: '',
                icon: Icons.account_circle,
                value: 1,
                type: 0
            ),
            Ability(
                name: 'Heal',
                description: '',
                icon: Icons.add,
                value: 2,
                type: 0
            ),
            Ability(
                name: 'Attack',
                description: '',
                icon: Icons.edit,
                value: 3,
                type: 0
            ),
            Ability(
                name: 'Attack All',
                description: '',
                icon: Icons.wifi,
                value: 4,
                type: 0
            ),
            Ability(
                name: 'Range',
                description: '',
                icon: Icons.account_circle,
                value: 5,
                type: 0
            ),
          ],
          specialAbilities: [
            Ability(
                name: 'Knockback',
                description: '',
                icon: Icons.pause,
                value: 1,
                type: 0
            ),
            Ability(
                name: 'Tracking',
                description: '',
                icon: Icons.account_balance_wallet,
                value: 2,
                type: 0
            ),
          ],
          statusAilments: []
      ),
      Creature(
          image: 'images/test.jpg',
          name: 'Creature 3',
          description: 'Creature 3 description',
          xp: 3,
          maxHp: 10,
          curHp: 4,
          mainAbilities: [
            Ability(
                name: 'Defend',
                description: '',
                icon: Icons.account_circle,
                value: 1,
                type: 0
            ),
            Ability(
                name: 'Heal',
                description: '',
                icon: Icons.add,
                value: 2,
                type: 0
            ),
            Ability(
                name: 'Attack',
                description: '',
                icon: Icons.edit,
                value: 3,
                type: 0
            ),
            Ability(
                name: 'Attack All',
                description: '',
                icon: Icons.wifi,
                value: 4,
                type: 0
            ),
            Ability(
                name: 'Range',
                description: '',
                icon: Icons.account_circle,
                value: 5,
                type: 0
            ),
          ],
          specialAbilities: [],
          statusAilments: [
            StatusAilment(
              name: 'Poison',
              icon: Icons.cloud,
              value: 2,
              description: 'poisoned'
            )
          ]
      ),
    ];
  }
}
