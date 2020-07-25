// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Ability extends DataClass implements Insertable<Ability> {
  final int id;
  final String imagePath;
  final String name;
  final String description;
  final String config;
  final String difficultyCode;
  final int value;
  final DateTime createdAt;
  final DateTime updatedAt;
  Ability(
      {@required this.id,
      @required this.imagePath,
      @required this.name,
      this.description,
      @required this.config,
      @required this.difficultyCode,
      @required this.value,
      @required this.createdAt,
      this.updatedAt});
  factory Ability.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Ability(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      imagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      config:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}config']),
      difficultyCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}difficulty_code']),
      value: intType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || config != null) {
      map['config'] = Variable<String>(config);
    }
    if (!nullToAbsent || difficultyCode != null) {
      map['difficulty_code'] = Variable<String>(difficultyCode);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<int>(value);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  AbilitiesCompanion toCompanion(bool nullToAbsent) {
    return AbilitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      config:
          config == null && nullToAbsent ? const Value.absent() : Value(config),
      difficultyCode: difficultyCode == null && nullToAbsent
          ? const Value.absent()
          : Value(difficultyCode),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Ability.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Ability(
      id: serializer.fromJson<int>(json['id']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      config: serializer.fromJson<String>(json['config']),
      difficultyCode: serializer.fromJson<String>(json['difficultyCode']),
      value: serializer.fromJson<int>(json['value']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'imagePath': serializer.toJson<String>(imagePath),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'config': serializer.toJson<String>(config),
      'difficultyCode': serializer.toJson<String>(difficultyCode),
      'value': serializer.toJson<int>(value),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Ability copyWith(
          {int id,
          String imagePath,
          String name,
          String description,
          String config,
          String difficultyCode,
          int value,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Ability(
        id: id ?? this.id,
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        description: description ?? this.description,
        config: config ?? this.config,
        difficultyCode: difficultyCode ?? this.difficultyCode,
        value: value ?? this.value,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Ability(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('config: $config, ')
          ..write('difficultyCode: $difficultyCode, ')
          ..write('value: $value, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          imagePath.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  description.hashCode,
                  $mrjc(
                      config.hashCode,
                      $mrjc(
                          difficultyCode.hashCode,
                          $mrjc(
                              value.hashCode,
                              $mrjc(createdAt.hashCode,
                                  updatedAt.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Ability &&
          other.id == this.id &&
          other.imagePath == this.imagePath &&
          other.name == this.name &&
          other.description == this.description &&
          other.config == this.config &&
          other.difficultyCode == this.difficultyCode &&
          other.value == this.value &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class AbilitiesCompanion extends UpdateCompanion<Ability> {
  final Value<int> id;
  final Value<String> imagePath;
  final Value<String> name;
  final Value<String> description;
  final Value<String> config;
  final Value<String> difficultyCode;
  final Value<int> value;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const AbilitiesCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.config = const Value.absent(),
    this.difficultyCode = const Value.absent(),
    this.value = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  AbilitiesCompanion.insert({
    this.id = const Value.absent(),
    @required String imagePath,
    @required String name,
    this.description = const Value.absent(),
    @required String config,
    @required String difficultyCode,
    @required int value,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : imagePath = Value(imagePath),
        name = Value(name),
        config = Value(config),
        difficultyCode = Value(difficultyCode),
        value = Value(value),
        createdAt = Value(createdAt);
  static Insertable<Ability> custom({
    Expression<int> id,
    Expression<String> imagePath,
    Expression<String> name,
    Expression<String> description,
    Expression<String> config,
    Expression<String> difficultyCode,
    Expression<int> value,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imagePath != null) 'image_path': imagePath,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (config != null) 'config': config,
      if (difficultyCode != null) 'difficulty_code': difficultyCode,
      if (value != null) 'value': value,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  AbilitiesCompanion copyWith(
      {Value<int> id,
      Value<String> imagePath,
      Value<String> name,
      Value<String> description,
      Value<String> config,
      Value<String> difficultyCode,
      Value<int> value,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return AbilitiesCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      description: description ?? this.description,
      config: config ?? this.config,
      difficultyCode: difficultyCode ?? this.difficultyCode,
      value: value ?? this.value,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (config.present) {
      map['config'] = Variable<String>(config.value);
    }
    if (difficultyCode.present) {
      map['difficulty_code'] = Variable<String>(difficultyCode.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AbilitiesCompanion(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('config: $config, ')
          ..write('difficultyCode: $difficultyCode, ')
          ..write('value: $value, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $AbilitiesTable extends Abilities
    with TableInfo<$AbilitiesTable, Ability> {
  final GeneratedDatabase _db;
  final String _alias;
  $AbilitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  GeneratedTextColumn _imagePath;
  @override
  GeneratedTextColumn get imagePath => _imagePath ??= _constructImagePath();
  GeneratedTextColumn _constructImagePath() {
    return GeneratedTextColumn(
      'image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _configMeta = const VerificationMeta('config');
  GeneratedTextColumn _config;
  @override
  GeneratedTextColumn get config => _config ??= _constructConfig();
  GeneratedTextColumn _constructConfig() {
    return GeneratedTextColumn(
      'config',
      $tableName,
      false,
    );
  }

  final VerificationMeta _difficultyCodeMeta =
      const VerificationMeta('difficultyCode');
  GeneratedTextColumn _difficultyCode;
  @override
  GeneratedTextColumn get difficultyCode =>
      _difficultyCode ??= _constructDifficultyCode();
  GeneratedTextColumn _constructDifficultyCode() {
    return GeneratedTextColumn(
      'difficulty_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedIntColumn _value;
  @override
  GeneratedIntColumn get value => _value ??= _constructValue();
  GeneratedIntColumn _constructValue() {
    return GeneratedIntColumn(
      'value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        imagePath,
        name,
        description,
        config,
        difficultyCode,
        value,
        createdAt,
        updatedAt
      ];
  @override
  $AbilitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'abilities';
  @override
  final String actualTableName = 'abilities';
  @override
  VerificationContext validateIntegrity(Insertable<Ability> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path'], _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('config')) {
      context.handle(_configMeta,
          config.isAcceptableOrUnknown(data['config'], _configMeta));
    } else if (isInserting) {
      context.missing(_configMeta);
    }
    if (data.containsKey('difficulty_code')) {
      context.handle(
          _difficultyCodeMeta,
          difficultyCode.isAcceptableOrUnknown(
              data['difficulty_code'], _difficultyCodeMeta));
    } else if (isInserting) {
      context.missing(_difficultyCodeMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Ability map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Ability.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AbilitiesTable createAlias(String alias) {
    return $AbilitiesTable(_db, alias);
  }
}

class Creature extends DataClass implements Insertable<Creature> {
  final int id;
  final int creatureTemplateId;
  final int gameSessionId;
  final int playerId;
  final int statBarId;
  final String imagePath;
  final String name;
  final String description;
  final int xp;
  final int curHp;
  final int maxHp;
  final DateTime createdAt;
  final DateTime updatedAt;
  Creature(
      {@required this.id,
      @required this.creatureTemplateId,
      @required this.gameSessionId,
      @required this.playerId,
      @required this.statBarId,
      @required this.imagePath,
      @required this.name,
      this.description,
      @required this.xp,
      @required this.curHp,
      @required this.maxHp,
      @required this.createdAt,
      this.updatedAt});
  factory Creature.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Creature(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      creatureTemplateId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}creature_template_id']),
      gameSessionId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}game_session_id']),
      playerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}player_id']),
      statBarId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}stat_bar_id']),
      imagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      xp: intType.mapFromDatabaseResponse(data['${effectivePrefix}xp']),
      curHp: intType.mapFromDatabaseResponse(data['${effectivePrefix}cur_hp']),
      maxHp: intType.mapFromDatabaseResponse(data['${effectivePrefix}max_hp']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || creatureTemplateId != null) {
      map['creature_template_id'] = Variable<int>(creatureTemplateId);
    }
    if (!nullToAbsent || gameSessionId != null) {
      map['game_session_id'] = Variable<int>(gameSessionId);
    }
    if (!nullToAbsent || playerId != null) {
      map['player_id'] = Variable<int>(playerId);
    }
    if (!nullToAbsent || statBarId != null) {
      map['stat_bar_id'] = Variable<int>(statBarId);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || xp != null) {
      map['xp'] = Variable<int>(xp);
    }
    if (!nullToAbsent || curHp != null) {
      map['cur_hp'] = Variable<int>(curHp);
    }
    if (!nullToAbsent || maxHp != null) {
      map['max_hp'] = Variable<int>(maxHp);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  CreaturesCompanion toCompanion(bool nullToAbsent) {
    return CreaturesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      creatureTemplateId: creatureTemplateId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatureTemplateId),
      gameSessionId: gameSessionId == null && nullToAbsent
          ? const Value.absent()
          : Value(gameSessionId),
      playerId: playerId == null && nullToAbsent
          ? const Value.absent()
          : Value(playerId),
      statBarId: statBarId == null && nullToAbsent
          ? const Value.absent()
          : Value(statBarId),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      xp: xp == null && nullToAbsent ? const Value.absent() : Value(xp),
      curHp:
          curHp == null && nullToAbsent ? const Value.absent() : Value(curHp),
      maxHp:
          maxHp == null && nullToAbsent ? const Value.absent() : Value(maxHp),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Creature.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Creature(
      id: serializer.fromJson<int>(json['id']),
      creatureTemplateId: serializer.fromJson<int>(json['creatureTemplateId']),
      gameSessionId: serializer.fromJson<int>(json['gameSessionId']),
      playerId: serializer.fromJson<int>(json['playerId']),
      statBarId: serializer.fromJson<int>(json['statBarId']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      xp: serializer.fromJson<int>(json['xp']),
      curHp: serializer.fromJson<int>(json['curHp']),
      maxHp: serializer.fromJson<int>(json['maxHp']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'creatureTemplateId': serializer.toJson<int>(creatureTemplateId),
      'gameSessionId': serializer.toJson<int>(gameSessionId),
      'playerId': serializer.toJson<int>(playerId),
      'statBarId': serializer.toJson<int>(statBarId),
      'imagePath': serializer.toJson<String>(imagePath),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'xp': serializer.toJson<int>(xp),
      'curHp': serializer.toJson<int>(curHp),
      'maxHp': serializer.toJson<int>(maxHp),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Creature copyWith(
          {int id,
          int creatureTemplateId,
          int gameSessionId,
          int playerId,
          int statBarId,
          String imagePath,
          String name,
          String description,
          int xp,
          int curHp,
          int maxHp,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Creature(
        id: id ?? this.id,
        creatureTemplateId: creatureTemplateId ?? this.creatureTemplateId,
        gameSessionId: gameSessionId ?? this.gameSessionId,
        playerId: playerId ?? this.playerId,
        statBarId: statBarId ?? this.statBarId,
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        description: description ?? this.description,
        xp: xp ?? this.xp,
        curHp: curHp ?? this.curHp,
        maxHp: maxHp ?? this.maxHp,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Creature(')
          ..write('id: $id, ')
          ..write('creatureTemplateId: $creatureTemplateId, ')
          ..write('gameSessionId: $gameSessionId, ')
          ..write('playerId: $playerId, ')
          ..write('statBarId: $statBarId, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('xp: $xp, ')
          ..write('curHp: $curHp, ')
          ..write('maxHp: $maxHp, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          creatureTemplateId.hashCode,
          $mrjc(
              gameSessionId.hashCode,
              $mrjc(
                  playerId.hashCode,
                  $mrjc(
                      statBarId.hashCode,
                      $mrjc(
                          imagePath.hashCode,
                          $mrjc(
                              name.hashCode,
                              $mrjc(
                                  description.hashCode,
                                  $mrjc(
                                      xp.hashCode,
                                      $mrjc(
                                          curHp.hashCode,
                                          $mrjc(
                                              maxHp.hashCode,
                                              $mrjc(
                                                  createdAt.hashCode,
                                                  updatedAt
                                                      .hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Creature &&
          other.id == this.id &&
          other.creatureTemplateId == this.creatureTemplateId &&
          other.gameSessionId == this.gameSessionId &&
          other.playerId == this.playerId &&
          other.statBarId == this.statBarId &&
          other.imagePath == this.imagePath &&
          other.name == this.name &&
          other.description == this.description &&
          other.xp == this.xp &&
          other.curHp == this.curHp &&
          other.maxHp == this.maxHp &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CreaturesCompanion extends UpdateCompanion<Creature> {
  final Value<int> id;
  final Value<int> creatureTemplateId;
  final Value<int> gameSessionId;
  final Value<int> playerId;
  final Value<int> statBarId;
  final Value<String> imagePath;
  final Value<String> name;
  final Value<String> description;
  final Value<int> xp;
  final Value<int> curHp;
  final Value<int> maxHp;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CreaturesCompanion({
    this.id = const Value.absent(),
    this.creatureTemplateId = const Value.absent(),
    this.gameSessionId = const Value.absent(),
    this.playerId = const Value.absent(),
    this.statBarId = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.xp = const Value.absent(),
    this.curHp = const Value.absent(),
    this.maxHp = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CreaturesCompanion.insert({
    this.id = const Value.absent(),
    @required int creatureTemplateId,
    @required int gameSessionId,
    @required int playerId,
    @required int statBarId,
    @required String imagePath,
    @required String name,
    this.description = const Value.absent(),
    @required int xp,
    @required int curHp,
    @required int maxHp,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : creatureTemplateId = Value(creatureTemplateId),
        gameSessionId = Value(gameSessionId),
        playerId = Value(playerId),
        statBarId = Value(statBarId),
        imagePath = Value(imagePath),
        name = Value(name),
        xp = Value(xp),
        curHp = Value(curHp),
        maxHp = Value(maxHp),
        createdAt = Value(createdAt);
  static Insertable<Creature> custom({
    Expression<int> id,
    Expression<int> creatureTemplateId,
    Expression<int> gameSessionId,
    Expression<int> playerId,
    Expression<int> statBarId,
    Expression<String> imagePath,
    Expression<String> name,
    Expression<String> description,
    Expression<int> xp,
    Expression<int> curHp,
    Expression<int> maxHp,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (creatureTemplateId != null)
        'creature_template_id': creatureTemplateId,
      if (gameSessionId != null) 'game_session_id': gameSessionId,
      if (playerId != null) 'player_id': playerId,
      if (statBarId != null) 'stat_bar_id': statBarId,
      if (imagePath != null) 'image_path': imagePath,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (xp != null) 'xp': xp,
      if (curHp != null) 'cur_hp': curHp,
      if (maxHp != null) 'max_hp': maxHp,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CreaturesCompanion copyWith(
      {Value<int> id,
      Value<int> creatureTemplateId,
      Value<int> gameSessionId,
      Value<int> playerId,
      Value<int> statBarId,
      Value<String> imagePath,
      Value<String> name,
      Value<String> description,
      Value<int> xp,
      Value<int> curHp,
      Value<int> maxHp,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return CreaturesCompanion(
      id: id ?? this.id,
      creatureTemplateId: creatureTemplateId ?? this.creatureTemplateId,
      gameSessionId: gameSessionId ?? this.gameSessionId,
      playerId: playerId ?? this.playerId,
      statBarId: statBarId ?? this.statBarId,
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      description: description ?? this.description,
      xp: xp ?? this.xp,
      curHp: curHp ?? this.curHp,
      maxHp: maxHp ?? this.maxHp,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (creatureTemplateId.present) {
      map['creature_template_id'] = Variable<int>(creatureTemplateId.value);
    }
    if (gameSessionId.present) {
      map['game_session_id'] = Variable<int>(gameSessionId.value);
    }
    if (playerId.present) {
      map['player_id'] = Variable<int>(playerId.value);
    }
    if (statBarId.present) {
      map['stat_bar_id'] = Variable<int>(statBarId.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (xp.present) {
      map['xp'] = Variable<int>(xp.value);
    }
    if (curHp.present) {
      map['cur_hp'] = Variable<int>(curHp.value);
    }
    if (maxHp.present) {
      map['max_hp'] = Variable<int>(maxHp.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CreaturesCompanion(')
          ..write('id: $id, ')
          ..write('creatureTemplateId: $creatureTemplateId, ')
          ..write('gameSessionId: $gameSessionId, ')
          ..write('playerId: $playerId, ')
          ..write('statBarId: $statBarId, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('xp: $xp, ')
          ..write('curHp: $curHp, ')
          ..write('maxHp: $maxHp, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CreaturesTable extends Creatures
    with TableInfo<$CreaturesTable, Creature> {
  final GeneratedDatabase _db;
  final String _alias;
  $CreaturesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _creatureTemplateIdMeta =
      const VerificationMeta('creatureTemplateId');
  GeneratedIntColumn _creatureTemplateId;
  @override
  GeneratedIntColumn get creatureTemplateId =>
      _creatureTemplateId ??= _constructCreatureTemplateId();
  GeneratedIntColumn _constructCreatureTemplateId() {
    return GeneratedIntColumn(
      'creature_template_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _gameSessionIdMeta =
      const VerificationMeta('gameSessionId');
  GeneratedIntColumn _gameSessionId;
  @override
  GeneratedIntColumn get gameSessionId =>
      _gameSessionId ??= _constructGameSessionId();
  GeneratedIntColumn _constructGameSessionId() {
    return GeneratedIntColumn(
      'game_session_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _playerIdMeta = const VerificationMeta('playerId');
  GeneratedIntColumn _playerId;
  @override
  GeneratedIntColumn get playerId => _playerId ??= _constructPlayerId();
  GeneratedIntColumn _constructPlayerId() {
    return GeneratedIntColumn(
      'player_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statBarIdMeta = const VerificationMeta('statBarId');
  GeneratedIntColumn _statBarId;
  @override
  GeneratedIntColumn get statBarId => _statBarId ??= _constructStatBarId();
  GeneratedIntColumn _constructStatBarId() {
    return GeneratedIntColumn(
      'stat_bar_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  GeneratedTextColumn _imagePath;
  @override
  GeneratedTextColumn get imagePath => _imagePath ??= _constructImagePath();
  GeneratedTextColumn _constructImagePath() {
    return GeneratedTextColumn(
      'image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _xpMeta = const VerificationMeta('xp');
  GeneratedIntColumn _xp;
  @override
  GeneratedIntColumn get xp => _xp ??= _constructXp();
  GeneratedIntColumn _constructXp() {
    return GeneratedIntColumn(
      'xp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _curHpMeta = const VerificationMeta('curHp');
  GeneratedIntColumn _curHp;
  @override
  GeneratedIntColumn get curHp => _curHp ??= _constructCurHp();
  GeneratedIntColumn _constructCurHp() {
    return GeneratedIntColumn(
      'cur_hp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _maxHpMeta = const VerificationMeta('maxHp');
  GeneratedIntColumn _maxHp;
  @override
  GeneratedIntColumn get maxHp => _maxHp ??= _constructMaxHp();
  GeneratedIntColumn _constructMaxHp() {
    return GeneratedIntColumn(
      'max_hp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        creatureTemplateId,
        gameSessionId,
        playerId,
        statBarId,
        imagePath,
        name,
        description,
        xp,
        curHp,
        maxHp,
        createdAt,
        updatedAt
      ];
  @override
  $CreaturesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'creatures';
  @override
  final String actualTableName = 'creatures';
  @override
  VerificationContext validateIntegrity(Insertable<Creature> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('creature_template_id')) {
      context.handle(
          _creatureTemplateIdMeta,
          creatureTemplateId.isAcceptableOrUnknown(
              data['creature_template_id'], _creatureTemplateIdMeta));
    } else if (isInserting) {
      context.missing(_creatureTemplateIdMeta);
    }
    if (data.containsKey('game_session_id')) {
      context.handle(
          _gameSessionIdMeta,
          gameSessionId.isAcceptableOrUnknown(
              data['game_session_id'], _gameSessionIdMeta));
    } else if (isInserting) {
      context.missing(_gameSessionIdMeta);
    }
    if (data.containsKey('player_id')) {
      context.handle(_playerIdMeta,
          playerId.isAcceptableOrUnknown(data['player_id'], _playerIdMeta));
    } else if (isInserting) {
      context.missing(_playerIdMeta);
    }
    if (data.containsKey('stat_bar_id')) {
      context.handle(_statBarIdMeta,
          statBarId.isAcceptableOrUnknown(data['stat_bar_id'], _statBarIdMeta));
    } else if (isInserting) {
      context.missing(_statBarIdMeta);
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path'], _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('xp')) {
      context.handle(_xpMeta, xp.isAcceptableOrUnknown(data['xp'], _xpMeta));
    } else if (isInserting) {
      context.missing(_xpMeta);
    }
    if (data.containsKey('cur_hp')) {
      context.handle(
          _curHpMeta, curHp.isAcceptableOrUnknown(data['cur_hp'], _curHpMeta));
    } else if (isInserting) {
      context.missing(_curHpMeta);
    }
    if (data.containsKey('max_hp')) {
      context.handle(
          _maxHpMeta, maxHp.isAcceptableOrUnknown(data['max_hp'], _maxHpMeta));
    } else if (isInserting) {
      context.missing(_maxHpMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Creature map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Creature.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CreaturesTable createAlias(String alias) {
    return $CreaturesTable(_db, alias);
  }
}

class CreatureAbility extends DataClass implements Insertable<CreatureAbility> {
  final int id;
  final int creatureId;
  final int abilityId;
  final DateTime createdAt;
  final DateTime updatedAt;
  CreatureAbility(
      {@required this.id,
      @required this.creatureId,
      @required this.abilityId,
      @required this.createdAt,
      this.updatedAt});
  factory CreatureAbility.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CreatureAbility(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      creatureId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}creature_id']),
      abilityId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}ability_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || creatureId != null) {
      map['creature_id'] = Variable<int>(creatureId);
    }
    if (!nullToAbsent || abilityId != null) {
      map['ability_id'] = Variable<int>(abilityId);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  CreatureAbilitiesCompanion toCompanion(bool nullToAbsent) {
    return CreatureAbilitiesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      creatureId: creatureId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatureId),
      abilityId: abilityId == null && nullToAbsent
          ? const Value.absent()
          : Value(abilityId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory CreatureAbility.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CreatureAbility(
      id: serializer.fromJson<int>(json['id']),
      creatureId: serializer.fromJson<int>(json['creatureId']),
      abilityId: serializer.fromJson<int>(json['abilityId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'creatureId': serializer.toJson<int>(creatureId),
      'abilityId': serializer.toJson<int>(abilityId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CreatureAbility copyWith(
          {int id,
          int creatureId,
          int abilityId,
          DateTime createdAt,
          DateTime updatedAt}) =>
      CreatureAbility(
        id: id ?? this.id,
        creatureId: creatureId ?? this.creatureId,
        abilityId: abilityId ?? this.abilityId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('CreatureAbility(')
          ..write('id: $id, ')
          ..write('creatureId: $creatureId, ')
          ..write('abilityId: $abilityId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          creatureId.hashCode,
          $mrjc(abilityId.hashCode,
              $mrjc(createdAt.hashCode, updatedAt.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CreatureAbility &&
          other.id == this.id &&
          other.creatureId == this.creatureId &&
          other.abilityId == this.abilityId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CreatureAbilitiesCompanion extends UpdateCompanion<CreatureAbility> {
  final Value<int> id;
  final Value<int> creatureId;
  final Value<int> abilityId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CreatureAbilitiesCompanion({
    this.id = const Value.absent(),
    this.creatureId = const Value.absent(),
    this.abilityId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CreatureAbilitiesCompanion.insert({
    this.id = const Value.absent(),
    @required int creatureId,
    @required int abilityId,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : creatureId = Value(creatureId),
        abilityId = Value(abilityId),
        createdAt = Value(createdAt);
  static Insertable<CreatureAbility> custom({
    Expression<int> id,
    Expression<int> creatureId,
    Expression<int> abilityId,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (creatureId != null) 'creature_id': creatureId,
      if (abilityId != null) 'ability_id': abilityId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CreatureAbilitiesCompanion copyWith(
      {Value<int> id,
      Value<int> creatureId,
      Value<int> abilityId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return CreatureAbilitiesCompanion(
      id: id ?? this.id,
      creatureId: creatureId ?? this.creatureId,
      abilityId: abilityId ?? this.abilityId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (creatureId.present) {
      map['creature_id'] = Variable<int>(creatureId.value);
    }
    if (abilityId.present) {
      map['ability_id'] = Variable<int>(abilityId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CreatureAbilitiesCompanion(')
          ..write('id: $id, ')
          ..write('creatureId: $creatureId, ')
          ..write('abilityId: $abilityId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CreatureAbilitiesTable extends CreatureAbilities
    with TableInfo<$CreatureAbilitiesTable, CreatureAbility> {
  final GeneratedDatabase _db;
  final String _alias;
  $CreatureAbilitiesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _creatureIdMeta = const VerificationMeta('creatureId');
  GeneratedIntColumn _creatureId;
  @override
  GeneratedIntColumn get creatureId => _creatureId ??= _constructCreatureId();
  GeneratedIntColumn _constructCreatureId() {
    return GeneratedIntColumn(
      'creature_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _abilityIdMeta = const VerificationMeta('abilityId');
  GeneratedIntColumn _abilityId;
  @override
  GeneratedIntColumn get abilityId => _abilityId ??= _constructAbilityId();
  GeneratedIntColumn _constructAbilityId() {
    return GeneratedIntColumn(
      'ability_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, creatureId, abilityId, createdAt, updatedAt];
  @override
  $CreatureAbilitiesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'creature_abilities';
  @override
  final String actualTableName = 'creature_abilities';
  @override
  VerificationContext validateIntegrity(Insertable<CreatureAbility> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('creature_id')) {
      context.handle(
          _creatureIdMeta,
          creatureId.isAcceptableOrUnknown(
              data['creature_id'], _creatureIdMeta));
    } else if (isInserting) {
      context.missing(_creatureIdMeta);
    }
    if (data.containsKey('ability_id')) {
      context.handle(_abilityIdMeta,
          abilityId.isAcceptableOrUnknown(data['ability_id'], _abilityIdMeta));
    } else if (isInserting) {
      context.missing(_abilityIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CreatureAbility map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CreatureAbility.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CreatureAbilitiesTable createAlias(String alias) {
    return $CreatureAbilitiesTable(_db, alias);
  }
}

class CreatureStatusImpairment extends DataClass
    implements Insertable<CreatureStatusImpairment> {
  final int id;
  final int creatureId;
  final int statusImpairmentId;
  final DateTime createdAt;
  final DateTime updatedAt;
  CreatureStatusImpairment(
      {@required this.id,
      @required this.creatureId,
      @required this.statusImpairmentId,
      @required this.createdAt,
      this.updatedAt});
  factory CreatureStatusImpairment.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CreatureStatusImpairment(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      creatureId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}creature_id']),
      statusImpairmentId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}status_impairment_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || creatureId != null) {
      map['creature_id'] = Variable<int>(creatureId);
    }
    if (!nullToAbsent || statusImpairmentId != null) {
      map['status_impairment_id'] = Variable<int>(statusImpairmentId);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  CreatureStatusImpairmentsCompanion toCompanion(bool nullToAbsent) {
    return CreatureStatusImpairmentsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      creatureId: creatureId == null && nullToAbsent
          ? const Value.absent()
          : Value(creatureId),
      statusImpairmentId: statusImpairmentId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusImpairmentId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory CreatureStatusImpairment.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CreatureStatusImpairment(
      id: serializer.fromJson<int>(json['id']),
      creatureId: serializer.fromJson<int>(json['creatureId']),
      statusImpairmentId: serializer.fromJson<int>(json['statusImpairmentId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'creatureId': serializer.toJson<int>(creatureId),
      'statusImpairmentId': serializer.toJson<int>(statusImpairmentId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CreatureStatusImpairment copyWith(
          {int id,
          int creatureId,
          int statusImpairmentId,
          DateTime createdAt,
          DateTime updatedAt}) =>
      CreatureStatusImpairment(
        id: id ?? this.id,
        creatureId: creatureId ?? this.creatureId,
        statusImpairmentId: statusImpairmentId ?? this.statusImpairmentId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('CreatureStatusImpairment(')
          ..write('id: $id, ')
          ..write('creatureId: $creatureId, ')
          ..write('statusImpairmentId: $statusImpairmentId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          creatureId.hashCode,
          $mrjc(statusImpairmentId.hashCode,
              $mrjc(createdAt.hashCode, updatedAt.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CreatureStatusImpairment &&
          other.id == this.id &&
          other.creatureId == this.creatureId &&
          other.statusImpairmentId == this.statusImpairmentId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CreatureStatusImpairmentsCompanion
    extends UpdateCompanion<CreatureStatusImpairment> {
  final Value<int> id;
  final Value<int> creatureId;
  final Value<int> statusImpairmentId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CreatureStatusImpairmentsCompanion({
    this.id = const Value.absent(),
    this.creatureId = const Value.absent(),
    this.statusImpairmentId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CreatureStatusImpairmentsCompanion.insert({
    this.id = const Value.absent(),
    @required int creatureId,
    @required int statusImpairmentId,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : creatureId = Value(creatureId),
        statusImpairmentId = Value(statusImpairmentId),
        createdAt = Value(createdAt);
  static Insertable<CreatureStatusImpairment> custom({
    Expression<int> id,
    Expression<int> creatureId,
    Expression<int> statusImpairmentId,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (creatureId != null) 'creature_id': creatureId,
      if (statusImpairmentId != null)
        'status_impairment_id': statusImpairmentId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CreatureStatusImpairmentsCompanion copyWith(
      {Value<int> id,
      Value<int> creatureId,
      Value<int> statusImpairmentId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return CreatureStatusImpairmentsCompanion(
      id: id ?? this.id,
      creatureId: creatureId ?? this.creatureId,
      statusImpairmentId: statusImpairmentId ?? this.statusImpairmentId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (creatureId.present) {
      map['creature_id'] = Variable<int>(creatureId.value);
    }
    if (statusImpairmentId.present) {
      map['status_impairment_id'] = Variable<int>(statusImpairmentId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CreatureStatusImpairmentsCompanion(')
          ..write('id: $id, ')
          ..write('creatureId: $creatureId, ')
          ..write('statusImpairmentId: $statusImpairmentId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CreatureStatusImpairmentsTable extends CreatureStatusImpairments
    with TableInfo<$CreatureStatusImpairmentsTable, CreatureStatusImpairment> {
  final GeneratedDatabase _db;
  final String _alias;
  $CreatureStatusImpairmentsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _creatureIdMeta = const VerificationMeta('creatureId');
  GeneratedIntColumn _creatureId;
  @override
  GeneratedIntColumn get creatureId => _creatureId ??= _constructCreatureId();
  GeneratedIntColumn _constructCreatureId() {
    return GeneratedIntColumn(
      'creature_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusImpairmentIdMeta =
      const VerificationMeta('statusImpairmentId');
  GeneratedIntColumn _statusImpairmentId;
  @override
  GeneratedIntColumn get statusImpairmentId =>
      _statusImpairmentId ??= _constructStatusImpairmentId();
  GeneratedIntColumn _constructStatusImpairmentId() {
    return GeneratedIntColumn(
      'status_impairment_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, creatureId, statusImpairmentId, createdAt, updatedAt];
  @override
  $CreatureStatusImpairmentsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'creature_status_impairments';
  @override
  final String actualTableName = 'creature_status_impairments';
  @override
  VerificationContext validateIntegrity(
      Insertable<CreatureStatusImpairment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('creature_id')) {
      context.handle(
          _creatureIdMeta,
          creatureId.isAcceptableOrUnknown(
              data['creature_id'], _creatureIdMeta));
    } else if (isInserting) {
      context.missing(_creatureIdMeta);
    }
    if (data.containsKey('status_impairment_id')) {
      context.handle(
          _statusImpairmentIdMeta,
          statusImpairmentId.isAcceptableOrUnknown(
              data['status_impairment_id'], _statusImpairmentIdMeta));
    } else if (isInserting) {
      context.missing(_statusImpairmentIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CreatureStatusImpairment map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CreatureStatusImpairment.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  $CreatureStatusImpairmentsTable createAlias(String alias) {
    return $CreatureStatusImpairmentsTable(_db, alias);
  }
}

class CreatureTemplate extends DataClass
    implements Insertable<CreatureTemplate> {
  final int id;
  final String imagePath;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  CreatureTemplate(
      {@required this.id,
      @required this.imagePath,
      @required this.name,
      this.description,
      @required this.createdAt,
      this.updatedAt});
  factory CreatureTemplate.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return CreatureTemplate(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      imagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  CreatureTemplatesCompanion toCompanion(bool nullToAbsent) {
    return CreatureTemplatesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory CreatureTemplate.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CreatureTemplate(
      id: serializer.fromJson<int>(json['id']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'imagePath': serializer.toJson<String>(imagePath),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CreatureTemplate copyWith(
          {int id,
          String imagePath,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      CreatureTemplate(
        id: id ?? this.id,
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('CreatureTemplate(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          imagePath.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(description.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is CreatureTemplate &&
          other.id == this.id &&
          other.imagePath == this.imagePath &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CreatureTemplatesCompanion extends UpdateCompanion<CreatureTemplate> {
  final Value<int> id;
  final Value<String> imagePath;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const CreatureTemplatesCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CreatureTemplatesCompanion.insert({
    this.id = const Value.absent(),
    @required String imagePath,
    @required String name,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : imagePath = Value(imagePath),
        name = Value(name),
        createdAt = Value(createdAt);
  static Insertable<CreatureTemplate> custom({
    Expression<int> id,
    Expression<String> imagePath,
    Expression<String> name,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imagePath != null) 'image_path': imagePath,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CreatureTemplatesCompanion copyWith(
      {Value<int> id,
      Value<String> imagePath,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return CreatureTemplatesCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CreatureTemplatesCompanion(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $CreatureTemplatesTable extends CreatureTemplates
    with TableInfo<$CreatureTemplatesTable, CreatureTemplate> {
  final GeneratedDatabase _db;
  final String _alias;
  $CreatureTemplatesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  GeneratedTextColumn _imagePath;
  @override
  GeneratedTextColumn get imagePath => _imagePath ??= _constructImagePath();
  GeneratedTextColumn _constructImagePath() {
    return GeneratedTextColumn(
      'image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, imagePath, name, description, createdAt, updatedAt];
  @override
  $CreatureTemplatesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'creature_templates';
  @override
  final String actualTableName = 'creature_templates';
  @override
  VerificationContext validateIntegrity(Insertable<CreatureTemplate> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path'], _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CreatureTemplate map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return CreatureTemplate.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CreatureTemplatesTable createAlias(String alias) {
    return $CreatureTemplatesTable(_db, alias);
  }
}

class GameLog extends DataClass implements Insertable<GameLog> {
  final int id;
  final int gameSessionId;
  final String action;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  GameLog(
      {@required this.id,
      @required this.gameSessionId,
      @required this.action,
      this.description,
      @required this.createdAt,
      this.updatedAt});
  factory GameLog.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return GameLog(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      gameSessionId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}game_session_id']),
      action:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}action']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || gameSessionId != null) {
      map['game_session_id'] = Variable<int>(gameSessionId);
    }
    if (!nullToAbsent || action != null) {
      map['action'] = Variable<String>(action);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  GameLogsCompanion toCompanion(bool nullToAbsent) {
    return GameLogsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      gameSessionId: gameSessionId == null && nullToAbsent
          ? const Value.absent()
          : Value(gameSessionId),
      action:
          action == null && nullToAbsent ? const Value.absent() : Value(action),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory GameLog.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return GameLog(
      id: serializer.fromJson<int>(json['id']),
      gameSessionId: serializer.fromJson<int>(json['gameSessionId']),
      action: serializer.fromJson<String>(json['action']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'gameSessionId': serializer.toJson<int>(gameSessionId),
      'action': serializer.toJson<String>(action),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  GameLog copyWith(
          {int id,
          int gameSessionId,
          String action,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      GameLog(
        id: id ?? this.id,
        gameSessionId: gameSessionId ?? this.gameSessionId,
        action: action ?? this.action,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('GameLog(')
          ..write('id: $id, ')
          ..write('gameSessionId: $gameSessionId, ')
          ..write('action: $action, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          gameSessionId.hashCode,
          $mrjc(
              action.hashCode,
              $mrjc(description.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is GameLog &&
          other.id == this.id &&
          other.gameSessionId == this.gameSessionId &&
          other.action == this.action &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class GameLogsCompanion extends UpdateCompanion<GameLog> {
  final Value<int> id;
  final Value<int> gameSessionId;
  final Value<String> action;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const GameLogsCompanion({
    this.id = const Value.absent(),
    this.gameSessionId = const Value.absent(),
    this.action = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  GameLogsCompanion.insert({
    this.id = const Value.absent(),
    @required int gameSessionId,
    @required String action,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : gameSessionId = Value(gameSessionId),
        action = Value(action),
        createdAt = Value(createdAt);
  static Insertable<GameLog> custom({
    Expression<int> id,
    Expression<int> gameSessionId,
    Expression<String> action,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (gameSessionId != null) 'game_session_id': gameSessionId,
      if (action != null) 'action': action,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  GameLogsCompanion copyWith(
      {Value<int> id,
      Value<int> gameSessionId,
      Value<String> action,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return GameLogsCompanion(
      id: id ?? this.id,
      gameSessionId: gameSessionId ?? this.gameSessionId,
      action: action ?? this.action,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (gameSessionId.present) {
      map['game_session_id'] = Variable<int>(gameSessionId.value);
    }
    if (action.present) {
      map['action'] = Variable<String>(action.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GameLogsCompanion(')
          ..write('id: $id, ')
          ..write('gameSessionId: $gameSessionId, ')
          ..write('action: $action, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $GameLogsTable extends GameLogs with TableInfo<$GameLogsTable, GameLog> {
  final GeneratedDatabase _db;
  final String _alias;
  $GameLogsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _gameSessionIdMeta =
      const VerificationMeta('gameSessionId');
  GeneratedIntColumn _gameSessionId;
  @override
  GeneratedIntColumn get gameSessionId =>
      _gameSessionId ??= _constructGameSessionId();
  GeneratedIntColumn _constructGameSessionId() {
    return GeneratedIntColumn(
      'game_session_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _actionMeta = const VerificationMeta('action');
  GeneratedTextColumn _action;
  @override
  GeneratedTextColumn get action => _action ??= _constructAction();
  GeneratedTextColumn _constructAction() {
    return GeneratedTextColumn(
      'action',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, gameSessionId, action, description, createdAt, updatedAt];
  @override
  $GameLogsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'game_logs';
  @override
  final String actualTableName = 'game_logs';
  @override
  VerificationContext validateIntegrity(Insertable<GameLog> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('game_session_id')) {
      context.handle(
          _gameSessionIdMeta,
          gameSessionId.isAcceptableOrUnknown(
              data['game_session_id'], _gameSessionIdMeta));
    } else if (isInserting) {
      context.missing(_gameSessionIdMeta);
    }
    if (data.containsKey('action')) {
      context.handle(_actionMeta,
          action.isAcceptableOrUnknown(data['action'], _actionMeta));
    } else if (isInserting) {
      context.missing(_actionMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GameLog map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return GameLog.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $GameLogsTable createAlias(String alias) {
    return $GameLogsTable(_db, alias);
  }
}

class GameSession extends DataClass implements Insertable<GameSession> {
  final int id;
  final int storyId;
  final String resultCode;
  final String timeCode;
  final int hope;
  final int morale;
  final DateTime createdAt;
  final DateTime updatedAt;
  GameSession(
      {@required this.id,
      @required this.storyId,
      @required this.resultCode,
      @required this.timeCode,
      @required this.hope,
      @required this.morale,
      @required this.createdAt,
      this.updatedAt});
  factory GameSession.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return GameSession(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      storyId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}story_id']),
      resultCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}result_code']),
      timeCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}time_code']),
      hope: intType.mapFromDatabaseResponse(data['${effectivePrefix}hope']),
      morale: intType.mapFromDatabaseResponse(data['${effectivePrefix}morale']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || storyId != null) {
      map['story_id'] = Variable<int>(storyId);
    }
    if (!nullToAbsent || resultCode != null) {
      map['result_code'] = Variable<String>(resultCode);
    }
    if (!nullToAbsent || timeCode != null) {
      map['time_code'] = Variable<String>(timeCode);
    }
    if (!nullToAbsent || hope != null) {
      map['hope'] = Variable<int>(hope);
    }
    if (!nullToAbsent || morale != null) {
      map['morale'] = Variable<int>(morale);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  GameSessionsCompanion toCompanion(bool nullToAbsent) {
    return GameSessionsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      storyId: storyId == null && nullToAbsent
          ? const Value.absent()
          : Value(storyId),
      resultCode: resultCode == null && nullToAbsent
          ? const Value.absent()
          : Value(resultCode),
      timeCode: timeCode == null && nullToAbsent
          ? const Value.absent()
          : Value(timeCode),
      hope: hope == null && nullToAbsent ? const Value.absent() : Value(hope),
      morale:
          morale == null && nullToAbsent ? const Value.absent() : Value(morale),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory GameSession.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return GameSession(
      id: serializer.fromJson<int>(json['id']),
      storyId: serializer.fromJson<int>(json['storyId']),
      resultCode: serializer.fromJson<String>(json['resultCode']),
      timeCode: serializer.fromJson<String>(json['timeCode']),
      hope: serializer.fromJson<int>(json['hope']),
      morale: serializer.fromJson<int>(json['morale']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'storyId': serializer.toJson<int>(storyId),
      'resultCode': serializer.toJson<String>(resultCode),
      'timeCode': serializer.toJson<String>(timeCode),
      'hope': serializer.toJson<int>(hope),
      'morale': serializer.toJson<int>(morale),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  GameSession copyWith(
          {int id,
          int storyId,
          String resultCode,
          String timeCode,
          int hope,
          int morale,
          DateTime createdAt,
          DateTime updatedAt}) =>
      GameSession(
        id: id ?? this.id,
        storyId: storyId ?? this.storyId,
        resultCode: resultCode ?? this.resultCode,
        timeCode: timeCode ?? this.timeCode,
        hope: hope ?? this.hope,
        morale: morale ?? this.morale,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('GameSession(')
          ..write('id: $id, ')
          ..write('storyId: $storyId, ')
          ..write('resultCode: $resultCode, ')
          ..write('timeCode: $timeCode, ')
          ..write('hope: $hope, ')
          ..write('morale: $morale, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          storyId.hashCode,
          $mrjc(
              resultCode.hashCode,
              $mrjc(
                  timeCode.hashCode,
                  $mrjc(
                      hope.hashCode,
                      $mrjc(morale.hashCode,
                          $mrjc(createdAt.hashCode, updatedAt.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is GameSession &&
          other.id == this.id &&
          other.storyId == this.storyId &&
          other.resultCode == this.resultCode &&
          other.timeCode == this.timeCode &&
          other.hope == this.hope &&
          other.morale == this.morale &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class GameSessionsCompanion extends UpdateCompanion<GameSession> {
  final Value<int> id;
  final Value<int> storyId;
  final Value<String> resultCode;
  final Value<String> timeCode;
  final Value<int> hope;
  final Value<int> morale;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const GameSessionsCompanion({
    this.id = const Value.absent(),
    this.storyId = const Value.absent(),
    this.resultCode = const Value.absent(),
    this.timeCode = const Value.absent(),
    this.hope = const Value.absent(),
    this.morale = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  GameSessionsCompanion.insert({
    this.id = const Value.absent(),
    @required int storyId,
    @required String resultCode,
    @required String timeCode,
    @required int hope,
    @required int morale,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : storyId = Value(storyId),
        resultCode = Value(resultCode),
        timeCode = Value(timeCode),
        hope = Value(hope),
        morale = Value(morale),
        createdAt = Value(createdAt);
  static Insertable<GameSession> custom({
    Expression<int> id,
    Expression<int> storyId,
    Expression<String> resultCode,
    Expression<String> timeCode,
    Expression<int> hope,
    Expression<int> morale,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (storyId != null) 'story_id': storyId,
      if (resultCode != null) 'result_code': resultCode,
      if (timeCode != null) 'time_code': timeCode,
      if (hope != null) 'hope': hope,
      if (morale != null) 'morale': morale,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  GameSessionsCompanion copyWith(
      {Value<int> id,
      Value<int> storyId,
      Value<String> resultCode,
      Value<String> timeCode,
      Value<int> hope,
      Value<int> morale,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return GameSessionsCompanion(
      id: id ?? this.id,
      storyId: storyId ?? this.storyId,
      resultCode: resultCode ?? this.resultCode,
      timeCode: timeCode ?? this.timeCode,
      hope: hope ?? this.hope,
      morale: morale ?? this.morale,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (storyId.present) {
      map['story_id'] = Variable<int>(storyId.value);
    }
    if (resultCode.present) {
      map['result_code'] = Variable<String>(resultCode.value);
    }
    if (timeCode.present) {
      map['time_code'] = Variable<String>(timeCode.value);
    }
    if (hope.present) {
      map['hope'] = Variable<int>(hope.value);
    }
    if (morale.present) {
      map['morale'] = Variable<int>(morale.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GameSessionsCompanion(')
          ..write('id: $id, ')
          ..write('storyId: $storyId, ')
          ..write('resultCode: $resultCode, ')
          ..write('timeCode: $timeCode, ')
          ..write('hope: $hope, ')
          ..write('morale: $morale, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $GameSessionsTable extends GameSessions
    with TableInfo<$GameSessionsTable, GameSession> {
  final GeneratedDatabase _db;
  final String _alias;
  $GameSessionsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _storyIdMeta = const VerificationMeta('storyId');
  GeneratedIntColumn _storyId;
  @override
  GeneratedIntColumn get storyId => _storyId ??= _constructStoryId();
  GeneratedIntColumn _constructStoryId() {
    return GeneratedIntColumn(
      'story_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _resultCodeMeta = const VerificationMeta('resultCode');
  GeneratedTextColumn _resultCode;
  @override
  GeneratedTextColumn get resultCode => _resultCode ??= _constructResultCode();
  GeneratedTextColumn _constructResultCode() {
    return GeneratedTextColumn(
      'result_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _timeCodeMeta = const VerificationMeta('timeCode');
  GeneratedTextColumn _timeCode;
  @override
  GeneratedTextColumn get timeCode => _timeCode ??= _constructTimeCode();
  GeneratedTextColumn _constructTimeCode() {
    return GeneratedTextColumn(
      'time_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _hopeMeta = const VerificationMeta('hope');
  GeneratedIntColumn _hope;
  @override
  GeneratedIntColumn get hope => _hope ??= _constructHope();
  GeneratedIntColumn _constructHope() {
    return GeneratedIntColumn(
      'hope',
      $tableName,
      false,
    );
  }

  final VerificationMeta _moraleMeta = const VerificationMeta('morale');
  GeneratedIntColumn _morale;
  @override
  GeneratedIntColumn get morale => _morale ??= _constructMorale();
  GeneratedIntColumn _constructMorale() {
    return GeneratedIntColumn(
      'morale',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, storyId, resultCode, timeCode, hope, morale, createdAt, updatedAt];
  @override
  $GameSessionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'game_sessions';
  @override
  final String actualTableName = 'game_sessions';
  @override
  VerificationContext validateIntegrity(Insertable<GameSession> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('story_id')) {
      context.handle(_storyIdMeta,
          storyId.isAcceptableOrUnknown(data['story_id'], _storyIdMeta));
    } else if (isInserting) {
      context.missing(_storyIdMeta);
    }
    if (data.containsKey('result_code')) {
      context.handle(
          _resultCodeMeta,
          resultCode.isAcceptableOrUnknown(
              data['result_code'], _resultCodeMeta));
    } else if (isInserting) {
      context.missing(_resultCodeMeta);
    }
    if (data.containsKey('time_code')) {
      context.handle(_timeCodeMeta,
          timeCode.isAcceptableOrUnknown(data['time_code'], _timeCodeMeta));
    } else if (isInserting) {
      context.missing(_timeCodeMeta);
    }
    if (data.containsKey('hope')) {
      context.handle(
          _hopeMeta, hope.isAcceptableOrUnknown(data['hope'], _hopeMeta));
    } else if (isInserting) {
      context.missing(_hopeMeta);
    }
    if (data.containsKey('morale')) {
      context.handle(_moraleMeta,
          morale.isAcceptableOrUnknown(data['morale'], _moraleMeta));
    } else if (isInserting) {
      context.missing(_moraleMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GameSession map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return GameSession.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $GameSessionsTable createAlias(String alias) {
    return $GameSessionsTable(_db, alias);
  }
}

class Item extends DataClass implements Insertable<Item> {
  final int id;
  final String imagePath;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  Item(
      {@required this.id,
      @required this.imagePath,
      @required this.name,
      this.description,
      @required this.createdAt,
      this.updatedAt});
  factory Item.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Item(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      imagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  ItemsCompanion toCompanion(bool nullToAbsent) {
    return ItemsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Item.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Item(
      id: serializer.fromJson<int>(json['id']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'imagePath': serializer.toJson<String>(imagePath),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Item copyWith(
          {int id,
          String imagePath,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Item(
        id: id ?? this.id,
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Item(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          imagePath.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(description.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Item &&
          other.id == this.id &&
          other.imagePath == this.imagePath &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ItemsCompanion extends UpdateCompanion<Item> {
  final Value<int> id;
  final Value<String> imagePath;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const ItemsCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ItemsCompanion.insert({
    this.id = const Value.absent(),
    @required String imagePath,
    @required String name,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : imagePath = Value(imagePath),
        name = Value(name),
        createdAt = Value(createdAt);
  static Insertable<Item> custom({
    Expression<int> id,
    Expression<String> imagePath,
    Expression<String> name,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imagePath != null) 'image_path': imagePath,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ItemsCompanion copyWith(
      {Value<int> id,
      Value<String> imagePath,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return ItemsCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemsCompanion(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ItemsTable extends Items with TableInfo<$ItemsTable, Item> {
  final GeneratedDatabase _db;
  final String _alias;
  $ItemsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  GeneratedTextColumn _imagePath;
  @override
  GeneratedTextColumn get imagePath => _imagePath ??= _constructImagePath();
  GeneratedTextColumn _constructImagePath() {
    return GeneratedTextColumn(
      'image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, imagePath, name, description, createdAt, updatedAt];
  @override
  $ItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'items';
  @override
  final String actualTableName = 'items';
  @override
  VerificationContext validateIntegrity(Insertable<Item> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path'], _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Item map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Item.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ItemsTable createAlias(String alias) {
    return $ItemsTable(_db, alias);
  }
}

class ItemStorage extends DataClass implements Insertable<ItemStorage> {
  final int id;
  final int gameSessionId;
  final int itemId;
  final DateTime createdAt;
  final DateTime updatedAt;
  ItemStorage(
      {@required this.id,
      @required this.gameSessionId,
      @required this.itemId,
      @required this.createdAt,
      this.updatedAt});
  factory ItemStorage.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ItemStorage(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      gameSessionId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}game_session_id']),
      itemId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}item_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || gameSessionId != null) {
      map['game_session_id'] = Variable<int>(gameSessionId);
    }
    if (!nullToAbsent || itemId != null) {
      map['item_id'] = Variable<int>(itemId);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  ItemStoragesCompanion toCompanion(bool nullToAbsent) {
    return ItemStoragesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      gameSessionId: gameSessionId == null && nullToAbsent
          ? const Value.absent()
          : Value(gameSessionId),
      itemId:
          itemId == null && nullToAbsent ? const Value.absent() : Value(itemId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory ItemStorage.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ItemStorage(
      id: serializer.fromJson<int>(json['id']),
      gameSessionId: serializer.fromJson<int>(json['gameSessionId']),
      itemId: serializer.fromJson<int>(json['itemId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'gameSessionId': serializer.toJson<int>(gameSessionId),
      'itemId': serializer.toJson<int>(itemId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  ItemStorage copyWith(
          {int id,
          int gameSessionId,
          int itemId,
          DateTime createdAt,
          DateTime updatedAt}) =>
      ItemStorage(
        id: id ?? this.id,
        gameSessionId: gameSessionId ?? this.gameSessionId,
        itemId: itemId ?? this.itemId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ItemStorage(')
          ..write('id: $id, ')
          ..write('gameSessionId: $gameSessionId, ')
          ..write('itemId: $itemId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          gameSessionId.hashCode,
          $mrjc(itemId.hashCode,
              $mrjc(createdAt.hashCode, updatedAt.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ItemStorage &&
          other.id == this.id &&
          other.gameSessionId == this.gameSessionId &&
          other.itemId == this.itemId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ItemStoragesCompanion extends UpdateCompanion<ItemStorage> {
  final Value<int> id;
  final Value<int> gameSessionId;
  final Value<int> itemId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const ItemStoragesCompanion({
    this.id = const Value.absent(),
    this.gameSessionId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ItemStoragesCompanion.insert({
    this.id = const Value.absent(),
    @required int gameSessionId,
    @required int itemId,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : gameSessionId = Value(gameSessionId),
        itemId = Value(itemId),
        createdAt = Value(createdAt);
  static Insertable<ItemStorage> custom({
    Expression<int> id,
    Expression<int> gameSessionId,
    Expression<int> itemId,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (gameSessionId != null) 'game_session_id': gameSessionId,
      if (itemId != null) 'item_id': itemId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ItemStoragesCompanion copyWith(
      {Value<int> id,
      Value<int> gameSessionId,
      Value<int> itemId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return ItemStoragesCompanion(
      id: id ?? this.id,
      gameSessionId: gameSessionId ?? this.gameSessionId,
      itemId: itemId ?? this.itemId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (gameSessionId.present) {
      map['game_session_id'] = Variable<int>(gameSessionId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemStoragesCompanion(')
          ..write('id: $id, ')
          ..write('gameSessionId: $gameSessionId, ')
          ..write('itemId: $itemId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ItemStoragesTable extends ItemStorages
    with TableInfo<$ItemStoragesTable, ItemStorage> {
  final GeneratedDatabase _db;
  final String _alias;
  $ItemStoragesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _gameSessionIdMeta =
      const VerificationMeta('gameSessionId');
  GeneratedIntColumn _gameSessionId;
  @override
  GeneratedIntColumn get gameSessionId =>
      _gameSessionId ??= _constructGameSessionId();
  GeneratedIntColumn _constructGameSessionId() {
    return GeneratedIntColumn(
      'game_session_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  GeneratedIntColumn _itemId;
  @override
  GeneratedIntColumn get itemId => _itemId ??= _constructItemId();
  GeneratedIntColumn _constructItemId() {
    return GeneratedIntColumn(
      'item_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, gameSessionId, itemId, createdAt, updatedAt];
  @override
  $ItemStoragesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'item_storages';
  @override
  final String actualTableName = 'item_storages';
  @override
  VerificationContext validateIntegrity(Insertable<ItemStorage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('game_session_id')) {
      context.handle(
          _gameSessionIdMeta,
          gameSessionId.isAcceptableOrUnknown(
              data['game_session_id'], _gameSessionIdMeta));
    } else if (isInserting) {
      context.missing(_gameSessionIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id'], _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemStorage map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ItemStorage.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ItemStoragesTable createAlias(String alias) {
    return $ItemStoragesTable(_db, alias);
  }
}

class Player extends DataClass implements Insertable<Player> {
  final int id;
  final int playerTemplateId;
  final int gameSessionId;
  final String imagePath;
  final String name;
  final String description;
  final String colorCode;
  final int level;
  final int curHp;
  final int maxHp;
  final DateTime createdAt;
  final DateTime updatedAt;
  Player(
      {@required this.id,
      @required this.playerTemplateId,
      @required this.gameSessionId,
      @required this.imagePath,
      @required this.name,
      this.description,
      @required this.colorCode,
      @required this.level,
      @required this.curHp,
      @required this.maxHp,
      @required this.createdAt,
      this.updatedAt});
  factory Player.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Player(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      playerTemplateId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}player_template_id']),
      gameSessionId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}game_session_id']),
      imagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      colorCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}color_code']),
      level: intType.mapFromDatabaseResponse(data['${effectivePrefix}level']),
      curHp: intType.mapFromDatabaseResponse(data['${effectivePrefix}cur_hp']),
      maxHp: intType.mapFromDatabaseResponse(data['${effectivePrefix}max_hp']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || playerTemplateId != null) {
      map['player_template_id'] = Variable<int>(playerTemplateId);
    }
    if (!nullToAbsent || gameSessionId != null) {
      map['game_session_id'] = Variable<int>(gameSessionId);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || colorCode != null) {
      map['color_code'] = Variable<String>(colorCode);
    }
    if (!nullToAbsent || level != null) {
      map['level'] = Variable<int>(level);
    }
    if (!nullToAbsent || curHp != null) {
      map['cur_hp'] = Variable<int>(curHp);
    }
    if (!nullToAbsent || maxHp != null) {
      map['max_hp'] = Variable<int>(maxHp);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  PlayersCompanion toCompanion(bool nullToAbsent) {
    return PlayersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      playerTemplateId: playerTemplateId == null && nullToAbsent
          ? const Value.absent()
          : Value(playerTemplateId),
      gameSessionId: gameSessionId == null && nullToAbsent
          ? const Value.absent()
          : Value(gameSessionId),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      colorCode: colorCode == null && nullToAbsent
          ? const Value.absent()
          : Value(colorCode),
      level:
          level == null && nullToAbsent ? const Value.absent() : Value(level),
      curHp:
          curHp == null && nullToAbsent ? const Value.absent() : Value(curHp),
      maxHp:
          maxHp == null && nullToAbsent ? const Value.absent() : Value(maxHp),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Player.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Player(
      id: serializer.fromJson<int>(json['id']),
      playerTemplateId: serializer.fromJson<int>(json['playerTemplateId']),
      gameSessionId: serializer.fromJson<int>(json['gameSessionId']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      colorCode: serializer.fromJson<String>(json['colorCode']),
      level: serializer.fromJson<int>(json['level']),
      curHp: serializer.fromJson<int>(json['curHp']),
      maxHp: serializer.fromJson<int>(json['maxHp']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'playerTemplateId': serializer.toJson<int>(playerTemplateId),
      'gameSessionId': serializer.toJson<int>(gameSessionId),
      'imagePath': serializer.toJson<String>(imagePath),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'colorCode': serializer.toJson<String>(colorCode),
      'level': serializer.toJson<int>(level),
      'curHp': serializer.toJson<int>(curHp),
      'maxHp': serializer.toJson<int>(maxHp),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Player copyWith(
          {int id,
          int playerTemplateId,
          int gameSessionId,
          String imagePath,
          String name,
          String description,
          String colorCode,
          int level,
          int curHp,
          int maxHp,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Player(
        id: id ?? this.id,
        playerTemplateId: playerTemplateId ?? this.playerTemplateId,
        gameSessionId: gameSessionId ?? this.gameSessionId,
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        description: description ?? this.description,
        colorCode: colorCode ?? this.colorCode,
        level: level ?? this.level,
        curHp: curHp ?? this.curHp,
        maxHp: maxHp ?? this.maxHp,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Player(')
          ..write('id: $id, ')
          ..write('playerTemplateId: $playerTemplateId, ')
          ..write('gameSessionId: $gameSessionId, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('colorCode: $colorCode, ')
          ..write('level: $level, ')
          ..write('curHp: $curHp, ')
          ..write('maxHp: $maxHp, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          playerTemplateId.hashCode,
          $mrjc(
              gameSessionId.hashCode,
              $mrjc(
                  imagePath.hashCode,
                  $mrjc(
                      name.hashCode,
                      $mrjc(
                          description.hashCode,
                          $mrjc(
                              colorCode.hashCode,
                              $mrjc(
                                  level.hashCode,
                                  $mrjc(
                                      curHp.hashCode,
                                      $mrjc(
                                          maxHp.hashCode,
                                          $mrjc(createdAt.hashCode,
                                              updatedAt.hashCode))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Player &&
          other.id == this.id &&
          other.playerTemplateId == this.playerTemplateId &&
          other.gameSessionId == this.gameSessionId &&
          other.imagePath == this.imagePath &&
          other.name == this.name &&
          other.description == this.description &&
          other.colorCode == this.colorCode &&
          other.level == this.level &&
          other.curHp == this.curHp &&
          other.maxHp == this.maxHp &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PlayersCompanion extends UpdateCompanion<Player> {
  final Value<int> id;
  final Value<int> playerTemplateId;
  final Value<int> gameSessionId;
  final Value<String> imagePath;
  final Value<String> name;
  final Value<String> description;
  final Value<String> colorCode;
  final Value<int> level;
  final Value<int> curHp;
  final Value<int> maxHp;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const PlayersCompanion({
    this.id = const Value.absent(),
    this.playerTemplateId = const Value.absent(),
    this.gameSessionId = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.colorCode = const Value.absent(),
    this.level = const Value.absent(),
    this.curHp = const Value.absent(),
    this.maxHp = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PlayersCompanion.insert({
    this.id = const Value.absent(),
    @required int playerTemplateId,
    @required int gameSessionId,
    @required String imagePath,
    @required String name,
    this.description = const Value.absent(),
    @required String colorCode,
    @required int level,
    @required int curHp,
    @required int maxHp,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : playerTemplateId = Value(playerTemplateId),
        gameSessionId = Value(gameSessionId),
        imagePath = Value(imagePath),
        name = Value(name),
        colorCode = Value(colorCode),
        level = Value(level),
        curHp = Value(curHp),
        maxHp = Value(maxHp),
        createdAt = Value(createdAt);
  static Insertable<Player> custom({
    Expression<int> id,
    Expression<int> playerTemplateId,
    Expression<int> gameSessionId,
    Expression<String> imagePath,
    Expression<String> name,
    Expression<String> description,
    Expression<String> colorCode,
    Expression<int> level,
    Expression<int> curHp,
    Expression<int> maxHp,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (playerTemplateId != null) 'player_template_id': playerTemplateId,
      if (gameSessionId != null) 'game_session_id': gameSessionId,
      if (imagePath != null) 'image_path': imagePath,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (colorCode != null) 'color_code': colorCode,
      if (level != null) 'level': level,
      if (curHp != null) 'cur_hp': curHp,
      if (maxHp != null) 'max_hp': maxHp,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PlayersCompanion copyWith(
      {Value<int> id,
      Value<int> playerTemplateId,
      Value<int> gameSessionId,
      Value<String> imagePath,
      Value<String> name,
      Value<String> description,
      Value<String> colorCode,
      Value<int> level,
      Value<int> curHp,
      Value<int> maxHp,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return PlayersCompanion(
      id: id ?? this.id,
      playerTemplateId: playerTemplateId ?? this.playerTemplateId,
      gameSessionId: gameSessionId ?? this.gameSessionId,
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      description: description ?? this.description,
      colorCode: colorCode ?? this.colorCode,
      level: level ?? this.level,
      curHp: curHp ?? this.curHp,
      maxHp: maxHp ?? this.maxHp,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (playerTemplateId.present) {
      map['player_template_id'] = Variable<int>(playerTemplateId.value);
    }
    if (gameSessionId.present) {
      map['game_session_id'] = Variable<int>(gameSessionId.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (colorCode.present) {
      map['color_code'] = Variable<String>(colorCode.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (curHp.present) {
      map['cur_hp'] = Variable<int>(curHp.value);
    }
    if (maxHp.present) {
      map['max_hp'] = Variable<int>(maxHp.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlayersCompanion(')
          ..write('id: $id, ')
          ..write('playerTemplateId: $playerTemplateId, ')
          ..write('gameSessionId: $gameSessionId, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('colorCode: $colorCode, ')
          ..write('level: $level, ')
          ..write('curHp: $curHp, ')
          ..write('maxHp: $maxHp, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $PlayersTable extends Players with TableInfo<$PlayersTable, Player> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlayersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _playerTemplateIdMeta =
      const VerificationMeta('playerTemplateId');
  GeneratedIntColumn _playerTemplateId;
  @override
  GeneratedIntColumn get playerTemplateId =>
      _playerTemplateId ??= _constructPlayerTemplateId();
  GeneratedIntColumn _constructPlayerTemplateId() {
    return GeneratedIntColumn(
      'player_template_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _gameSessionIdMeta =
      const VerificationMeta('gameSessionId');
  GeneratedIntColumn _gameSessionId;
  @override
  GeneratedIntColumn get gameSessionId =>
      _gameSessionId ??= _constructGameSessionId();
  GeneratedIntColumn _constructGameSessionId() {
    return GeneratedIntColumn(
      'game_session_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  GeneratedTextColumn _imagePath;
  @override
  GeneratedTextColumn get imagePath => _imagePath ??= _constructImagePath();
  GeneratedTextColumn _constructImagePath() {
    return GeneratedTextColumn(
      'image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _colorCodeMeta = const VerificationMeta('colorCode');
  GeneratedTextColumn _colorCode;
  @override
  GeneratedTextColumn get colorCode => _colorCode ??= _constructColorCode();
  GeneratedTextColumn _constructColorCode() {
    return GeneratedTextColumn(
      'color_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _levelMeta = const VerificationMeta('level');
  GeneratedIntColumn _level;
  @override
  GeneratedIntColumn get level => _level ??= _constructLevel();
  GeneratedIntColumn _constructLevel() {
    return GeneratedIntColumn(
      'level',
      $tableName,
      false,
    );
  }

  final VerificationMeta _curHpMeta = const VerificationMeta('curHp');
  GeneratedIntColumn _curHp;
  @override
  GeneratedIntColumn get curHp => _curHp ??= _constructCurHp();
  GeneratedIntColumn _constructCurHp() {
    return GeneratedIntColumn(
      'cur_hp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _maxHpMeta = const VerificationMeta('maxHp');
  GeneratedIntColumn _maxHp;
  @override
  GeneratedIntColumn get maxHp => _maxHp ??= _constructMaxHp();
  GeneratedIntColumn _constructMaxHp() {
    return GeneratedIntColumn(
      'max_hp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        playerTemplateId,
        gameSessionId,
        imagePath,
        name,
        description,
        colorCode,
        level,
        curHp,
        maxHp,
        createdAt,
        updatedAt
      ];
  @override
  $PlayersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'players';
  @override
  final String actualTableName = 'players';
  @override
  VerificationContext validateIntegrity(Insertable<Player> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('player_template_id')) {
      context.handle(
          _playerTemplateIdMeta,
          playerTemplateId.isAcceptableOrUnknown(
              data['player_template_id'], _playerTemplateIdMeta));
    } else if (isInserting) {
      context.missing(_playerTemplateIdMeta);
    }
    if (data.containsKey('game_session_id')) {
      context.handle(
          _gameSessionIdMeta,
          gameSessionId.isAcceptableOrUnknown(
              data['game_session_id'], _gameSessionIdMeta));
    } else if (isInserting) {
      context.missing(_gameSessionIdMeta);
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path'], _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('color_code')) {
      context.handle(_colorCodeMeta,
          colorCode.isAcceptableOrUnknown(data['color_code'], _colorCodeMeta));
    } else if (isInserting) {
      context.missing(_colorCodeMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level'], _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('cur_hp')) {
      context.handle(
          _curHpMeta, curHp.isAcceptableOrUnknown(data['cur_hp'], _curHpMeta));
    } else if (isInserting) {
      context.missing(_curHpMeta);
    }
    if (data.containsKey('max_hp')) {
      context.handle(
          _maxHpMeta, maxHp.isAcceptableOrUnknown(data['max_hp'], _maxHpMeta));
    } else if (isInserting) {
      context.missing(_maxHpMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Player map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Player.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlayersTable createAlias(String alias) {
    return $PlayersTable(_db, alias);
  }
}

class PlayerStatusImpairment extends DataClass
    implements Insertable<PlayerStatusImpairment> {
  final int id;
  final int playerId;
  final int statusImpairmentId;
  final DateTime createdAt;
  final DateTime updatedAt;
  PlayerStatusImpairment(
      {@required this.id,
      @required this.playerId,
      @required this.statusImpairmentId,
      @required this.createdAt,
      this.updatedAt});
  factory PlayerStatusImpairment.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PlayerStatusImpairment(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      playerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}player_id']),
      statusImpairmentId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}status_impairment_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || playerId != null) {
      map['player_id'] = Variable<int>(playerId);
    }
    if (!nullToAbsent || statusImpairmentId != null) {
      map['status_impairment_id'] = Variable<int>(statusImpairmentId);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  PlayerStatusImpairmentsCompanion toCompanion(bool nullToAbsent) {
    return PlayerStatusImpairmentsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      playerId: playerId == null && nullToAbsent
          ? const Value.absent()
          : Value(playerId),
      statusImpairmentId: statusImpairmentId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusImpairmentId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory PlayerStatusImpairment.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlayerStatusImpairment(
      id: serializer.fromJson<int>(json['id']),
      playerId: serializer.fromJson<int>(json['playerId']),
      statusImpairmentId: serializer.fromJson<int>(json['statusImpairmentId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'playerId': serializer.toJson<int>(playerId),
      'statusImpairmentId': serializer.toJson<int>(statusImpairmentId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PlayerStatusImpairment copyWith(
          {int id,
          int playerId,
          int statusImpairmentId,
          DateTime createdAt,
          DateTime updatedAt}) =>
      PlayerStatusImpairment(
        id: id ?? this.id,
        playerId: playerId ?? this.playerId,
        statusImpairmentId: statusImpairmentId ?? this.statusImpairmentId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PlayerStatusImpairment(')
          ..write('id: $id, ')
          ..write('playerId: $playerId, ')
          ..write('statusImpairmentId: $statusImpairmentId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          playerId.hashCode,
          $mrjc(statusImpairmentId.hashCode,
              $mrjc(createdAt.hashCode, updatedAt.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlayerStatusImpairment &&
          other.id == this.id &&
          other.playerId == this.playerId &&
          other.statusImpairmentId == this.statusImpairmentId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PlayerStatusImpairmentsCompanion
    extends UpdateCompanion<PlayerStatusImpairment> {
  final Value<int> id;
  final Value<int> playerId;
  final Value<int> statusImpairmentId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const PlayerStatusImpairmentsCompanion({
    this.id = const Value.absent(),
    this.playerId = const Value.absent(),
    this.statusImpairmentId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PlayerStatusImpairmentsCompanion.insert({
    this.id = const Value.absent(),
    @required int playerId,
    @required int statusImpairmentId,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : playerId = Value(playerId),
        statusImpairmentId = Value(statusImpairmentId),
        createdAt = Value(createdAt);
  static Insertable<PlayerStatusImpairment> custom({
    Expression<int> id,
    Expression<int> playerId,
    Expression<int> statusImpairmentId,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (playerId != null) 'player_id': playerId,
      if (statusImpairmentId != null)
        'status_impairment_id': statusImpairmentId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PlayerStatusImpairmentsCompanion copyWith(
      {Value<int> id,
      Value<int> playerId,
      Value<int> statusImpairmentId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return PlayerStatusImpairmentsCompanion(
      id: id ?? this.id,
      playerId: playerId ?? this.playerId,
      statusImpairmentId: statusImpairmentId ?? this.statusImpairmentId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (playerId.present) {
      map['player_id'] = Variable<int>(playerId.value);
    }
    if (statusImpairmentId.present) {
      map['status_impairment_id'] = Variable<int>(statusImpairmentId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlayerStatusImpairmentsCompanion(')
          ..write('id: $id, ')
          ..write('playerId: $playerId, ')
          ..write('statusImpairmentId: $statusImpairmentId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $PlayerStatusImpairmentsTable extends PlayerStatusImpairments
    with TableInfo<$PlayerStatusImpairmentsTable, PlayerStatusImpairment> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlayerStatusImpairmentsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _playerIdMeta = const VerificationMeta('playerId');
  GeneratedIntColumn _playerId;
  @override
  GeneratedIntColumn get playerId => _playerId ??= _constructPlayerId();
  GeneratedIntColumn _constructPlayerId() {
    return GeneratedIntColumn(
      'player_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusImpairmentIdMeta =
      const VerificationMeta('statusImpairmentId');
  GeneratedIntColumn _statusImpairmentId;
  @override
  GeneratedIntColumn get statusImpairmentId =>
      _statusImpairmentId ??= _constructStatusImpairmentId();
  GeneratedIntColumn _constructStatusImpairmentId() {
    return GeneratedIntColumn(
      'status_impairment_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, playerId, statusImpairmentId, createdAt, updatedAt];
  @override
  $PlayerStatusImpairmentsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'player_status_impairments';
  @override
  final String actualTableName = 'player_status_impairments';
  @override
  VerificationContext validateIntegrity(
      Insertable<PlayerStatusImpairment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('player_id')) {
      context.handle(_playerIdMeta,
          playerId.isAcceptableOrUnknown(data['player_id'], _playerIdMeta));
    } else if (isInserting) {
      context.missing(_playerIdMeta);
    }
    if (data.containsKey('status_impairment_id')) {
      context.handle(
          _statusImpairmentIdMeta,
          statusImpairmentId.isAcceptableOrUnknown(
              data['status_impairment_id'], _statusImpairmentIdMeta));
    } else if (isInserting) {
      context.missing(_statusImpairmentIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlayerStatusImpairment map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlayerStatusImpairment.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlayerStatusImpairmentsTable createAlias(String alias) {
    return $PlayerStatusImpairmentsTable(_db, alias);
  }
}

class PlayerTemplate extends DataClass implements Insertable<PlayerTemplate> {
  final int id;
  final String imagePath;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  PlayerTemplate(
      {@required this.id,
      @required this.imagePath,
      @required this.name,
      this.description,
      @required this.createdAt,
      this.updatedAt});
  factory PlayerTemplate.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PlayerTemplate(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      imagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  PlayerTemplatesCompanion toCompanion(bool nullToAbsent) {
    return PlayerTemplatesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory PlayerTemplate.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PlayerTemplate(
      id: serializer.fromJson<int>(json['id']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'imagePath': serializer.toJson<String>(imagePath),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  PlayerTemplate copyWith(
          {int id,
          String imagePath,
          String name,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      PlayerTemplate(
        id: id ?? this.id,
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PlayerTemplate(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          imagePath.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(description.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is PlayerTemplate &&
          other.id == this.id &&
          other.imagePath == this.imagePath &&
          other.name == this.name &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class PlayerTemplatesCompanion extends UpdateCompanion<PlayerTemplate> {
  final Value<int> id;
  final Value<String> imagePath;
  final Value<String> name;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const PlayerTemplatesCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  PlayerTemplatesCompanion.insert({
    this.id = const Value.absent(),
    @required String imagePath,
    @required String name,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : imagePath = Value(imagePath),
        name = Value(name),
        createdAt = Value(createdAt);
  static Insertable<PlayerTemplate> custom({
    Expression<int> id,
    Expression<String> imagePath,
    Expression<String> name,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imagePath != null) 'image_path': imagePath,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  PlayerTemplatesCompanion copyWith(
      {Value<int> id,
      Value<String> imagePath,
      Value<String> name,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return PlayerTemplatesCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PlayerTemplatesCompanion(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $PlayerTemplatesTable extends PlayerTemplates
    with TableInfo<$PlayerTemplatesTable, PlayerTemplate> {
  final GeneratedDatabase _db;
  final String _alias;
  $PlayerTemplatesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  GeneratedTextColumn _imagePath;
  @override
  GeneratedTextColumn get imagePath => _imagePath ??= _constructImagePath();
  GeneratedTextColumn _constructImagePath() {
    return GeneratedTextColumn(
      'image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, imagePath, name, description, createdAt, updatedAt];
  @override
  $PlayerTemplatesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'player_templates';
  @override
  final String actualTableName = 'player_templates';
  @override
  VerificationContext validateIntegrity(Insertable<PlayerTemplate> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path'], _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PlayerTemplate map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PlayerTemplate.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PlayerTemplatesTable createAlias(String alias) {
    return $PlayerTemplatesTable(_db, alias);
  }
}

class Scenario extends DataClass implements Insertable<Scenario> {
  final int id;
  final int storyId;
  final String introImagePath;
  final String setupImagePath;
  final String title;
  final String description;
  final String config;
  final DateTime createdAt;
  final DateTime updatedAt;
  Scenario(
      {@required this.id,
      @required this.storyId,
      @required this.introImagePath,
      @required this.setupImagePath,
      @required this.title,
      this.description,
      @required this.config,
      @required this.createdAt,
      this.updatedAt});
  factory Scenario.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Scenario(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      storyId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}story_id']),
      introImagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}intro_image_path']),
      setupImagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}setup_image_path']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      config:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}config']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || storyId != null) {
      map['story_id'] = Variable<int>(storyId);
    }
    if (!nullToAbsent || introImagePath != null) {
      map['intro_image_path'] = Variable<String>(introImagePath);
    }
    if (!nullToAbsent || setupImagePath != null) {
      map['setup_image_path'] = Variable<String>(setupImagePath);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || config != null) {
      map['config'] = Variable<String>(config);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  ScenariosCompanion toCompanion(bool nullToAbsent) {
    return ScenariosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      storyId: storyId == null && nullToAbsent
          ? const Value.absent()
          : Value(storyId),
      introImagePath: introImagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(introImagePath),
      setupImagePath: setupImagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(setupImagePath),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      config:
          config == null && nullToAbsent ? const Value.absent() : Value(config),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Scenario.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Scenario(
      id: serializer.fromJson<int>(json['id']),
      storyId: serializer.fromJson<int>(json['storyId']),
      introImagePath: serializer.fromJson<String>(json['introImagePath']),
      setupImagePath: serializer.fromJson<String>(json['setupImagePath']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      config: serializer.fromJson<String>(json['config']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'storyId': serializer.toJson<int>(storyId),
      'introImagePath': serializer.toJson<String>(introImagePath),
      'setupImagePath': serializer.toJson<String>(setupImagePath),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'config': serializer.toJson<String>(config),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Scenario copyWith(
          {int id,
          int storyId,
          String introImagePath,
          String setupImagePath,
          String title,
          String description,
          String config,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Scenario(
        id: id ?? this.id,
        storyId: storyId ?? this.storyId,
        introImagePath: introImagePath ?? this.introImagePath,
        setupImagePath: setupImagePath ?? this.setupImagePath,
        title: title ?? this.title,
        description: description ?? this.description,
        config: config ?? this.config,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Scenario(')
          ..write('id: $id, ')
          ..write('storyId: $storyId, ')
          ..write('introImagePath: $introImagePath, ')
          ..write('setupImagePath: $setupImagePath, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('config: $config, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          storyId.hashCode,
          $mrjc(
              introImagePath.hashCode,
              $mrjc(
                  setupImagePath.hashCode,
                  $mrjc(
                      title.hashCode,
                      $mrjc(
                          description.hashCode,
                          $mrjc(
                              config.hashCode,
                              $mrjc(createdAt.hashCode,
                                  updatedAt.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Scenario &&
          other.id == this.id &&
          other.storyId == this.storyId &&
          other.introImagePath == this.introImagePath &&
          other.setupImagePath == this.setupImagePath &&
          other.title == this.title &&
          other.description == this.description &&
          other.config == this.config &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ScenariosCompanion extends UpdateCompanion<Scenario> {
  final Value<int> id;
  final Value<int> storyId;
  final Value<String> introImagePath;
  final Value<String> setupImagePath;
  final Value<String> title;
  final Value<String> description;
  final Value<String> config;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const ScenariosCompanion({
    this.id = const Value.absent(),
    this.storyId = const Value.absent(),
    this.introImagePath = const Value.absent(),
    this.setupImagePath = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.config = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ScenariosCompanion.insert({
    this.id = const Value.absent(),
    @required int storyId,
    @required String introImagePath,
    @required String setupImagePath,
    @required String title,
    this.description = const Value.absent(),
    @required String config,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : storyId = Value(storyId),
        introImagePath = Value(introImagePath),
        setupImagePath = Value(setupImagePath),
        title = Value(title),
        config = Value(config),
        createdAt = Value(createdAt);
  static Insertable<Scenario> custom({
    Expression<int> id,
    Expression<int> storyId,
    Expression<String> introImagePath,
    Expression<String> setupImagePath,
    Expression<String> title,
    Expression<String> description,
    Expression<String> config,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (storyId != null) 'story_id': storyId,
      if (introImagePath != null) 'intro_image_path': introImagePath,
      if (setupImagePath != null) 'setup_image_path': setupImagePath,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (config != null) 'config': config,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ScenariosCompanion copyWith(
      {Value<int> id,
      Value<int> storyId,
      Value<String> introImagePath,
      Value<String> setupImagePath,
      Value<String> title,
      Value<String> description,
      Value<String> config,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return ScenariosCompanion(
      id: id ?? this.id,
      storyId: storyId ?? this.storyId,
      introImagePath: introImagePath ?? this.introImagePath,
      setupImagePath: setupImagePath ?? this.setupImagePath,
      title: title ?? this.title,
      description: description ?? this.description,
      config: config ?? this.config,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (storyId.present) {
      map['story_id'] = Variable<int>(storyId.value);
    }
    if (introImagePath.present) {
      map['intro_image_path'] = Variable<String>(introImagePath.value);
    }
    if (setupImagePath.present) {
      map['setup_image_path'] = Variable<String>(setupImagePath.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (config.present) {
      map['config'] = Variable<String>(config.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScenariosCompanion(')
          ..write('id: $id, ')
          ..write('storyId: $storyId, ')
          ..write('introImagePath: $introImagePath, ')
          ..write('setupImagePath: $setupImagePath, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('config: $config, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ScenariosTable extends Scenarios
    with TableInfo<$ScenariosTable, Scenario> {
  final GeneratedDatabase _db;
  final String _alias;
  $ScenariosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _storyIdMeta = const VerificationMeta('storyId');
  GeneratedIntColumn _storyId;
  @override
  GeneratedIntColumn get storyId => _storyId ??= _constructStoryId();
  GeneratedIntColumn _constructStoryId() {
    return GeneratedIntColumn(
      'story_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _introImagePathMeta =
      const VerificationMeta('introImagePath');
  GeneratedTextColumn _introImagePath;
  @override
  GeneratedTextColumn get introImagePath =>
      _introImagePath ??= _constructIntroImagePath();
  GeneratedTextColumn _constructIntroImagePath() {
    return GeneratedTextColumn(
      'intro_image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _setupImagePathMeta =
      const VerificationMeta('setupImagePath');
  GeneratedTextColumn _setupImagePath;
  @override
  GeneratedTextColumn get setupImagePath =>
      _setupImagePath ??= _constructSetupImagePath();
  GeneratedTextColumn _constructSetupImagePath() {
    return GeneratedTextColumn(
      'setup_image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _configMeta = const VerificationMeta('config');
  GeneratedTextColumn _config;
  @override
  GeneratedTextColumn get config => _config ??= _constructConfig();
  GeneratedTextColumn _constructConfig() {
    return GeneratedTextColumn(
      'config',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        storyId,
        introImagePath,
        setupImagePath,
        title,
        description,
        config,
        createdAt,
        updatedAt
      ];
  @override
  $ScenariosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'scenarios';
  @override
  final String actualTableName = 'scenarios';
  @override
  VerificationContext validateIntegrity(Insertable<Scenario> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('story_id')) {
      context.handle(_storyIdMeta,
          storyId.isAcceptableOrUnknown(data['story_id'], _storyIdMeta));
    } else if (isInserting) {
      context.missing(_storyIdMeta);
    }
    if (data.containsKey('intro_image_path')) {
      context.handle(
          _introImagePathMeta,
          introImagePath.isAcceptableOrUnknown(
              data['intro_image_path'], _introImagePathMeta));
    } else if (isInserting) {
      context.missing(_introImagePathMeta);
    }
    if (data.containsKey('setup_image_path')) {
      context.handle(
          _setupImagePathMeta,
          setupImagePath.isAcceptableOrUnknown(
              data['setup_image_path'], _setupImagePathMeta));
    } else if (isInserting) {
      context.missing(_setupImagePathMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('config')) {
      context.handle(_configMeta,
          config.isAcceptableOrUnknown(data['config'], _configMeta));
    } else if (isInserting) {
      context.missing(_configMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Scenario map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Scenario.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ScenariosTable createAlias(String alias) {
    return $ScenariosTable(_db, alias);
  }
}

class StatBar extends DataClass implements Insertable<StatBar> {
  final int id;
  final int level;
  final int xp;
  final int hp;
  final String config;
  final DateTime createdAt;
  final DateTime updatedAt;
  StatBar(
      {@required this.id,
      @required this.level,
      @required this.xp,
      @required this.hp,
      @required this.config,
      @required this.createdAt,
      this.updatedAt});
  factory StatBar.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return StatBar(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      level: intType.mapFromDatabaseResponse(data['${effectivePrefix}level']),
      xp: intType.mapFromDatabaseResponse(data['${effectivePrefix}xp']),
      hp: intType.mapFromDatabaseResponse(data['${effectivePrefix}hp']),
      config:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}config']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || level != null) {
      map['level'] = Variable<int>(level);
    }
    if (!nullToAbsent || xp != null) {
      map['xp'] = Variable<int>(xp);
    }
    if (!nullToAbsent || hp != null) {
      map['hp'] = Variable<int>(hp);
    }
    if (!nullToAbsent || config != null) {
      map['config'] = Variable<String>(config);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  StatBarsCompanion toCompanion(bool nullToAbsent) {
    return StatBarsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      level:
          level == null && nullToAbsent ? const Value.absent() : Value(level),
      xp: xp == null && nullToAbsent ? const Value.absent() : Value(xp),
      hp: hp == null && nullToAbsent ? const Value.absent() : Value(hp),
      config:
          config == null && nullToAbsent ? const Value.absent() : Value(config),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory StatBar.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return StatBar(
      id: serializer.fromJson<int>(json['id']),
      level: serializer.fromJson<int>(json['level']),
      xp: serializer.fromJson<int>(json['xp']),
      hp: serializer.fromJson<int>(json['hp']),
      config: serializer.fromJson<String>(json['config']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'level': serializer.toJson<int>(level),
      'xp': serializer.toJson<int>(xp),
      'hp': serializer.toJson<int>(hp),
      'config': serializer.toJson<String>(config),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  StatBar copyWith(
          {int id,
          int level,
          int xp,
          int hp,
          String config,
          DateTime createdAt,
          DateTime updatedAt}) =>
      StatBar(
        id: id ?? this.id,
        level: level ?? this.level,
        xp: xp ?? this.xp,
        hp: hp ?? this.hp,
        config: config ?? this.config,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('StatBar(')
          ..write('id: $id, ')
          ..write('level: $level, ')
          ..write('xp: $xp, ')
          ..write('hp: $hp, ')
          ..write('config: $config, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          level.hashCode,
          $mrjc(
              xp.hashCode,
              $mrjc(
                  hp.hashCode,
                  $mrjc(config.hashCode,
                      $mrjc(createdAt.hashCode, updatedAt.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is StatBar &&
          other.id == this.id &&
          other.level == this.level &&
          other.xp == this.xp &&
          other.hp == this.hp &&
          other.config == this.config &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class StatBarsCompanion extends UpdateCompanion<StatBar> {
  final Value<int> id;
  final Value<int> level;
  final Value<int> xp;
  final Value<int> hp;
  final Value<String> config;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const StatBarsCompanion({
    this.id = const Value.absent(),
    this.level = const Value.absent(),
    this.xp = const Value.absent(),
    this.hp = const Value.absent(),
    this.config = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  StatBarsCompanion.insert({
    this.id = const Value.absent(),
    @required int level,
    @required int xp,
    @required int hp,
    @required String config,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : level = Value(level),
        xp = Value(xp),
        hp = Value(hp),
        config = Value(config),
        createdAt = Value(createdAt);
  static Insertable<StatBar> custom({
    Expression<int> id,
    Expression<int> level,
    Expression<int> xp,
    Expression<int> hp,
    Expression<String> config,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (level != null) 'level': level,
      if (xp != null) 'xp': xp,
      if (hp != null) 'hp': hp,
      if (config != null) 'config': config,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  StatBarsCompanion copyWith(
      {Value<int> id,
      Value<int> level,
      Value<int> xp,
      Value<int> hp,
      Value<String> config,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return StatBarsCompanion(
      id: id ?? this.id,
      level: level ?? this.level,
      xp: xp ?? this.xp,
      hp: hp ?? this.hp,
      config: config ?? this.config,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (xp.present) {
      map['xp'] = Variable<int>(xp.value);
    }
    if (hp.present) {
      map['hp'] = Variable<int>(hp.value);
    }
    if (config.present) {
      map['config'] = Variable<String>(config.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StatBarsCompanion(')
          ..write('id: $id, ')
          ..write('level: $level, ')
          ..write('xp: $xp, ')
          ..write('hp: $hp, ')
          ..write('config: $config, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $StatBarsTable extends StatBars with TableInfo<$StatBarsTable, StatBar> {
  final GeneratedDatabase _db;
  final String _alias;
  $StatBarsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _levelMeta = const VerificationMeta('level');
  GeneratedIntColumn _level;
  @override
  GeneratedIntColumn get level => _level ??= _constructLevel();
  GeneratedIntColumn _constructLevel() {
    return GeneratedIntColumn(
      'level',
      $tableName,
      false,
    );
  }

  final VerificationMeta _xpMeta = const VerificationMeta('xp');
  GeneratedIntColumn _xp;
  @override
  GeneratedIntColumn get xp => _xp ??= _constructXp();
  GeneratedIntColumn _constructXp() {
    return GeneratedIntColumn(
      'xp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _hpMeta = const VerificationMeta('hp');
  GeneratedIntColumn _hp;
  @override
  GeneratedIntColumn get hp => _hp ??= _constructHp();
  GeneratedIntColumn _constructHp() {
    return GeneratedIntColumn(
      'hp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _configMeta = const VerificationMeta('config');
  GeneratedTextColumn _config;
  @override
  GeneratedTextColumn get config => _config ??= _constructConfig();
  GeneratedTextColumn _constructConfig() {
    return GeneratedTextColumn(
      'config',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, level, xp, hp, config, createdAt, updatedAt];
  @override
  $StatBarsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'stat_bars';
  @override
  final String actualTableName = 'stat_bars';
  @override
  VerificationContext validateIntegrity(Insertable<StatBar> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('level')) {
      context.handle(
          _levelMeta, level.isAcceptableOrUnknown(data['level'], _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('xp')) {
      context.handle(_xpMeta, xp.isAcceptableOrUnknown(data['xp'], _xpMeta));
    } else if (isInserting) {
      context.missing(_xpMeta);
    }
    if (data.containsKey('hp')) {
      context.handle(_hpMeta, hp.isAcceptableOrUnknown(data['hp'], _hpMeta));
    } else if (isInserting) {
      context.missing(_hpMeta);
    }
    if (data.containsKey('config')) {
      context.handle(_configMeta,
          config.isAcceptableOrUnknown(data['config'], _configMeta));
    } else if (isInserting) {
      context.missing(_configMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StatBar map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return StatBar.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $StatBarsTable createAlias(String alias) {
    return $StatBarsTable(_db, alias);
  }
}

class StatusImpairment extends DataClass
    implements Insertable<StatusImpairment> {
  final int id;
  final String imagePath;
  final String name;
  final String description;
  final int value;
  final DateTime createdAt;
  final DateTime updatedAt;
  StatusImpairment(
      {@required this.id,
      @required this.imagePath,
      @required this.name,
      this.description,
      @required this.value,
      @required this.createdAt,
      this.updatedAt});
  factory StatusImpairment.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return StatusImpairment(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      imagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      value: intType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<int>(value);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  StatusImpairmentsCompanion toCompanion(bool nullToAbsent) {
    return StatusImpairmentsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory StatusImpairment.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return StatusImpairment(
      id: serializer.fromJson<int>(json['id']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      value: serializer.fromJson<int>(json['value']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'imagePath': serializer.toJson<String>(imagePath),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'value': serializer.toJson<int>(value),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  StatusImpairment copyWith(
          {int id,
          String imagePath,
          String name,
          String description,
          int value,
          DateTime createdAt,
          DateTime updatedAt}) =>
      StatusImpairment(
        id: id ?? this.id,
        imagePath: imagePath ?? this.imagePath,
        name: name ?? this.name,
        description: description ?? this.description,
        value: value ?? this.value,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('StatusImpairment(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('value: $value, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          imagePath.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  description.hashCode,
                  $mrjc(value.hashCode,
                      $mrjc(createdAt.hashCode, updatedAt.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is StatusImpairment &&
          other.id == this.id &&
          other.imagePath == this.imagePath &&
          other.name == this.name &&
          other.description == this.description &&
          other.value == this.value &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class StatusImpairmentsCompanion extends UpdateCompanion<StatusImpairment> {
  final Value<int> id;
  final Value<String> imagePath;
  final Value<String> name;
  final Value<String> description;
  final Value<int> value;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const StatusImpairmentsCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.value = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  StatusImpairmentsCompanion.insert({
    this.id = const Value.absent(),
    @required String imagePath,
    @required String name,
    this.description = const Value.absent(),
    @required int value,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : imagePath = Value(imagePath),
        name = Value(name),
        value = Value(value),
        createdAt = Value(createdAt);
  static Insertable<StatusImpairment> custom({
    Expression<int> id,
    Expression<String> imagePath,
    Expression<String> name,
    Expression<String> description,
    Expression<int> value,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imagePath != null) 'image_path': imagePath,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (value != null) 'value': value,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  StatusImpairmentsCompanion copyWith(
      {Value<int> id,
      Value<String> imagePath,
      Value<String> name,
      Value<String> description,
      Value<int> value,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return StatusImpairmentsCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      name: name ?? this.name,
      description: description ?? this.description,
      value: value ?? this.value,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StatusImpairmentsCompanion(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('value: $value, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $StatusImpairmentsTable extends StatusImpairments
    with TableInfo<$StatusImpairmentsTable, StatusImpairment> {
  final GeneratedDatabase _db;
  final String _alias;
  $StatusImpairmentsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  GeneratedTextColumn _imagePath;
  @override
  GeneratedTextColumn get imagePath => _imagePath ??= _constructImagePath();
  GeneratedTextColumn _constructImagePath() {
    return GeneratedTextColumn(
      'image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedIntColumn _value;
  @override
  GeneratedIntColumn get value => _value ??= _constructValue();
  GeneratedIntColumn _constructValue() {
    return GeneratedIntColumn(
      'value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, imagePath, name, description, value, createdAt, updatedAt];
  @override
  $StatusImpairmentsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'status_impairments';
  @override
  final String actualTableName = 'status_impairments';
  @override
  VerificationContext validateIntegrity(Insertable<StatusImpairment> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path'], _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StatusImpairment map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return StatusImpairment.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $StatusImpairmentsTable createAlias(String alias) {
    return $StatusImpairmentsTable(_db, alias);
  }
}

class Story extends DataClass implements Insertable<Story> {
  final int id;
  final String imagePath;
  final String title;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
  Story(
      {@required this.id,
      @required this.imagePath,
      @required this.title,
      this.description,
      @required this.createdAt,
      this.updatedAt});
  factory Story.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Story(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      imagePath: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_path']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  StoriesCompanion toCompanion(bool nullToAbsent) {
    return StoriesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Story.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Story(
      id: serializer.fromJson<int>(json['id']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'imagePath': serializer.toJson<String>(imagePath),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Story copyWith(
          {int id,
          String imagePath,
          String title,
          String description,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Story(
        id: id ?? this.id,
        imagePath: imagePath ?? this.imagePath,
        title: title ?? this.title,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Story(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          imagePath.hashCode,
          $mrjc(
              title.hashCode,
              $mrjc(description.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Story &&
          other.id == this.id &&
          other.imagePath == this.imagePath &&
          other.title == this.title &&
          other.description == this.description &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class StoriesCompanion extends UpdateCompanion<Story> {
  final Value<int> id;
  final Value<String> imagePath;
  final Value<String> title;
  final Value<String> description;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const StoriesCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  StoriesCompanion.insert({
    this.id = const Value.absent(),
    @required String imagePath,
    @required String title,
    this.description = const Value.absent(),
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : imagePath = Value(imagePath),
        title = Value(title),
        createdAt = Value(createdAt);
  static Insertable<Story> custom({
    Expression<int> id,
    Expression<String> imagePath,
    Expression<String> title,
    Expression<String> description,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imagePath != null) 'image_path': imagePath,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  StoriesCompanion copyWith(
      {Value<int> id,
      Value<String> imagePath,
      Value<String> title,
      Value<String> description,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return StoriesCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoriesCompanion(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $StoriesTable extends Stories with TableInfo<$StoriesTable, Story> {
  final GeneratedDatabase _db;
  final String _alias;
  $StoriesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _imagePathMeta = const VerificationMeta('imagePath');
  GeneratedTextColumn _imagePath;
  @override
  GeneratedTextColumn get imagePath => _imagePath ??= _constructImagePath();
  GeneratedTextColumn _constructImagePath() {
    return GeneratedTextColumn(
      'image_path',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, imagePath, title, description, createdAt, updatedAt];
  @override
  $StoriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'stories';
  @override
  final String actualTableName = 'stories';
  @override
  VerificationContext validateIntegrity(Insertable<Story> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path'], _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Story map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Story.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $StoriesTable createAlias(String alias) {
    return $StoriesTable(_db, alias);
  }
}

class Worker extends DataClass implements Insertable<Worker> {
  final int id;
  final int playerId;
  final int no;
  final String colorCode;
  final DateTime createdAt;
  final DateTime updatedAt;
  Worker(
      {@required this.id,
      @required this.playerId,
      @required this.no,
      @required this.colorCode,
      @required this.createdAt,
      this.updatedAt});
  factory Worker.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Worker(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      playerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}player_id']),
      no: intType.mapFromDatabaseResponse(data['${effectivePrefix}no']),
      colorCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}color_code']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || playerId != null) {
      map['player_id'] = Variable<int>(playerId);
    }
    if (!nullToAbsent || no != null) {
      map['no'] = Variable<int>(no);
    }
    if (!nullToAbsent || colorCode != null) {
      map['color_code'] = Variable<String>(colorCode);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  WorkersCompanion toCompanion(bool nullToAbsent) {
    return WorkersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      playerId: playerId == null && nullToAbsent
          ? const Value.absent()
          : Value(playerId),
      no: no == null && nullToAbsent ? const Value.absent() : Value(no),
      colorCode: colorCode == null && nullToAbsent
          ? const Value.absent()
          : Value(colorCode),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Worker.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Worker(
      id: serializer.fromJson<int>(json['id']),
      playerId: serializer.fromJson<int>(json['playerId']),
      no: serializer.fromJson<int>(json['no']),
      colorCode: serializer.fromJson<String>(json['colorCode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'playerId': serializer.toJson<int>(playerId),
      'no': serializer.toJson<int>(no),
      'colorCode': serializer.toJson<String>(colorCode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Worker copyWith(
          {int id,
          int playerId,
          int no,
          String colorCode,
          DateTime createdAt,
          DateTime updatedAt}) =>
      Worker(
        id: id ?? this.id,
        playerId: playerId ?? this.playerId,
        no: no ?? this.no,
        colorCode: colorCode ?? this.colorCode,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Worker(')
          ..write('id: $id, ')
          ..write('playerId: $playerId, ')
          ..write('no: $no, ')
          ..write('colorCode: $colorCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          playerId.hashCode,
          $mrjc(
              no.hashCode,
              $mrjc(colorCode.hashCode,
                  $mrjc(createdAt.hashCode, updatedAt.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Worker &&
          other.id == this.id &&
          other.playerId == this.playerId &&
          other.no == this.no &&
          other.colorCode == this.colorCode &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class WorkersCompanion extends UpdateCompanion<Worker> {
  final Value<int> id;
  final Value<int> playerId;
  final Value<int> no;
  final Value<String> colorCode;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const WorkersCompanion({
    this.id = const Value.absent(),
    this.playerId = const Value.absent(),
    this.no = const Value.absent(),
    this.colorCode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  WorkersCompanion.insert({
    this.id = const Value.absent(),
    @required int playerId,
    @required int no,
    @required String colorCode,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : playerId = Value(playerId),
        no = Value(no),
        colorCode = Value(colorCode),
        createdAt = Value(createdAt);
  static Insertable<Worker> custom({
    Expression<int> id,
    Expression<int> playerId,
    Expression<int> no,
    Expression<String> colorCode,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (playerId != null) 'player_id': playerId,
      if (no != null) 'no': no,
      if (colorCode != null) 'color_code': colorCode,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  WorkersCompanion copyWith(
      {Value<int> id,
      Value<int> playerId,
      Value<int> no,
      Value<String> colorCode,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return WorkersCompanion(
      id: id ?? this.id,
      playerId: playerId ?? this.playerId,
      no: no ?? this.no,
      colorCode: colorCode ?? this.colorCode,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (playerId.present) {
      map['player_id'] = Variable<int>(playerId.value);
    }
    if (no.present) {
      map['no'] = Variable<int>(no.value);
    }
    if (colorCode.present) {
      map['color_code'] = Variable<String>(colorCode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkersCompanion(')
          ..write('id: $id, ')
          ..write('playerId: $playerId, ')
          ..write('no: $no, ')
          ..write('colorCode: $colorCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $WorkersTable extends Workers with TableInfo<$WorkersTable, Worker> {
  final GeneratedDatabase _db;
  final String _alias;
  $WorkersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _playerIdMeta = const VerificationMeta('playerId');
  GeneratedIntColumn _playerId;
  @override
  GeneratedIntColumn get playerId => _playerId ??= _constructPlayerId();
  GeneratedIntColumn _constructPlayerId() {
    return GeneratedIntColumn(
      'player_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _noMeta = const VerificationMeta('no');
  GeneratedIntColumn _no;
  @override
  GeneratedIntColumn get no => _no ??= _constructNo();
  GeneratedIntColumn _constructNo() {
    return GeneratedIntColumn(
      'no',
      $tableName,
      false,
    );
  }

  final VerificationMeta _colorCodeMeta = const VerificationMeta('colorCode');
  GeneratedTextColumn _colorCode;
  @override
  GeneratedTextColumn get colorCode => _colorCode ??= _constructColorCode();
  GeneratedTextColumn _constructColorCode() {
    return GeneratedTextColumn(
      'color_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, playerId, no, colorCode, createdAt, updatedAt];
  @override
  $WorkersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'workers';
  @override
  final String actualTableName = 'workers';
  @override
  VerificationContext validateIntegrity(Insertable<Worker> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('player_id')) {
      context.handle(_playerIdMeta,
          playerId.isAcceptableOrUnknown(data['player_id'], _playerIdMeta));
    } else if (isInserting) {
      context.missing(_playerIdMeta);
    }
    if (data.containsKey('no')) {
      context.handle(_noMeta, no.isAcceptableOrUnknown(data['no'], _noMeta));
    } else if (isInserting) {
      context.missing(_noMeta);
    }
    if (data.containsKey('color_code')) {
      context.handle(_colorCodeMeta,
          colorCode.isAcceptableOrUnknown(data['color_code'], _colorCodeMeta));
    } else if (isInserting) {
      context.missing(_colorCodeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Worker map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Worker.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WorkersTable createAlias(String alias) {
    return $WorkersTable(_db, alias);
  }
}

class WorkerItem extends DataClass implements Insertable<WorkerItem> {
  final int id;
  final int workerId;
  final int itemId;
  final DateTime createdAt;
  final DateTime updatedAt;
  WorkerItem(
      {@required this.id,
      @required this.workerId,
      @required this.itemId,
      @required this.createdAt,
      this.updatedAt});
  factory WorkerItem.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return WorkerItem(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      workerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}worker_id']),
      itemId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}item_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || workerId != null) {
      map['worker_id'] = Variable<int>(workerId);
    }
    if (!nullToAbsent || itemId != null) {
      map['item_id'] = Variable<int>(itemId);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  WorkerItemsCompanion toCompanion(bool nullToAbsent) {
    return WorkerItemsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      workerId: workerId == null && nullToAbsent
          ? const Value.absent()
          : Value(workerId),
      itemId:
          itemId == null && nullToAbsent ? const Value.absent() : Value(itemId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory WorkerItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return WorkerItem(
      id: serializer.fromJson<int>(json['id']),
      workerId: serializer.fromJson<int>(json['workerId']),
      itemId: serializer.fromJson<int>(json['itemId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'workerId': serializer.toJson<int>(workerId),
      'itemId': serializer.toJson<int>(itemId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  WorkerItem copyWith(
          {int id,
          int workerId,
          int itemId,
          DateTime createdAt,
          DateTime updatedAt}) =>
      WorkerItem(
        id: id ?? this.id,
        workerId: workerId ?? this.workerId,
        itemId: itemId ?? this.itemId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  @override
  String toString() {
    return (StringBuffer('WorkerItem(')
          ..write('id: $id, ')
          ..write('workerId: $workerId, ')
          ..write('itemId: $itemId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          workerId.hashCode,
          $mrjc(itemId.hashCode,
              $mrjc(createdAt.hashCode, updatedAt.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is WorkerItem &&
          other.id == this.id &&
          other.workerId == this.workerId &&
          other.itemId == this.itemId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class WorkerItemsCompanion extends UpdateCompanion<WorkerItem> {
  final Value<int> id;
  final Value<int> workerId;
  final Value<int> itemId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  const WorkerItemsCompanion({
    this.id = const Value.absent(),
    this.workerId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  WorkerItemsCompanion.insert({
    this.id = const Value.absent(),
    @required int workerId,
    @required int itemId,
    @required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  })  : workerId = Value(workerId),
        itemId = Value(itemId),
        createdAt = Value(createdAt);
  static Insertable<WorkerItem> custom({
    Expression<int> id,
    Expression<int> workerId,
    Expression<int> itemId,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (workerId != null) 'worker_id': workerId,
      if (itemId != null) 'item_id': itemId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  WorkerItemsCompanion copyWith(
      {Value<int> id,
      Value<int> workerId,
      Value<int> itemId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt}) {
    return WorkerItemsCompanion(
      id: id ?? this.id,
      workerId: workerId ?? this.workerId,
      itemId: itemId ?? this.itemId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (workerId.present) {
      map['worker_id'] = Variable<int>(workerId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WorkerItemsCompanion(')
          ..write('id: $id, ')
          ..write('workerId: $workerId, ')
          ..write('itemId: $itemId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $WorkerItemsTable extends WorkerItems
    with TableInfo<$WorkerItemsTable, WorkerItem> {
  final GeneratedDatabase _db;
  final String _alias;
  $WorkerItemsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _workerIdMeta = const VerificationMeta('workerId');
  GeneratedIntColumn _workerId;
  @override
  GeneratedIntColumn get workerId => _workerId ??= _constructWorkerId();
  GeneratedIntColumn _constructWorkerId() {
    return GeneratedIntColumn(
      'worker_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  GeneratedIntColumn _itemId;
  @override
  GeneratedIntColumn get itemId => _itemId ??= _constructItemId();
  GeneratedIntColumn _constructItemId() {
    return GeneratedIntColumn(
      'item_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, workerId, itemId, createdAt, updatedAt];
  @override
  $WorkerItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'worker_items';
  @override
  final String actualTableName = 'worker_items';
  @override
  VerificationContext validateIntegrity(Insertable<WorkerItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('worker_id')) {
      context.handle(_workerIdMeta,
          workerId.isAcceptableOrUnknown(data['worker_id'], _workerIdMeta));
    } else if (isInserting) {
      context.missing(_workerIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id'], _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WorkerItem map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return WorkerItem.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WorkerItemsTable createAlias(String alias) {
    return $WorkerItemsTable(_db, alias);
  }
}

abstract class _$DB extends GeneratedDatabase {
  _$DB(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $AbilitiesTable _abilities;
  $AbilitiesTable get abilities => _abilities ??= $AbilitiesTable(this);
  $CreaturesTable _creatures;
  $CreaturesTable get creatures => _creatures ??= $CreaturesTable(this);
  $CreatureAbilitiesTable _creatureAbilities;
  $CreatureAbilitiesTable get creatureAbilities =>
      _creatureAbilities ??= $CreatureAbilitiesTable(this);
  $CreatureStatusImpairmentsTable _creatureStatusImpairments;
  $CreatureStatusImpairmentsTable get creatureStatusImpairments =>
      _creatureStatusImpairments ??= $CreatureStatusImpairmentsTable(this);
  $CreatureTemplatesTable _creatureTemplates;
  $CreatureTemplatesTable get creatureTemplates =>
      _creatureTemplates ??= $CreatureTemplatesTable(this);
  $GameLogsTable _gameLogs;
  $GameLogsTable get gameLogs => _gameLogs ??= $GameLogsTable(this);
  $GameSessionsTable _gameSessions;
  $GameSessionsTable get gameSessions =>
      _gameSessions ??= $GameSessionsTable(this);
  $ItemsTable _items;
  $ItemsTable get items => _items ??= $ItemsTable(this);
  $ItemStoragesTable _itemStorages;
  $ItemStoragesTable get itemStorages =>
      _itemStorages ??= $ItemStoragesTable(this);
  $PlayersTable _players;
  $PlayersTable get players => _players ??= $PlayersTable(this);
  $PlayerStatusImpairmentsTable _playerStatusImpairments;
  $PlayerStatusImpairmentsTable get playerStatusImpairments =>
      _playerStatusImpairments ??= $PlayerStatusImpairmentsTable(this);
  $PlayerTemplatesTable _playerTemplates;
  $PlayerTemplatesTable get playerTemplates =>
      _playerTemplates ??= $PlayerTemplatesTable(this);
  $ScenariosTable _scenarios;
  $ScenariosTable get scenarios => _scenarios ??= $ScenariosTable(this);
  $StatBarsTable _statBars;
  $StatBarsTable get statBars => _statBars ??= $StatBarsTable(this);
  $StatusImpairmentsTable _statusImpairments;
  $StatusImpairmentsTable get statusImpairments =>
      _statusImpairments ??= $StatusImpairmentsTable(this);
  $StoriesTable _stories;
  $StoriesTable get stories => _stories ??= $StoriesTable(this);
  $WorkersTable _workers;
  $WorkersTable get workers => _workers ??= $WorkersTable(this);
  $WorkerItemsTable _workerItems;
  $WorkerItemsTable get workerItems => _workerItems ??= $WorkerItemsTable(this);
  AbilityDao _abilityDao;
  AbilityDao get abilityDao => _abilityDao ??= AbilityDao(this as DB);
  CreatureDao _creatureDao;
  CreatureDao get creatureDao => _creatureDao ??= CreatureDao(this as DB);
  CreatureAbilityDao _creatureAbilityDao;
  CreatureAbilityDao get creatureAbilityDao =>
      _creatureAbilityDao ??= CreatureAbilityDao(this as DB);
  CreatureStatusImpairmentDao _creatureStatusImpairmentDao;
  CreatureStatusImpairmentDao get creatureStatusImpairmentDao =>
      _creatureStatusImpairmentDao ??= CreatureStatusImpairmentDao(this as DB);
  CreatureTemplateDao _creatureTemplateDao;
  CreatureTemplateDao get creatureTemplateDao =>
      _creatureTemplateDao ??= CreatureTemplateDao(this as DB);
  GameLogDao _gameLogDao;
  GameLogDao get gameLogDao => _gameLogDao ??= GameLogDao(this as DB);
  GameSessionDao _gameSessionDao;
  GameSessionDao get gameSessionDao =>
      _gameSessionDao ??= GameSessionDao(this as DB);
  ItemDao _itemDao;
  ItemDao get itemDao => _itemDao ??= ItemDao(this as DB);
  ItemStorageDao _itemStorageDao;
  ItemStorageDao get itemStorageDao =>
      _itemStorageDao ??= ItemStorageDao(this as DB);
  PlayerDao _playerDao;
  PlayerDao get playerDao => _playerDao ??= PlayerDao(this as DB);
  PlayerStatusImpairmentDao _playerStatusImpairmentDao;
  PlayerStatusImpairmentDao get playerStatusImpairmentDao =>
      _playerStatusImpairmentDao ??= PlayerStatusImpairmentDao(this as DB);
  PlayerTemplateDao _playerTemplateDao;
  PlayerTemplateDao get playerTemplateDao =>
      _playerTemplateDao ??= PlayerTemplateDao(this as DB);
  ScenarioDao _scenarioDao;
  ScenarioDao get scenarioDao => _scenarioDao ??= ScenarioDao(this as DB);
  StatBarDao _statBarDao;
  StatBarDao get statBarDao => _statBarDao ??= StatBarDao(this as DB);
  StatusImpairmentDao _statusImpairmentDao;
  StatusImpairmentDao get statusImpairmentDao =>
      _statusImpairmentDao ??= StatusImpairmentDao(this as DB);
  StoryDao _storyDao;
  StoryDao get storyDao => _storyDao ??= StoryDao(this as DB);
  WorkerDao _workerDao;
  WorkerDao get workerDao => _workerDao ??= WorkerDao(this as DB);
  WorkerItemDao _workerItemDao;
  WorkerItemDao get workerItemDao =>
      _workerItemDao ??= WorkerItemDao(this as DB);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        abilities,
        creatures,
        creatureAbilities,
        creatureStatusImpairments,
        creatureTemplates,
        gameLogs,
        gameSessions,
        items,
        itemStorages,
        players,
        playerStatusImpairments,
        playerTemplates,
        scenarios,
        statBars,
        statusImpairments,
        stories,
        workers,
        workerItems
      ];
}
