// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $UserProfilesTable extends UserProfiles
    with TableInfo<$UserProfilesTable, UserProfile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
      'birth_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _sexMeta = const VerificationMeta('sex');
  @override
  late final GeneratedColumn<String> sex = GeneratedColumn<String>(
      'sex', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _heightCmMeta =
      const VerificationMeta('heightCm');
  @override
  late final GeneratedColumn<double> heightCm = GeneratedColumn<double>(
      'height_cm', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _weightKgMeta =
      const VerificationMeta('weightKg');
  @override
  late final GeneratedColumn<double> weightKg = GeneratedColumn<double>(
      'weight_kg', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _fitzpatrickSkinTypeMeta =
      const VerificationMeta('fitzpatrickSkinType');
  @override
  late final GeneratedColumn<String> fitzpatrickSkinType =
      GeneratedColumn<String>('fitzpatrick_skin_type', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _baseChronotypeMeta =
      const VerificationMeta('baseChronotype');
  @override
  late final GeneratedColumn<String> baseChronotype = GeneratedColumn<String>(
      'base_chronotype', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _workScheduleTypeMeta =
      const VerificationMeta('workScheduleType');
  @override
  late final GeneratedColumn<String> workScheduleType = GeneratedColumn<String>(
      'work_schedule_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isNightShiftWorkerMeta =
      const VerificationMeta('isNightShiftWorker');
  @override
  late final GeneratedColumn<bool> isNightShiftWorker = GeneratedColumn<bool>(
      'is_night_shift_worker', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_night_shift_worker" IN (0, 1))'));
  static const VerificationMeta _usualWakeTimeMeta =
      const VerificationMeta('usualWakeTime');
  @override
  late final GeneratedColumn<String> usualWakeTime = GeneratedColumn<String>(
      'usual_wake_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _usualSleepTimeMeta =
      const VerificationMeta('usualSleepTime');
  @override
  late final GeneratedColumn<String> usualSleepTime = GeneratedColumn<String>(
      'usual_sleep_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _mainGoalMeta =
      const VerificationMeta('mainGoal');
  @override
  late final GeneratedColumn<String> mainGoal = GeneratedColumn<String>(
      'main_goal', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _trainingProfileMeta =
      const VerificationMeta('trainingProfile');
  @override
  late final GeneratedColumn<String> trainingProfile = GeneratedColumn<String>(
      'training_profile', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        birthDate,
        sex,
        heightCm,
        weightKg,
        fitzpatrickSkinType,
        baseChronotype,
        workScheduleType,
        isNightShiftWorker,
        usualWakeTime,
        usualSleepTime,
        mainGoal,
        trainingProfile,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_profiles';
  @override
  VerificationContext validateIntegrity(Insertable<UserProfile> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    }
    if (data.containsKey('sex')) {
      context.handle(
          _sexMeta, sex.isAcceptableOrUnknown(data['sex']!, _sexMeta));
    }
    if (data.containsKey('height_cm')) {
      context.handle(_heightCmMeta,
          heightCm.isAcceptableOrUnknown(data['height_cm']!, _heightCmMeta));
    }
    if (data.containsKey('weight_kg')) {
      context.handle(_weightKgMeta,
          weightKg.isAcceptableOrUnknown(data['weight_kg']!, _weightKgMeta));
    }
    if (data.containsKey('fitzpatrick_skin_type')) {
      context.handle(
          _fitzpatrickSkinTypeMeta,
          fitzpatrickSkinType.isAcceptableOrUnknown(
              data['fitzpatrick_skin_type']!, _fitzpatrickSkinTypeMeta));
    } else if (isInserting) {
      context.missing(_fitzpatrickSkinTypeMeta);
    }
    if (data.containsKey('base_chronotype')) {
      context.handle(
          _baseChronotypeMeta,
          baseChronotype.isAcceptableOrUnknown(
              data['base_chronotype']!, _baseChronotypeMeta));
    } else if (isInserting) {
      context.missing(_baseChronotypeMeta);
    }
    if (data.containsKey('work_schedule_type')) {
      context.handle(
          _workScheduleTypeMeta,
          workScheduleType.isAcceptableOrUnknown(
              data['work_schedule_type']!, _workScheduleTypeMeta));
    } else if (isInserting) {
      context.missing(_workScheduleTypeMeta);
    }
    if (data.containsKey('is_night_shift_worker')) {
      context.handle(
          _isNightShiftWorkerMeta,
          isNightShiftWorker.isAcceptableOrUnknown(
              data['is_night_shift_worker']!, _isNightShiftWorkerMeta));
    } else if (isInserting) {
      context.missing(_isNightShiftWorkerMeta);
    }
    if (data.containsKey('usual_wake_time')) {
      context.handle(
          _usualWakeTimeMeta,
          usualWakeTime.isAcceptableOrUnknown(
              data['usual_wake_time']!, _usualWakeTimeMeta));
    } else if (isInserting) {
      context.missing(_usualWakeTimeMeta);
    }
    if (data.containsKey('usual_sleep_time')) {
      context.handle(
          _usualSleepTimeMeta,
          usualSleepTime.isAcceptableOrUnknown(
              data['usual_sleep_time']!, _usualSleepTimeMeta));
    } else if (isInserting) {
      context.missing(_usualSleepTimeMeta);
    }
    if (data.containsKey('main_goal')) {
      context.handle(_mainGoalMeta,
          mainGoal.isAcceptableOrUnknown(data['main_goal']!, _mainGoalMeta));
    } else if (isInserting) {
      context.missing(_mainGoalMeta);
    }
    if (data.containsKey('training_profile')) {
      context.handle(
          _trainingProfileMeta,
          trainingProfile.isAcceptableOrUnknown(
              data['training_profile']!, _trainingProfileMeta));
    } else if (isInserting) {
      context.missing(_trainingProfileMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProfile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProfile(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_date']),
      sex: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sex']),
      heightCm: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}height_cm']),
      weightKg: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight_kg']),
      fitzpatrickSkinType: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}fitzpatrick_skin_type'])!,
      baseChronotype: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}base_chronotype'])!,
      workScheduleType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}work_schedule_type'])!,
      isNightShiftWorker: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_night_shift_worker'])!,
      usualWakeTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}usual_wake_time'])!,
      usualSleepTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}usual_sleep_time'])!,
      mainGoal: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}main_goal'])!,
      trainingProfile: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}training_profile'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $UserProfilesTable createAlias(String alias) {
    return $UserProfilesTable(attachedDatabase, alias);
  }
}

class UserProfile extends DataClass implements Insertable<UserProfile> {
  final String id;
  final String name;
  final DateTime? birthDate;
  final String? sex;
  final double? heightCm;
  final double? weightKg;
  final String fitzpatrickSkinType;
  final String baseChronotype;
  final String workScheduleType;
  final bool isNightShiftWorker;
  final String usualWakeTime;
  final String usualSleepTime;
  final String mainGoal;
  final String trainingProfile;
  final DateTime createdAt;
  final DateTime updatedAt;
  const UserProfile(
      {required this.id,
      required this.name,
      this.birthDate,
      this.sex,
      this.heightCm,
      this.weightKg,
      required this.fitzpatrickSkinType,
      required this.baseChronotype,
      required this.workScheduleType,
      required this.isNightShiftWorker,
      required this.usualWakeTime,
      required this.usualSleepTime,
      required this.mainGoal,
      required this.trainingProfile,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<DateTime>(birthDate);
    }
    if (!nullToAbsent || sex != null) {
      map['sex'] = Variable<String>(sex);
    }
    if (!nullToAbsent || heightCm != null) {
      map['height_cm'] = Variable<double>(heightCm);
    }
    if (!nullToAbsent || weightKg != null) {
      map['weight_kg'] = Variable<double>(weightKg);
    }
    map['fitzpatrick_skin_type'] = Variable<String>(fitzpatrickSkinType);
    map['base_chronotype'] = Variable<String>(baseChronotype);
    map['work_schedule_type'] = Variable<String>(workScheduleType);
    map['is_night_shift_worker'] = Variable<bool>(isNightShiftWorker);
    map['usual_wake_time'] = Variable<String>(usualWakeTime);
    map['usual_sleep_time'] = Variable<String>(usualSleepTime);
    map['main_goal'] = Variable<String>(mainGoal);
    map['training_profile'] = Variable<String>(trainingProfile);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  UserProfilesCompanion toCompanion(bool nullToAbsent) {
    return UserProfilesCompanion(
      id: Value(id),
      name: Value(name),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      sex: sex == null && nullToAbsent ? const Value.absent() : Value(sex),
      heightCm: heightCm == null && nullToAbsent
          ? const Value.absent()
          : Value(heightCm),
      weightKg: weightKg == null && nullToAbsent
          ? const Value.absent()
          : Value(weightKg),
      fitzpatrickSkinType: Value(fitzpatrickSkinType),
      baseChronotype: Value(baseChronotype),
      workScheduleType: Value(workScheduleType),
      isNightShiftWorker: Value(isNightShiftWorker),
      usualWakeTime: Value(usualWakeTime),
      usualSleepTime: Value(usualSleepTime),
      mainGoal: Value(mainGoal),
      trainingProfile: Value(trainingProfile),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory UserProfile.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProfile(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      birthDate: serializer.fromJson<DateTime?>(json['birthDate']),
      sex: serializer.fromJson<String?>(json['sex']),
      heightCm: serializer.fromJson<double?>(json['heightCm']),
      weightKg: serializer.fromJson<double?>(json['weightKg']),
      fitzpatrickSkinType:
          serializer.fromJson<String>(json['fitzpatrickSkinType']),
      baseChronotype: serializer.fromJson<String>(json['baseChronotype']),
      workScheduleType: serializer.fromJson<String>(json['workScheduleType']),
      isNightShiftWorker: serializer.fromJson<bool>(json['isNightShiftWorker']),
      usualWakeTime: serializer.fromJson<String>(json['usualWakeTime']),
      usualSleepTime: serializer.fromJson<String>(json['usualSleepTime']),
      mainGoal: serializer.fromJson<String>(json['mainGoal']),
      trainingProfile: serializer.fromJson<String>(json['trainingProfile']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'birthDate': serializer.toJson<DateTime?>(birthDate),
      'sex': serializer.toJson<String?>(sex),
      'heightCm': serializer.toJson<double?>(heightCm),
      'weightKg': serializer.toJson<double?>(weightKg),
      'fitzpatrickSkinType': serializer.toJson<String>(fitzpatrickSkinType),
      'baseChronotype': serializer.toJson<String>(baseChronotype),
      'workScheduleType': serializer.toJson<String>(workScheduleType),
      'isNightShiftWorker': serializer.toJson<bool>(isNightShiftWorker),
      'usualWakeTime': serializer.toJson<String>(usualWakeTime),
      'usualSleepTime': serializer.toJson<String>(usualSleepTime),
      'mainGoal': serializer.toJson<String>(mainGoal),
      'trainingProfile': serializer.toJson<String>(trainingProfile),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  UserProfile copyWith(
          {String? id,
          String? name,
          Value<DateTime?> birthDate = const Value.absent(),
          Value<String?> sex = const Value.absent(),
          Value<double?> heightCm = const Value.absent(),
          Value<double?> weightKg = const Value.absent(),
          String? fitzpatrickSkinType,
          String? baseChronotype,
          String? workScheduleType,
          bool? isNightShiftWorker,
          String? usualWakeTime,
          String? usualSleepTime,
          String? mainGoal,
          String? trainingProfile,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      UserProfile(
        id: id ?? this.id,
        name: name ?? this.name,
        birthDate: birthDate.present ? birthDate.value : this.birthDate,
        sex: sex.present ? sex.value : this.sex,
        heightCm: heightCm.present ? heightCm.value : this.heightCm,
        weightKg: weightKg.present ? weightKg.value : this.weightKg,
        fitzpatrickSkinType: fitzpatrickSkinType ?? this.fitzpatrickSkinType,
        baseChronotype: baseChronotype ?? this.baseChronotype,
        workScheduleType: workScheduleType ?? this.workScheduleType,
        isNightShiftWorker: isNightShiftWorker ?? this.isNightShiftWorker,
        usualWakeTime: usualWakeTime ?? this.usualWakeTime,
        usualSleepTime: usualSleepTime ?? this.usualSleepTime,
        mainGoal: mainGoal ?? this.mainGoal,
        trainingProfile: trainingProfile ?? this.trainingProfile,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  UserProfile copyWithCompanion(UserProfilesCompanion data) {
    return UserProfile(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      sex: data.sex.present ? data.sex.value : this.sex,
      heightCm: data.heightCm.present ? data.heightCm.value : this.heightCm,
      weightKg: data.weightKg.present ? data.weightKg.value : this.weightKg,
      fitzpatrickSkinType: data.fitzpatrickSkinType.present
          ? data.fitzpatrickSkinType.value
          : this.fitzpatrickSkinType,
      baseChronotype: data.baseChronotype.present
          ? data.baseChronotype.value
          : this.baseChronotype,
      workScheduleType: data.workScheduleType.present
          ? data.workScheduleType.value
          : this.workScheduleType,
      isNightShiftWorker: data.isNightShiftWorker.present
          ? data.isNightShiftWorker.value
          : this.isNightShiftWorker,
      usualWakeTime: data.usualWakeTime.present
          ? data.usualWakeTime.value
          : this.usualWakeTime,
      usualSleepTime: data.usualSleepTime.present
          ? data.usualSleepTime.value
          : this.usualSleepTime,
      mainGoal: data.mainGoal.present ? data.mainGoal.value : this.mainGoal,
      trainingProfile: data.trainingProfile.present
          ? data.trainingProfile.value
          : this.trainingProfile,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserProfile(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthDate: $birthDate, ')
          ..write('sex: $sex, ')
          ..write('heightCm: $heightCm, ')
          ..write('weightKg: $weightKg, ')
          ..write('fitzpatrickSkinType: $fitzpatrickSkinType, ')
          ..write('baseChronotype: $baseChronotype, ')
          ..write('workScheduleType: $workScheduleType, ')
          ..write('isNightShiftWorker: $isNightShiftWorker, ')
          ..write('usualWakeTime: $usualWakeTime, ')
          ..write('usualSleepTime: $usualSleepTime, ')
          ..write('mainGoal: $mainGoal, ')
          ..write('trainingProfile: $trainingProfile, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      name,
      birthDate,
      sex,
      heightCm,
      weightKg,
      fitzpatrickSkinType,
      baseChronotype,
      workScheduleType,
      isNightShiftWorker,
      usualWakeTime,
      usualSleepTime,
      mainGoal,
      trainingProfile,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProfile &&
          other.id == this.id &&
          other.name == this.name &&
          other.birthDate == this.birthDate &&
          other.sex == this.sex &&
          other.heightCm == this.heightCm &&
          other.weightKg == this.weightKg &&
          other.fitzpatrickSkinType == this.fitzpatrickSkinType &&
          other.baseChronotype == this.baseChronotype &&
          other.workScheduleType == this.workScheduleType &&
          other.isNightShiftWorker == this.isNightShiftWorker &&
          other.usualWakeTime == this.usualWakeTime &&
          other.usualSleepTime == this.usualSleepTime &&
          other.mainGoal == this.mainGoal &&
          other.trainingProfile == this.trainingProfile &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class UserProfilesCompanion extends UpdateCompanion<UserProfile> {
  final Value<String> id;
  final Value<String> name;
  final Value<DateTime?> birthDate;
  final Value<String?> sex;
  final Value<double?> heightCm;
  final Value<double?> weightKg;
  final Value<String> fitzpatrickSkinType;
  final Value<String> baseChronotype;
  final Value<String> workScheduleType;
  final Value<bool> isNightShiftWorker;
  final Value<String> usualWakeTime;
  final Value<String> usualSleepTime;
  final Value<String> mainGoal;
  final Value<String> trainingProfile;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const UserProfilesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.sex = const Value.absent(),
    this.heightCm = const Value.absent(),
    this.weightKg = const Value.absent(),
    this.fitzpatrickSkinType = const Value.absent(),
    this.baseChronotype = const Value.absent(),
    this.workScheduleType = const Value.absent(),
    this.isNightShiftWorker = const Value.absent(),
    this.usualWakeTime = const Value.absent(),
    this.usualSleepTime = const Value.absent(),
    this.mainGoal = const Value.absent(),
    this.trainingProfile = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserProfilesCompanion.insert({
    required String id,
    required String name,
    this.birthDate = const Value.absent(),
    this.sex = const Value.absent(),
    this.heightCm = const Value.absent(),
    this.weightKg = const Value.absent(),
    required String fitzpatrickSkinType,
    required String baseChronotype,
    required String workScheduleType,
    required bool isNightShiftWorker,
    required String usualWakeTime,
    required String usualSleepTime,
    required String mainGoal,
    required String trainingProfile,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        fitzpatrickSkinType = Value(fitzpatrickSkinType),
        baseChronotype = Value(baseChronotype),
        workScheduleType = Value(workScheduleType),
        isNightShiftWorker = Value(isNightShiftWorker),
        usualWakeTime = Value(usualWakeTime),
        usualSleepTime = Value(usualSleepTime),
        mainGoal = Value(mainGoal),
        trainingProfile = Value(trainingProfile),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt);
  static Insertable<UserProfile> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<DateTime>? birthDate,
    Expression<String>? sex,
    Expression<double>? heightCm,
    Expression<double>? weightKg,
    Expression<String>? fitzpatrickSkinType,
    Expression<String>? baseChronotype,
    Expression<String>? workScheduleType,
    Expression<bool>? isNightShiftWorker,
    Expression<String>? usualWakeTime,
    Expression<String>? usualSleepTime,
    Expression<String>? mainGoal,
    Expression<String>? trainingProfile,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (birthDate != null) 'birth_date': birthDate,
      if (sex != null) 'sex': sex,
      if (heightCm != null) 'height_cm': heightCm,
      if (weightKg != null) 'weight_kg': weightKg,
      if (fitzpatrickSkinType != null)
        'fitzpatrick_skin_type': fitzpatrickSkinType,
      if (baseChronotype != null) 'base_chronotype': baseChronotype,
      if (workScheduleType != null) 'work_schedule_type': workScheduleType,
      if (isNightShiftWorker != null)
        'is_night_shift_worker': isNightShiftWorker,
      if (usualWakeTime != null) 'usual_wake_time': usualWakeTime,
      if (usualSleepTime != null) 'usual_sleep_time': usualSleepTime,
      if (mainGoal != null) 'main_goal': mainGoal,
      if (trainingProfile != null) 'training_profile': trainingProfile,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserProfilesCompanion copyWith(
      {Value<String>? id,
      Value<String>? name,
      Value<DateTime?>? birthDate,
      Value<String?>? sex,
      Value<double?>? heightCm,
      Value<double?>? weightKg,
      Value<String>? fitzpatrickSkinType,
      Value<String>? baseChronotype,
      Value<String>? workScheduleType,
      Value<bool>? isNightShiftWorker,
      Value<String>? usualWakeTime,
      Value<String>? usualSleepTime,
      Value<String>? mainGoal,
      Value<String>? trainingProfile,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return UserProfilesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      birthDate: birthDate ?? this.birthDate,
      sex: sex ?? this.sex,
      heightCm: heightCm ?? this.heightCm,
      weightKg: weightKg ?? this.weightKg,
      fitzpatrickSkinType: fitzpatrickSkinType ?? this.fitzpatrickSkinType,
      baseChronotype: baseChronotype ?? this.baseChronotype,
      workScheduleType: workScheduleType ?? this.workScheduleType,
      isNightShiftWorker: isNightShiftWorker ?? this.isNightShiftWorker,
      usualWakeTime: usualWakeTime ?? this.usualWakeTime,
      usualSleepTime: usualSleepTime ?? this.usualSleepTime,
      mainGoal: mainGoal ?? this.mainGoal,
      trainingProfile: trainingProfile ?? this.trainingProfile,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (sex.present) {
      map['sex'] = Variable<String>(sex.value);
    }
    if (heightCm.present) {
      map['height_cm'] = Variable<double>(heightCm.value);
    }
    if (weightKg.present) {
      map['weight_kg'] = Variable<double>(weightKg.value);
    }
    if (fitzpatrickSkinType.present) {
      map['fitzpatrick_skin_type'] =
          Variable<String>(fitzpatrickSkinType.value);
    }
    if (baseChronotype.present) {
      map['base_chronotype'] = Variable<String>(baseChronotype.value);
    }
    if (workScheduleType.present) {
      map['work_schedule_type'] = Variable<String>(workScheduleType.value);
    }
    if (isNightShiftWorker.present) {
      map['is_night_shift_worker'] = Variable<bool>(isNightShiftWorker.value);
    }
    if (usualWakeTime.present) {
      map['usual_wake_time'] = Variable<String>(usualWakeTime.value);
    }
    if (usualSleepTime.present) {
      map['usual_sleep_time'] = Variable<String>(usualSleepTime.value);
    }
    if (mainGoal.present) {
      map['main_goal'] = Variable<String>(mainGoal.value);
    }
    if (trainingProfile.present) {
      map['training_profile'] = Variable<String>(trainingProfile.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserProfilesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('birthDate: $birthDate, ')
          ..write('sex: $sex, ')
          ..write('heightCm: $heightCm, ')
          ..write('weightKg: $weightKg, ')
          ..write('fitzpatrickSkinType: $fitzpatrickSkinType, ')
          ..write('baseChronotype: $baseChronotype, ')
          ..write('workScheduleType: $workScheduleType, ')
          ..write('isNightShiftWorker: $isNightShiftWorker, ')
          ..write('usualWakeTime: $usualWakeTime, ')
          ..write('usualSleepTime: $usualSleepTime, ')
          ..write('mainGoal: $mainGoal, ')
          ..write('trainingProfile: $trainingProfile, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LightExposureEventsTable extends LightExposureEvents
    with TableInfo<$LightExposureEventsTable, LightExposureEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LightExposureEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_profiles (id)'));
  static const VerificationMeta _startAtMeta =
      const VerificationMeta('startAt');
  @override
  late final GeneratedColumn<DateTime> startAt = GeneratedColumn<DateTime>(
      'start_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endAtMeta = const VerificationMeta('endAt');
  @override
  late final GeneratedColumn<DateTime> endAt = GeneratedColumn<DateTime>(
      'end_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _lightTypeMeta =
      const VerificationMeta('lightType');
  @override
  late final GeneratedColumn<String> lightType = GeneratedColumn<String>(
      'light_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _estimatedLuxMeta =
      const VerificationMeta('estimatedLux');
  @override
  late final GeneratedColumn<int> estimatedLux = GeneratedColumn<int>(
      'estimated_lux', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _uvIndexMeta =
      const VerificationMeta('uvIndex');
  @override
  late final GeneratedColumn<double> uvIndex = GeneratedColumn<double>(
      'uv_index', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isMorningSunlightMeta =
      const VerificationMeta('isMorningSunlight');
  @override
  late final GeneratedColumn<bool> isMorningSunlight = GeneratedColumn<bool>(
      'is_morning_sunlight', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_morning_sunlight" IN (0, 1))'));
  static const VerificationMeta _isSunriseViewedMeta =
      const VerificationMeta('isSunriseViewed');
  @override
  late final GeneratedColumn<bool> isSunriseViewed = GeneratedColumn<bool>(
      'is_sunrise_viewed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_sunrise_viewed" IN (0, 1))'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        startAt,
        endAt,
        lightType,
        estimatedLux,
        uvIndex,
        source,
        isMorningSunlight,
        isSunriseViewed,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'light_exposure_events';
  @override
  VerificationContext validateIntegrity(Insertable<LightExposureEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('start_at')) {
      context.handle(_startAtMeta,
          startAt.isAcceptableOrUnknown(data['start_at']!, _startAtMeta));
    } else if (isInserting) {
      context.missing(_startAtMeta);
    }
    if (data.containsKey('end_at')) {
      context.handle(
          _endAtMeta, endAt.isAcceptableOrUnknown(data['end_at']!, _endAtMeta));
    } else if (isInserting) {
      context.missing(_endAtMeta);
    }
    if (data.containsKey('light_type')) {
      context.handle(_lightTypeMeta,
          lightType.isAcceptableOrUnknown(data['light_type']!, _lightTypeMeta));
    } else if (isInserting) {
      context.missing(_lightTypeMeta);
    }
    if (data.containsKey('estimated_lux')) {
      context.handle(
          _estimatedLuxMeta,
          estimatedLux.isAcceptableOrUnknown(
              data['estimated_lux']!, _estimatedLuxMeta));
    } else if (isInserting) {
      context.missing(_estimatedLuxMeta);
    }
    if (data.containsKey('uv_index')) {
      context.handle(_uvIndexMeta,
          uvIndex.isAcceptableOrUnknown(data['uv_index']!, _uvIndexMeta));
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('is_morning_sunlight')) {
      context.handle(
          _isMorningSunlightMeta,
          isMorningSunlight.isAcceptableOrUnknown(
              data['is_morning_sunlight']!, _isMorningSunlightMeta));
    } else if (isInserting) {
      context.missing(_isMorningSunlightMeta);
    }
    if (data.containsKey('is_sunrise_viewed')) {
      context.handle(
          _isSunriseViewedMeta,
          isSunriseViewed.isAcceptableOrUnknown(
              data['is_sunrise_viewed']!, _isSunriseViewedMeta));
    } else if (isInserting) {
      context.missing(_isSunriseViewedMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LightExposureEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LightExposureEvent(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      startAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_at'])!,
      endAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_at'])!,
      lightType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}light_type'])!,
      estimatedLux: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}estimated_lux'])!,
      uvIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}uv_index']),
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      isMorningSunlight: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_morning_sunlight'])!,
      isSunriseViewed: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_sunrise_viewed'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $LightExposureEventsTable createAlias(String alias) {
    return $LightExposureEventsTable(attachedDatabase, alias);
  }
}

class LightExposureEvent extends DataClass
    implements Insertable<LightExposureEvent> {
  final String id;
  final String userId;
  final DateTime startAt;
  final DateTime endAt;
  final String lightType;
  final int estimatedLux;
  final double? uvIndex;
  final String source;
  final bool isMorningSunlight;
  final bool isSunriseViewed;
  final DateTime createdAt;
  const LightExposureEvent(
      {required this.id,
      required this.userId,
      required this.startAt,
      required this.endAt,
      required this.lightType,
      required this.estimatedLux,
      this.uvIndex,
      required this.source,
      required this.isMorningSunlight,
      required this.isSunriseViewed,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['start_at'] = Variable<DateTime>(startAt);
    map['end_at'] = Variable<DateTime>(endAt);
    map['light_type'] = Variable<String>(lightType);
    map['estimated_lux'] = Variable<int>(estimatedLux);
    if (!nullToAbsent || uvIndex != null) {
      map['uv_index'] = Variable<double>(uvIndex);
    }
    map['source'] = Variable<String>(source);
    map['is_morning_sunlight'] = Variable<bool>(isMorningSunlight);
    map['is_sunrise_viewed'] = Variable<bool>(isSunriseViewed);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  LightExposureEventsCompanion toCompanion(bool nullToAbsent) {
    return LightExposureEventsCompanion(
      id: Value(id),
      userId: Value(userId),
      startAt: Value(startAt),
      endAt: Value(endAt),
      lightType: Value(lightType),
      estimatedLux: Value(estimatedLux),
      uvIndex: uvIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(uvIndex),
      source: Value(source),
      isMorningSunlight: Value(isMorningSunlight),
      isSunriseViewed: Value(isSunriseViewed),
      createdAt: Value(createdAt),
    );
  }

  factory LightExposureEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LightExposureEvent(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      startAt: serializer.fromJson<DateTime>(json['startAt']),
      endAt: serializer.fromJson<DateTime>(json['endAt']),
      lightType: serializer.fromJson<String>(json['lightType']),
      estimatedLux: serializer.fromJson<int>(json['estimatedLux']),
      uvIndex: serializer.fromJson<double?>(json['uvIndex']),
      source: serializer.fromJson<String>(json['source']),
      isMorningSunlight: serializer.fromJson<bool>(json['isMorningSunlight']),
      isSunriseViewed: serializer.fromJson<bool>(json['isSunriseViewed']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'startAt': serializer.toJson<DateTime>(startAt),
      'endAt': serializer.toJson<DateTime>(endAt),
      'lightType': serializer.toJson<String>(lightType),
      'estimatedLux': serializer.toJson<int>(estimatedLux),
      'uvIndex': serializer.toJson<double?>(uvIndex),
      'source': serializer.toJson<String>(source),
      'isMorningSunlight': serializer.toJson<bool>(isMorningSunlight),
      'isSunriseViewed': serializer.toJson<bool>(isSunriseViewed),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  LightExposureEvent copyWith(
          {String? id,
          String? userId,
          DateTime? startAt,
          DateTime? endAt,
          String? lightType,
          int? estimatedLux,
          Value<double?> uvIndex = const Value.absent(),
          String? source,
          bool? isMorningSunlight,
          bool? isSunriseViewed,
          DateTime? createdAt}) =>
      LightExposureEvent(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        lightType: lightType ?? this.lightType,
        estimatedLux: estimatedLux ?? this.estimatedLux,
        uvIndex: uvIndex.present ? uvIndex.value : this.uvIndex,
        source: source ?? this.source,
        isMorningSunlight: isMorningSunlight ?? this.isMorningSunlight,
        isSunriseViewed: isSunriseViewed ?? this.isSunriseViewed,
        createdAt: createdAt ?? this.createdAt,
      );
  LightExposureEvent copyWithCompanion(LightExposureEventsCompanion data) {
    return LightExposureEvent(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      startAt: data.startAt.present ? data.startAt.value : this.startAt,
      endAt: data.endAt.present ? data.endAt.value : this.endAt,
      lightType: data.lightType.present ? data.lightType.value : this.lightType,
      estimatedLux: data.estimatedLux.present
          ? data.estimatedLux.value
          : this.estimatedLux,
      uvIndex: data.uvIndex.present ? data.uvIndex.value : this.uvIndex,
      source: data.source.present ? data.source.value : this.source,
      isMorningSunlight: data.isMorningSunlight.present
          ? data.isMorningSunlight.value
          : this.isMorningSunlight,
      isSunriseViewed: data.isSunriseViewed.present
          ? data.isSunriseViewed.value
          : this.isSunriseViewed,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LightExposureEvent(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('lightType: $lightType, ')
          ..write('estimatedLux: $estimatedLux, ')
          ..write('uvIndex: $uvIndex, ')
          ..write('source: $source, ')
          ..write('isMorningSunlight: $isMorningSunlight, ')
          ..write('isSunriseViewed: $isSunriseViewed, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      startAt,
      endAt,
      lightType,
      estimatedLux,
      uvIndex,
      source,
      isMorningSunlight,
      isSunriseViewed,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LightExposureEvent &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.startAt == this.startAt &&
          other.endAt == this.endAt &&
          other.lightType == this.lightType &&
          other.estimatedLux == this.estimatedLux &&
          other.uvIndex == this.uvIndex &&
          other.source == this.source &&
          other.isMorningSunlight == this.isMorningSunlight &&
          other.isSunriseViewed == this.isSunriseViewed &&
          other.createdAt == this.createdAt);
}

class LightExposureEventsCompanion extends UpdateCompanion<LightExposureEvent> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> startAt;
  final Value<DateTime> endAt;
  final Value<String> lightType;
  final Value<int> estimatedLux;
  final Value<double?> uvIndex;
  final Value<String> source;
  final Value<bool> isMorningSunlight;
  final Value<bool> isSunriseViewed;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const LightExposureEventsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.startAt = const Value.absent(),
    this.endAt = const Value.absent(),
    this.lightType = const Value.absent(),
    this.estimatedLux = const Value.absent(),
    this.uvIndex = const Value.absent(),
    this.source = const Value.absent(),
    this.isMorningSunlight = const Value.absent(),
    this.isSunriseViewed = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LightExposureEventsCompanion.insert({
    required String id,
    required String userId,
    required DateTime startAt,
    required DateTime endAt,
    required String lightType,
    required int estimatedLux,
    this.uvIndex = const Value.absent(),
    required String source,
    required bool isMorningSunlight,
    required bool isSunriseViewed,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        startAt = Value(startAt),
        endAt = Value(endAt),
        lightType = Value(lightType),
        estimatedLux = Value(estimatedLux),
        source = Value(source),
        isMorningSunlight = Value(isMorningSunlight),
        isSunriseViewed = Value(isSunriseViewed),
        createdAt = Value(createdAt);
  static Insertable<LightExposureEvent> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? startAt,
    Expression<DateTime>? endAt,
    Expression<String>? lightType,
    Expression<int>? estimatedLux,
    Expression<double>? uvIndex,
    Expression<String>? source,
    Expression<bool>? isMorningSunlight,
    Expression<bool>? isSunriseViewed,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (startAt != null) 'start_at': startAt,
      if (endAt != null) 'end_at': endAt,
      if (lightType != null) 'light_type': lightType,
      if (estimatedLux != null) 'estimated_lux': estimatedLux,
      if (uvIndex != null) 'uv_index': uvIndex,
      if (source != null) 'source': source,
      if (isMorningSunlight != null) 'is_morning_sunlight': isMorningSunlight,
      if (isSunriseViewed != null) 'is_sunrise_viewed': isSunriseViewed,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LightExposureEventsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? startAt,
      Value<DateTime>? endAt,
      Value<String>? lightType,
      Value<int>? estimatedLux,
      Value<double?>? uvIndex,
      Value<String>? source,
      Value<bool>? isMorningSunlight,
      Value<bool>? isSunriseViewed,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return LightExposureEventsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      lightType: lightType ?? this.lightType,
      estimatedLux: estimatedLux ?? this.estimatedLux,
      uvIndex: uvIndex ?? this.uvIndex,
      source: source ?? this.source,
      isMorningSunlight: isMorningSunlight ?? this.isMorningSunlight,
      isSunriseViewed: isSunriseViewed ?? this.isSunriseViewed,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (startAt.present) {
      map['start_at'] = Variable<DateTime>(startAt.value);
    }
    if (endAt.present) {
      map['end_at'] = Variable<DateTime>(endAt.value);
    }
    if (lightType.present) {
      map['light_type'] = Variable<String>(lightType.value);
    }
    if (estimatedLux.present) {
      map['estimated_lux'] = Variable<int>(estimatedLux.value);
    }
    if (uvIndex.present) {
      map['uv_index'] = Variable<double>(uvIndex.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (isMorningSunlight.present) {
      map['is_morning_sunlight'] = Variable<bool>(isMorningSunlight.value);
    }
    if (isSunriseViewed.present) {
      map['is_sunrise_viewed'] = Variable<bool>(isSunriseViewed.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LightExposureEventsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('lightType: $lightType, ')
          ..write('estimatedLux: $estimatedLux, ')
          ..write('uvIndex: $uvIndex, ')
          ..write('source: $source, ')
          ..write('isMorningSunlight: $isMorningSunlight, ')
          ..write('isSunriseViewed: $isSunriseViewed, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NutritionEventsTable extends NutritionEvents
    with TableInfo<$NutritionEventsTable, NutritionEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NutritionEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_profiles (id)'));
  static const VerificationMeta _consumedAtMeta =
      const VerificationMeta('consumedAt');
  @override
  late final GeneratedColumn<DateTime> consumedAt = GeneratedColumn<DateTime>(
      'consumed_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _caloriesMeta =
      const VerificationMeta('calories');
  @override
  late final GeneratedColumn<int> calories = GeneratedColumn<int>(
      'calories', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _proteinGramsMeta =
      const VerificationMeta('proteinGrams');
  @override
  late final GeneratedColumn<double> proteinGrams = GeneratedColumn<double>(
      'protein_grams', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _carbsGramsMeta =
      const VerificationMeta('carbsGrams');
  @override
  late final GeneratedColumn<double> carbsGrams = GeneratedColumn<double>(
      'carbs_grams', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _fatGramsMeta =
      const VerificationMeta('fatGrams');
  @override
  late final GeneratedColumn<double> fatGrams = GeneratedColumn<double>(
      'fat_grams', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _fiberGramsMeta =
      const VerificationMeta('fiberGrams');
  @override
  late final GeneratedColumn<double> fiberGrams = GeneratedColumn<double>(
      'fiber_grams', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _mealTypeMeta =
      const VerificationMeta('mealType');
  @override
  late final GeneratedColumn<String> mealType = GeneratedColumn<String>(
      'meal_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isNightEatingMeta =
      const VerificationMeta('isNightEating');
  @override
  late final GeneratedColumn<bool> isNightEating = GeneratedColumn<bool>(
      'is_night_eating', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_night_eating" IN (0, 1))'));
  static const VerificationMeta _hoursBeforeSleepMeta =
      const VerificationMeta('hoursBeforeSleep');
  @override
  late final GeneratedColumn<double> hoursBeforeSleep = GeneratedColumn<double>(
      'hours_before_sleep', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _satietyScoreMeta =
      const VerificationMeta('satietyScore');
  @override
  late final GeneratedColumn<int> satietyScore = GeneratedColumn<int>(
      'satiety_score', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _energyAfterMealScoreMeta =
      const VerificationMeta('energyAfterMealScore');
  @override
  late final GeneratedColumn<int> energyAfterMealScore = GeneratedColumn<int>(
      'energy_after_meal_score', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _anxietyAfterMealScoreMeta =
      const VerificationMeta('anxietyAfterMealScore');
  @override
  late final GeneratedColumn<int> anxietyAfterMealScore = GeneratedColumn<int>(
      'anxiety_after_meal_score', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        consumedAt,
        calories,
        proteinGrams,
        carbsGrams,
        fatGrams,
        fiberGrams,
        mealType,
        isNightEating,
        hoursBeforeSleep,
        satietyScore,
        energyAfterMealScore,
        anxietyAfterMealScore,
        source,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'nutrition_events';
  @override
  VerificationContext validateIntegrity(Insertable<NutritionEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('consumed_at')) {
      context.handle(
          _consumedAtMeta,
          consumedAt.isAcceptableOrUnknown(
              data['consumed_at']!, _consumedAtMeta));
    } else if (isInserting) {
      context.missing(_consumedAtMeta);
    }
    if (data.containsKey('calories')) {
      context.handle(_caloriesMeta,
          calories.isAcceptableOrUnknown(data['calories']!, _caloriesMeta));
    } else if (isInserting) {
      context.missing(_caloriesMeta);
    }
    if (data.containsKey('protein_grams')) {
      context.handle(
          _proteinGramsMeta,
          proteinGrams.isAcceptableOrUnknown(
              data['protein_grams']!, _proteinGramsMeta));
    } else if (isInserting) {
      context.missing(_proteinGramsMeta);
    }
    if (data.containsKey('carbs_grams')) {
      context.handle(
          _carbsGramsMeta,
          carbsGrams.isAcceptableOrUnknown(
              data['carbs_grams']!, _carbsGramsMeta));
    } else if (isInserting) {
      context.missing(_carbsGramsMeta);
    }
    if (data.containsKey('fat_grams')) {
      context.handle(_fatGramsMeta,
          fatGrams.isAcceptableOrUnknown(data['fat_grams']!, _fatGramsMeta));
    } else if (isInserting) {
      context.missing(_fatGramsMeta);
    }
    if (data.containsKey('fiber_grams')) {
      context.handle(
          _fiberGramsMeta,
          fiberGrams.isAcceptableOrUnknown(
              data['fiber_grams']!, _fiberGramsMeta));
    } else if (isInserting) {
      context.missing(_fiberGramsMeta);
    }
    if (data.containsKey('meal_type')) {
      context.handle(_mealTypeMeta,
          mealType.isAcceptableOrUnknown(data['meal_type']!, _mealTypeMeta));
    } else if (isInserting) {
      context.missing(_mealTypeMeta);
    }
    if (data.containsKey('is_night_eating')) {
      context.handle(
          _isNightEatingMeta,
          isNightEating.isAcceptableOrUnknown(
              data['is_night_eating']!, _isNightEatingMeta));
    } else if (isInserting) {
      context.missing(_isNightEatingMeta);
    }
    if (data.containsKey('hours_before_sleep')) {
      context.handle(
          _hoursBeforeSleepMeta,
          hoursBeforeSleep.isAcceptableOrUnknown(
              data['hours_before_sleep']!, _hoursBeforeSleepMeta));
    }
    if (data.containsKey('satiety_score')) {
      context.handle(
          _satietyScoreMeta,
          satietyScore.isAcceptableOrUnknown(
              data['satiety_score']!, _satietyScoreMeta));
    }
    if (data.containsKey('energy_after_meal_score')) {
      context.handle(
          _energyAfterMealScoreMeta,
          energyAfterMealScore.isAcceptableOrUnknown(
              data['energy_after_meal_score']!, _energyAfterMealScoreMeta));
    }
    if (data.containsKey('anxiety_after_meal_score')) {
      context.handle(
          _anxietyAfterMealScoreMeta,
          anxietyAfterMealScore.isAcceptableOrUnknown(
              data['anxiety_after_meal_score']!, _anxietyAfterMealScoreMeta));
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NutritionEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NutritionEvent(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      consumedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}consumed_at'])!,
      calories: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}calories'])!,
      proteinGrams: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}protein_grams'])!,
      carbsGrams: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}carbs_grams'])!,
      fatGrams: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}fat_grams'])!,
      fiberGrams: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}fiber_grams'])!,
      mealType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}meal_type'])!,
      isNightEating: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_night_eating'])!,
      hoursBeforeSleep: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}hours_before_sleep']),
      satietyScore: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}satiety_score']),
      energyAfterMealScore: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}energy_after_meal_score']),
      anxietyAfterMealScore: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}anxiety_after_meal_score']),
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $NutritionEventsTable createAlias(String alias) {
    return $NutritionEventsTable(attachedDatabase, alias);
  }
}

class NutritionEvent extends DataClass implements Insertable<NutritionEvent> {
  final String id;
  final String userId;
  final DateTime consumedAt;
  final int calories;
  final double proteinGrams;
  final double carbsGrams;
  final double fatGrams;
  final double fiberGrams;
  final String mealType;
  final bool isNightEating;
  final double? hoursBeforeSleep;
  final int? satietyScore;
  final int? energyAfterMealScore;
  final int? anxietyAfterMealScore;
  final String source;
  final DateTime createdAt;
  const NutritionEvent(
      {required this.id,
      required this.userId,
      required this.consumedAt,
      required this.calories,
      required this.proteinGrams,
      required this.carbsGrams,
      required this.fatGrams,
      required this.fiberGrams,
      required this.mealType,
      required this.isNightEating,
      this.hoursBeforeSleep,
      this.satietyScore,
      this.energyAfterMealScore,
      this.anxietyAfterMealScore,
      required this.source,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['consumed_at'] = Variable<DateTime>(consumedAt);
    map['calories'] = Variable<int>(calories);
    map['protein_grams'] = Variable<double>(proteinGrams);
    map['carbs_grams'] = Variable<double>(carbsGrams);
    map['fat_grams'] = Variable<double>(fatGrams);
    map['fiber_grams'] = Variable<double>(fiberGrams);
    map['meal_type'] = Variable<String>(mealType);
    map['is_night_eating'] = Variable<bool>(isNightEating);
    if (!nullToAbsent || hoursBeforeSleep != null) {
      map['hours_before_sleep'] = Variable<double>(hoursBeforeSleep);
    }
    if (!nullToAbsent || satietyScore != null) {
      map['satiety_score'] = Variable<int>(satietyScore);
    }
    if (!nullToAbsent || energyAfterMealScore != null) {
      map['energy_after_meal_score'] = Variable<int>(energyAfterMealScore);
    }
    if (!nullToAbsent || anxietyAfterMealScore != null) {
      map['anxiety_after_meal_score'] = Variable<int>(anxietyAfterMealScore);
    }
    map['source'] = Variable<String>(source);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  NutritionEventsCompanion toCompanion(bool nullToAbsent) {
    return NutritionEventsCompanion(
      id: Value(id),
      userId: Value(userId),
      consumedAt: Value(consumedAt),
      calories: Value(calories),
      proteinGrams: Value(proteinGrams),
      carbsGrams: Value(carbsGrams),
      fatGrams: Value(fatGrams),
      fiberGrams: Value(fiberGrams),
      mealType: Value(mealType),
      isNightEating: Value(isNightEating),
      hoursBeforeSleep: hoursBeforeSleep == null && nullToAbsent
          ? const Value.absent()
          : Value(hoursBeforeSleep),
      satietyScore: satietyScore == null && nullToAbsent
          ? const Value.absent()
          : Value(satietyScore),
      energyAfterMealScore: energyAfterMealScore == null && nullToAbsent
          ? const Value.absent()
          : Value(energyAfterMealScore),
      anxietyAfterMealScore: anxietyAfterMealScore == null && nullToAbsent
          ? const Value.absent()
          : Value(anxietyAfterMealScore),
      source: Value(source),
      createdAt: Value(createdAt),
    );
  }

  factory NutritionEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NutritionEvent(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      consumedAt: serializer.fromJson<DateTime>(json['consumedAt']),
      calories: serializer.fromJson<int>(json['calories']),
      proteinGrams: serializer.fromJson<double>(json['proteinGrams']),
      carbsGrams: serializer.fromJson<double>(json['carbsGrams']),
      fatGrams: serializer.fromJson<double>(json['fatGrams']),
      fiberGrams: serializer.fromJson<double>(json['fiberGrams']),
      mealType: serializer.fromJson<String>(json['mealType']),
      isNightEating: serializer.fromJson<bool>(json['isNightEating']),
      hoursBeforeSleep: serializer.fromJson<double?>(json['hoursBeforeSleep']),
      satietyScore: serializer.fromJson<int?>(json['satietyScore']),
      energyAfterMealScore:
          serializer.fromJson<int?>(json['energyAfterMealScore']),
      anxietyAfterMealScore:
          serializer.fromJson<int?>(json['anxietyAfterMealScore']),
      source: serializer.fromJson<String>(json['source']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'consumedAt': serializer.toJson<DateTime>(consumedAt),
      'calories': serializer.toJson<int>(calories),
      'proteinGrams': serializer.toJson<double>(proteinGrams),
      'carbsGrams': serializer.toJson<double>(carbsGrams),
      'fatGrams': serializer.toJson<double>(fatGrams),
      'fiberGrams': serializer.toJson<double>(fiberGrams),
      'mealType': serializer.toJson<String>(mealType),
      'isNightEating': serializer.toJson<bool>(isNightEating),
      'hoursBeforeSleep': serializer.toJson<double?>(hoursBeforeSleep),
      'satietyScore': serializer.toJson<int?>(satietyScore),
      'energyAfterMealScore': serializer.toJson<int?>(energyAfterMealScore),
      'anxietyAfterMealScore': serializer.toJson<int?>(anxietyAfterMealScore),
      'source': serializer.toJson<String>(source),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  NutritionEvent copyWith(
          {String? id,
          String? userId,
          DateTime? consumedAt,
          int? calories,
          double? proteinGrams,
          double? carbsGrams,
          double? fatGrams,
          double? fiberGrams,
          String? mealType,
          bool? isNightEating,
          Value<double?> hoursBeforeSleep = const Value.absent(),
          Value<int?> satietyScore = const Value.absent(),
          Value<int?> energyAfterMealScore = const Value.absent(),
          Value<int?> anxietyAfterMealScore = const Value.absent(),
          String? source,
          DateTime? createdAt}) =>
      NutritionEvent(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        consumedAt: consumedAt ?? this.consumedAt,
        calories: calories ?? this.calories,
        proteinGrams: proteinGrams ?? this.proteinGrams,
        carbsGrams: carbsGrams ?? this.carbsGrams,
        fatGrams: fatGrams ?? this.fatGrams,
        fiberGrams: fiberGrams ?? this.fiberGrams,
        mealType: mealType ?? this.mealType,
        isNightEating: isNightEating ?? this.isNightEating,
        hoursBeforeSleep: hoursBeforeSleep.present
            ? hoursBeforeSleep.value
            : this.hoursBeforeSleep,
        satietyScore:
            satietyScore.present ? satietyScore.value : this.satietyScore,
        energyAfterMealScore: energyAfterMealScore.present
            ? energyAfterMealScore.value
            : this.energyAfterMealScore,
        anxietyAfterMealScore: anxietyAfterMealScore.present
            ? anxietyAfterMealScore.value
            : this.anxietyAfterMealScore,
        source: source ?? this.source,
        createdAt: createdAt ?? this.createdAt,
      );
  NutritionEvent copyWithCompanion(NutritionEventsCompanion data) {
    return NutritionEvent(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      consumedAt:
          data.consumedAt.present ? data.consumedAt.value : this.consumedAt,
      calories: data.calories.present ? data.calories.value : this.calories,
      proteinGrams: data.proteinGrams.present
          ? data.proteinGrams.value
          : this.proteinGrams,
      carbsGrams:
          data.carbsGrams.present ? data.carbsGrams.value : this.carbsGrams,
      fatGrams: data.fatGrams.present ? data.fatGrams.value : this.fatGrams,
      fiberGrams:
          data.fiberGrams.present ? data.fiberGrams.value : this.fiberGrams,
      mealType: data.mealType.present ? data.mealType.value : this.mealType,
      isNightEating: data.isNightEating.present
          ? data.isNightEating.value
          : this.isNightEating,
      hoursBeforeSleep: data.hoursBeforeSleep.present
          ? data.hoursBeforeSleep.value
          : this.hoursBeforeSleep,
      satietyScore: data.satietyScore.present
          ? data.satietyScore.value
          : this.satietyScore,
      energyAfterMealScore: data.energyAfterMealScore.present
          ? data.energyAfterMealScore.value
          : this.energyAfterMealScore,
      anxietyAfterMealScore: data.anxietyAfterMealScore.present
          ? data.anxietyAfterMealScore.value
          : this.anxietyAfterMealScore,
      source: data.source.present ? data.source.value : this.source,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NutritionEvent(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('consumedAt: $consumedAt, ')
          ..write('calories: $calories, ')
          ..write('proteinGrams: $proteinGrams, ')
          ..write('carbsGrams: $carbsGrams, ')
          ..write('fatGrams: $fatGrams, ')
          ..write('fiberGrams: $fiberGrams, ')
          ..write('mealType: $mealType, ')
          ..write('isNightEating: $isNightEating, ')
          ..write('hoursBeforeSleep: $hoursBeforeSleep, ')
          ..write('satietyScore: $satietyScore, ')
          ..write('energyAfterMealScore: $energyAfterMealScore, ')
          ..write('anxietyAfterMealScore: $anxietyAfterMealScore, ')
          ..write('source: $source, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      consumedAt,
      calories,
      proteinGrams,
      carbsGrams,
      fatGrams,
      fiberGrams,
      mealType,
      isNightEating,
      hoursBeforeSleep,
      satietyScore,
      energyAfterMealScore,
      anxietyAfterMealScore,
      source,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NutritionEvent &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.consumedAt == this.consumedAt &&
          other.calories == this.calories &&
          other.proteinGrams == this.proteinGrams &&
          other.carbsGrams == this.carbsGrams &&
          other.fatGrams == this.fatGrams &&
          other.fiberGrams == this.fiberGrams &&
          other.mealType == this.mealType &&
          other.isNightEating == this.isNightEating &&
          other.hoursBeforeSleep == this.hoursBeforeSleep &&
          other.satietyScore == this.satietyScore &&
          other.energyAfterMealScore == this.energyAfterMealScore &&
          other.anxietyAfterMealScore == this.anxietyAfterMealScore &&
          other.source == this.source &&
          other.createdAt == this.createdAt);
}

class NutritionEventsCompanion extends UpdateCompanion<NutritionEvent> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> consumedAt;
  final Value<int> calories;
  final Value<double> proteinGrams;
  final Value<double> carbsGrams;
  final Value<double> fatGrams;
  final Value<double> fiberGrams;
  final Value<String> mealType;
  final Value<bool> isNightEating;
  final Value<double?> hoursBeforeSleep;
  final Value<int?> satietyScore;
  final Value<int?> energyAfterMealScore;
  final Value<int?> anxietyAfterMealScore;
  final Value<String> source;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const NutritionEventsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.consumedAt = const Value.absent(),
    this.calories = const Value.absent(),
    this.proteinGrams = const Value.absent(),
    this.carbsGrams = const Value.absent(),
    this.fatGrams = const Value.absent(),
    this.fiberGrams = const Value.absent(),
    this.mealType = const Value.absent(),
    this.isNightEating = const Value.absent(),
    this.hoursBeforeSleep = const Value.absent(),
    this.satietyScore = const Value.absent(),
    this.energyAfterMealScore = const Value.absent(),
    this.anxietyAfterMealScore = const Value.absent(),
    this.source = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NutritionEventsCompanion.insert({
    required String id,
    required String userId,
    required DateTime consumedAt,
    required int calories,
    required double proteinGrams,
    required double carbsGrams,
    required double fatGrams,
    required double fiberGrams,
    required String mealType,
    required bool isNightEating,
    this.hoursBeforeSleep = const Value.absent(),
    this.satietyScore = const Value.absent(),
    this.energyAfterMealScore = const Value.absent(),
    this.anxietyAfterMealScore = const Value.absent(),
    required String source,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        consumedAt = Value(consumedAt),
        calories = Value(calories),
        proteinGrams = Value(proteinGrams),
        carbsGrams = Value(carbsGrams),
        fatGrams = Value(fatGrams),
        fiberGrams = Value(fiberGrams),
        mealType = Value(mealType),
        isNightEating = Value(isNightEating),
        source = Value(source),
        createdAt = Value(createdAt);
  static Insertable<NutritionEvent> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? consumedAt,
    Expression<int>? calories,
    Expression<double>? proteinGrams,
    Expression<double>? carbsGrams,
    Expression<double>? fatGrams,
    Expression<double>? fiberGrams,
    Expression<String>? mealType,
    Expression<bool>? isNightEating,
    Expression<double>? hoursBeforeSleep,
    Expression<int>? satietyScore,
    Expression<int>? energyAfterMealScore,
    Expression<int>? anxietyAfterMealScore,
    Expression<String>? source,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (consumedAt != null) 'consumed_at': consumedAt,
      if (calories != null) 'calories': calories,
      if (proteinGrams != null) 'protein_grams': proteinGrams,
      if (carbsGrams != null) 'carbs_grams': carbsGrams,
      if (fatGrams != null) 'fat_grams': fatGrams,
      if (fiberGrams != null) 'fiber_grams': fiberGrams,
      if (mealType != null) 'meal_type': mealType,
      if (isNightEating != null) 'is_night_eating': isNightEating,
      if (hoursBeforeSleep != null) 'hours_before_sleep': hoursBeforeSleep,
      if (satietyScore != null) 'satiety_score': satietyScore,
      if (energyAfterMealScore != null)
        'energy_after_meal_score': energyAfterMealScore,
      if (anxietyAfterMealScore != null)
        'anxiety_after_meal_score': anxietyAfterMealScore,
      if (source != null) 'source': source,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NutritionEventsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? consumedAt,
      Value<int>? calories,
      Value<double>? proteinGrams,
      Value<double>? carbsGrams,
      Value<double>? fatGrams,
      Value<double>? fiberGrams,
      Value<String>? mealType,
      Value<bool>? isNightEating,
      Value<double?>? hoursBeforeSleep,
      Value<int?>? satietyScore,
      Value<int?>? energyAfterMealScore,
      Value<int?>? anxietyAfterMealScore,
      Value<String>? source,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return NutritionEventsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      consumedAt: consumedAt ?? this.consumedAt,
      calories: calories ?? this.calories,
      proteinGrams: proteinGrams ?? this.proteinGrams,
      carbsGrams: carbsGrams ?? this.carbsGrams,
      fatGrams: fatGrams ?? this.fatGrams,
      fiberGrams: fiberGrams ?? this.fiberGrams,
      mealType: mealType ?? this.mealType,
      isNightEating: isNightEating ?? this.isNightEating,
      hoursBeforeSleep: hoursBeforeSleep ?? this.hoursBeforeSleep,
      satietyScore: satietyScore ?? this.satietyScore,
      energyAfterMealScore: energyAfterMealScore ?? this.energyAfterMealScore,
      anxietyAfterMealScore:
          anxietyAfterMealScore ?? this.anxietyAfterMealScore,
      source: source ?? this.source,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (consumedAt.present) {
      map['consumed_at'] = Variable<DateTime>(consumedAt.value);
    }
    if (calories.present) {
      map['calories'] = Variable<int>(calories.value);
    }
    if (proteinGrams.present) {
      map['protein_grams'] = Variable<double>(proteinGrams.value);
    }
    if (carbsGrams.present) {
      map['carbs_grams'] = Variable<double>(carbsGrams.value);
    }
    if (fatGrams.present) {
      map['fat_grams'] = Variable<double>(fatGrams.value);
    }
    if (fiberGrams.present) {
      map['fiber_grams'] = Variable<double>(fiberGrams.value);
    }
    if (mealType.present) {
      map['meal_type'] = Variable<String>(mealType.value);
    }
    if (isNightEating.present) {
      map['is_night_eating'] = Variable<bool>(isNightEating.value);
    }
    if (hoursBeforeSleep.present) {
      map['hours_before_sleep'] = Variable<double>(hoursBeforeSleep.value);
    }
    if (satietyScore.present) {
      map['satiety_score'] = Variable<int>(satietyScore.value);
    }
    if (energyAfterMealScore.present) {
      map['energy_after_meal_score'] =
          Variable<int>(energyAfterMealScore.value);
    }
    if (anxietyAfterMealScore.present) {
      map['anxiety_after_meal_score'] =
          Variable<int>(anxietyAfterMealScore.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NutritionEventsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('consumedAt: $consumedAt, ')
          ..write('calories: $calories, ')
          ..write('proteinGrams: $proteinGrams, ')
          ..write('carbsGrams: $carbsGrams, ')
          ..write('fatGrams: $fatGrams, ')
          ..write('fiberGrams: $fiberGrams, ')
          ..write('mealType: $mealType, ')
          ..write('isNightEating: $isNightEating, ')
          ..write('hoursBeforeSleep: $hoursBeforeSleep, ')
          ..write('satietyScore: $satietyScore, ')
          ..write('energyAfterMealScore: $energyAfterMealScore, ')
          ..write('anxietyAfterMealScore: $anxietyAfterMealScore, ')
          ..write('source: $source, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SleepRecordsTable extends SleepRecords
    with TableInfo<$SleepRecordsTable, SleepRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SleepRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_profiles (id)'));
  static const VerificationMeta _sleepStartMeta =
      const VerificationMeta('sleepStart');
  @override
  late final GeneratedColumn<DateTime> sleepStart = GeneratedColumn<DateTime>(
      'sleep_start', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _sleepEndMeta =
      const VerificationMeta('sleepEnd');
  @override
  late final GeneratedColumn<DateTime> sleepEnd = GeneratedColumn<DateTime>(
      'sleep_end', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _totalSleepMinutesMeta =
      const VerificationMeta('totalSleepMinutes');
  @override
  late final GeneratedColumn<int> totalSleepMinutes = GeneratedColumn<int>(
      'total_sleep_minutes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sleepEfficiencyMeta =
      const VerificationMeta('sleepEfficiency');
  @override
  late final GeneratedColumn<double> sleepEfficiency = GeneratedColumn<double>(
      'sleep_efficiency', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _deepSleepMinutesMeta =
      const VerificationMeta('deepSleepMinutes');
  @override
  late final GeneratedColumn<int> deepSleepMinutes = GeneratedColumn<int>(
      'deep_sleep_minutes', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _remSleepMinutesMeta =
      const VerificationMeta('remSleepMinutes');
  @override
  late final GeneratedColumn<int> remSleepMinutes = GeneratedColumn<int>(
      'rem_sleep_minutes', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _awakeningsMeta =
      const VerificationMeta('awakenings');
  @override
  late final GeneratedColumn<int> awakenings = GeneratedColumn<int>(
      'awakenings', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        sleepStart,
        sleepEnd,
        totalSleepMinutes,
        sleepEfficiency,
        deepSleepMinutes,
        remSleepMinutes,
        awakenings,
        source,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sleep_records';
  @override
  VerificationContext validateIntegrity(Insertable<SleepRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('sleep_start')) {
      context.handle(
          _sleepStartMeta,
          sleepStart.isAcceptableOrUnknown(
              data['sleep_start']!, _sleepStartMeta));
    } else if (isInserting) {
      context.missing(_sleepStartMeta);
    }
    if (data.containsKey('sleep_end')) {
      context.handle(_sleepEndMeta,
          sleepEnd.isAcceptableOrUnknown(data['sleep_end']!, _sleepEndMeta));
    } else if (isInserting) {
      context.missing(_sleepEndMeta);
    }
    if (data.containsKey('total_sleep_minutes')) {
      context.handle(
          _totalSleepMinutesMeta,
          totalSleepMinutes.isAcceptableOrUnknown(
              data['total_sleep_minutes']!, _totalSleepMinutesMeta));
    } else if (isInserting) {
      context.missing(_totalSleepMinutesMeta);
    }
    if (data.containsKey('sleep_efficiency')) {
      context.handle(
          _sleepEfficiencyMeta,
          sleepEfficiency.isAcceptableOrUnknown(
              data['sleep_efficiency']!, _sleepEfficiencyMeta));
    } else if (isInserting) {
      context.missing(_sleepEfficiencyMeta);
    }
    if (data.containsKey('deep_sleep_minutes')) {
      context.handle(
          _deepSleepMinutesMeta,
          deepSleepMinutes.isAcceptableOrUnknown(
              data['deep_sleep_minutes']!, _deepSleepMinutesMeta));
    }
    if (data.containsKey('rem_sleep_minutes')) {
      context.handle(
          _remSleepMinutesMeta,
          remSleepMinutes.isAcceptableOrUnknown(
              data['rem_sleep_minutes']!, _remSleepMinutesMeta));
    }
    if (data.containsKey('awakenings')) {
      context.handle(
          _awakeningsMeta,
          awakenings.isAcceptableOrUnknown(
              data['awakenings']!, _awakeningsMeta));
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SleepRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SleepRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      sleepStart: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}sleep_start'])!,
      sleepEnd: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}sleep_end'])!,
      totalSleepMinutes: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_sleep_minutes'])!,
      sleepEfficiency: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}sleep_efficiency'])!,
      deepSleepMinutes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}deep_sleep_minutes']),
      remSleepMinutes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rem_sleep_minutes']),
      awakenings: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}awakenings']),
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $SleepRecordsTable createAlias(String alias) {
    return $SleepRecordsTable(attachedDatabase, alias);
  }
}

class SleepRecord extends DataClass implements Insertable<SleepRecord> {
  final String id;
  final String userId;
  final DateTime sleepStart;
  final DateTime sleepEnd;
  final int totalSleepMinutes;
  final double sleepEfficiency;
  final int? deepSleepMinutes;
  final int? remSleepMinutes;
  final int? awakenings;
  final String source;
  final DateTime createdAt;
  const SleepRecord(
      {required this.id,
      required this.userId,
      required this.sleepStart,
      required this.sleepEnd,
      required this.totalSleepMinutes,
      required this.sleepEfficiency,
      this.deepSleepMinutes,
      this.remSleepMinutes,
      this.awakenings,
      required this.source,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['sleep_start'] = Variable<DateTime>(sleepStart);
    map['sleep_end'] = Variable<DateTime>(sleepEnd);
    map['total_sleep_minutes'] = Variable<int>(totalSleepMinutes);
    map['sleep_efficiency'] = Variable<double>(sleepEfficiency);
    if (!nullToAbsent || deepSleepMinutes != null) {
      map['deep_sleep_minutes'] = Variable<int>(deepSleepMinutes);
    }
    if (!nullToAbsent || remSleepMinutes != null) {
      map['rem_sleep_minutes'] = Variable<int>(remSleepMinutes);
    }
    if (!nullToAbsent || awakenings != null) {
      map['awakenings'] = Variable<int>(awakenings);
    }
    map['source'] = Variable<String>(source);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  SleepRecordsCompanion toCompanion(bool nullToAbsent) {
    return SleepRecordsCompanion(
      id: Value(id),
      userId: Value(userId),
      sleepStart: Value(sleepStart),
      sleepEnd: Value(sleepEnd),
      totalSleepMinutes: Value(totalSleepMinutes),
      sleepEfficiency: Value(sleepEfficiency),
      deepSleepMinutes: deepSleepMinutes == null && nullToAbsent
          ? const Value.absent()
          : Value(deepSleepMinutes),
      remSleepMinutes: remSleepMinutes == null && nullToAbsent
          ? const Value.absent()
          : Value(remSleepMinutes),
      awakenings: awakenings == null && nullToAbsent
          ? const Value.absent()
          : Value(awakenings),
      source: Value(source),
      createdAt: Value(createdAt),
    );
  }

  factory SleepRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SleepRecord(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      sleepStart: serializer.fromJson<DateTime>(json['sleepStart']),
      sleepEnd: serializer.fromJson<DateTime>(json['sleepEnd']),
      totalSleepMinutes: serializer.fromJson<int>(json['totalSleepMinutes']),
      sleepEfficiency: serializer.fromJson<double>(json['sleepEfficiency']),
      deepSleepMinutes: serializer.fromJson<int?>(json['deepSleepMinutes']),
      remSleepMinutes: serializer.fromJson<int?>(json['remSleepMinutes']),
      awakenings: serializer.fromJson<int?>(json['awakenings']),
      source: serializer.fromJson<String>(json['source']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'sleepStart': serializer.toJson<DateTime>(sleepStart),
      'sleepEnd': serializer.toJson<DateTime>(sleepEnd),
      'totalSleepMinutes': serializer.toJson<int>(totalSleepMinutes),
      'sleepEfficiency': serializer.toJson<double>(sleepEfficiency),
      'deepSleepMinutes': serializer.toJson<int?>(deepSleepMinutes),
      'remSleepMinutes': serializer.toJson<int?>(remSleepMinutes),
      'awakenings': serializer.toJson<int?>(awakenings),
      'source': serializer.toJson<String>(source),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  SleepRecord copyWith(
          {String? id,
          String? userId,
          DateTime? sleepStart,
          DateTime? sleepEnd,
          int? totalSleepMinutes,
          double? sleepEfficiency,
          Value<int?> deepSleepMinutes = const Value.absent(),
          Value<int?> remSleepMinutes = const Value.absent(),
          Value<int?> awakenings = const Value.absent(),
          String? source,
          DateTime? createdAt}) =>
      SleepRecord(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        sleepStart: sleepStart ?? this.sleepStart,
        sleepEnd: sleepEnd ?? this.sleepEnd,
        totalSleepMinutes: totalSleepMinutes ?? this.totalSleepMinutes,
        sleepEfficiency: sleepEfficiency ?? this.sleepEfficiency,
        deepSleepMinutes: deepSleepMinutes.present
            ? deepSleepMinutes.value
            : this.deepSleepMinutes,
        remSleepMinutes: remSleepMinutes.present
            ? remSleepMinutes.value
            : this.remSleepMinutes,
        awakenings: awakenings.present ? awakenings.value : this.awakenings,
        source: source ?? this.source,
        createdAt: createdAt ?? this.createdAt,
      );
  SleepRecord copyWithCompanion(SleepRecordsCompanion data) {
    return SleepRecord(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      sleepStart:
          data.sleepStart.present ? data.sleepStart.value : this.sleepStart,
      sleepEnd: data.sleepEnd.present ? data.sleepEnd.value : this.sleepEnd,
      totalSleepMinutes: data.totalSleepMinutes.present
          ? data.totalSleepMinutes.value
          : this.totalSleepMinutes,
      sleepEfficiency: data.sleepEfficiency.present
          ? data.sleepEfficiency.value
          : this.sleepEfficiency,
      deepSleepMinutes: data.deepSleepMinutes.present
          ? data.deepSleepMinutes.value
          : this.deepSleepMinutes,
      remSleepMinutes: data.remSleepMinutes.present
          ? data.remSleepMinutes.value
          : this.remSleepMinutes,
      awakenings:
          data.awakenings.present ? data.awakenings.value : this.awakenings,
      source: data.source.present ? data.source.value : this.source,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SleepRecord(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('sleepStart: $sleepStart, ')
          ..write('sleepEnd: $sleepEnd, ')
          ..write('totalSleepMinutes: $totalSleepMinutes, ')
          ..write('sleepEfficiency: $sleepEfficiency, ')
          ..write('deepSleepMinutes: $deepSleepMinutes, ')
          ..write('remSleepMinutes: $remSleepMinutes, ')
          ..write('awakenings: $awakenings, ')
          ..write('source: $source, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      sleepStart,
      sleepEnd,
      totalSleepMinutes,
      sleepEfficiency,
      deepSleepMinutes,
      remSleepMinutes,
      awakenings,
      source,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SleepRecord &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.sleepStart == this.sleepStart &&
          other.sleepEnd == this.sleepEnd &&
          other.totalSleepMinutes == this.totalSleepMinutes &&
          other.sleepEfficiency == this.sleepEfficiency &&
          other.deepSleepMinutes == this.deepSleepMinutes &&
          other.remSleepMinutes == this.remSleepMinutes &&
          other.awakenings == this.awakenings &&
          other.source == this.source &&
          other.createdAt == this.createdAt);
}

class SleepRecordsCompanion extends UpdateCompanion<SleepRecord> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> sleepStart;
  final Value<DateTime> sleepEnd;
  final Value<int> totalSleepMinutes;
  final Value<double> sleepEfficiency;
  final Value<int?> deepSleepMinutes;
  final Value<int?> remSleepMinutes;
  final Value<int?> awakenings;
  final Value<String> source;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const SleepRecordsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.sleepStart = const Value.absent(),
    this.sleepEnd = const Value.absent(),
    this.totalSleepMinutes = const Value.absent(),
    this.sleepEfficiency = const Value.absent(),
    this.deepSleepMinutes = const Value.absent(),
    this.remSleepMinutes = const Value.absent(),
    this.awakenings = const Value.absent(),
    this.source = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SleepRecordsCompanion.insert({
    required String id,
    required String userId,
    required DateTime sleepStart,
    required DateTime sleepEnd,
    required int totalSleepMinutes,
    required double sleepEfficiency,
    this.deepSleepMinutes = const Value.absent(),
    this.remSleepMinutes = const Value.absent(),
    this.awakenings = const Value.absent(),
    required String source,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        sleepStart = Value(sleepStart),
        sleepEnd = Value(sleepEnd),
        totalSleepMinutes = Value(totalSleepMinutes),
        sleepEfficiency = Value(sleepEfficiency),
        source = Value(source),
        createdAt = Value(createdAt);
  static Insertable<SleepRecord> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? sleepStart,
    Expression<DateTime>? sleepEnd,
    Expression<int>? totalSleepMinutes,
    Expression<double>? sleepEfficiency,
    Expression<int>? deepSleepMinutes,
    Expression<int>? remSleepMinutes,
    Expression<int>? awakenings,
    Expression<String>? source,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (sleepStart != null) 'sleep_start': sleepStart,
      if (sleepEnd != null) 'sleep_end': sleepEnd,
      if (totalSleepMinutes != null) 'total_sleep_minutes': totalSleepMinutes,
      if (sleepEfficiency != null) 'sleep_efficiency': sleepEfficiency,
      if (deepSleepMinutes != null) 'deep_sleep_minutes': deepSleepMinutes,
      if (remSleepMinutes != null) 'rem_sleep_minutes': remSleepMinutes,
      if (awakenings != null) 'awakenings': awakenings,
      if (source != null) 'source': source,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SleepRecordsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? sleepStart,
      Value<DateTime>? sleepEnd,
      Value<int>? totalSleepMinutes,
      Value<double>? sleepEfficiency,
      Value<int?>? deepSleepMinutes,
      Value<int?>? remSleepMinutes,
      Value<int?>? awakenings,
      Value<String>? source,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return SleepRecordsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      sleepStart: sleepStart ?? this.sleepStart,
      sleepEnd: sleepEnd ?? this.sleepEnd,
      totalSleepMinutes: totalSleepMinutes ?? this.totalSleepMinutes,
      sleepEfficiency: sleepEfficiency ?? this.sleepEfficiency,
      deepSleepMinutes: deepSleepMinutes ?? this.deepSleepMinutes,
      remSleepMinutes: remSleepMinutes ?? this.remSleepMinutes,
      awakenings: awakenings ?? this.awakenings,
      source: source ?? this.source,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (sleepStart.present) {
      map['sleep_start'] = Variable<DateTime>(sleepStart.value);
    }
    if (sleepEnd.present) {
      map['sleep_end'] = Variable<DateTime>(sleepEnd.value);
    }
    if (totalSleepMinutes.present) {
      map['total_sleep_minutes'] = Variable<int>(totalSleepMinutes.value);
    }
    if (sleepEfficiency.present) {
      map['sleep_efficiency'] = Variable<double>(sleepEfficiency.value);
    }
    if (deepSleepMinutes.present) {
      map['deep_sleep_minutes'] = Variable<int>(deepSleepMinutes.value);
    }
    if (remSleepMinutes.present) {
      map['rem_sleep_minutes'] = Variable<int>(remSleepMinutes.value);
    }
    if (awakenings.present) {
      map['awakenings'] = Variable<int>(awakenings.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SleepRecordsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('sleepStart: $sleepStart, ')
          ..write('sleepEnd: $sleepEnd, ')
          ..write('totalSleepMinutes: $totalSleepMinutes, ')
          ..write('sleepEfficiency: $sleepEfficiency, ')
          ..write('deepSleepMinutes: $deepSleepMinutes, ')
          ..write('remSleepMinutes: $remSleepMinutes, ')
          ..write('awakenings: $awakenings, ')
          ..write('source: $source, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DailyBiometricsTableTable extends DailyBiometricsTable
    with TableInfo<$DailyBiometricsTableTable, DailyBiometricsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailyBiometricsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_profiles (id)'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _hrvAverageMeta =
      const VerificationMeta('hrvAverage');
  @override
  late final GeneratedColumn<double> hrvAverage = GeneratedColumn<double>(
      'hrv_average', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _restingHeartRateMeta =
      const VerificationMeta('restingHeartRate');
  @override
  late final GeneratedColumn<int> restingHeartRate = GeneratedColumn<int>(
      'resting_heart_rate', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _basalTemperatureDeviationMeta =
      const VerificationMeta('basalTemperatureDeviation');
  @override
  late final GeneratedColumn<double> basalTemperatureDeviation =
      GeneratedColumn<double>('basal_temperature_deviation', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _totalStepsMeta =
      const VerificationMeta('totalSteps');
  @override
  late final GeneratedColumn<int> totalSteps = GeneratedColumn<int>(
      'total_steps', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _estimatedNeatKcalMeta =
      const VerificationMeta('estimatedNeatKcal');
  @override
  late final GeneratedColumn<int> estimatedNeatKcal = GeneratedColumn<int>(
      'estimated_neat_kcal', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _subjectiveEnergyScoreMeta =
      const VerificationMeta('subjectiveEnergyScore');
  @override
  late final GeneratedColumn<int> subjectiveEnergyScore = GeneratedColumn<int>(
      'subjective_energy_score', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _subjectiveStressScoreMeta =
      const VerificationMeta('subjectiveStressScore');
  @override
  late final GeneratedColumn<int> subjectiveStressScore = GeneratedColumn<int>(
      'subjective_stress_score', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        date,
        hrvAverage,
        restingHeartRate,
        basalTemperatureDeviation,
        totalSteps,
        estimatedNeatKcal,
        subjectiveEnergyScore,
        subjectiveStressScore,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'daily_biometrics_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<DailyBiometricsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('hrv_average')) {
      context.handle(
          _hrvAverageMeta,
          hrvAverage.isAcceptableOrUnknown(
              data['hrv_average']!, _hrvAverageMeta));
    }
    if (data.containsKey('resting_heart_rate')) {
      context.handle(
          _restingHeartRateMeta,
          restingHeartRate.isAcceptableOrUnknown(
              data['resting_heart_rate']!, _restingHeartRateMeta));
    }
    if (data.containsKey('basal_temperature_deviation')) {
      context.handle(
          _basalTemperatureDeviationMeta,
          basalTemperatureDeviation.isAcceptableOrUnknown(
              data['basal_temperature_deviation']!,
              _basalTemperatureDeviationMeta));
    }
    if (data.containsKey('total_steps')) {
      context.handle(
          _totalStepsMeta,
          totalSteps.isAcceptableOrUnknown(
              data['total_steps']!, _totalStepsMeta));
    }
    if (data.containsKey('estimated_neat_kcal')) {
      context.handle(
          _estimatedNeatKcalMeta,
          estimatedNeatKcal.isAcceptableOrUnknown(
              data['estimated_neat_kcal']!, _estimatedNeatKcalMeta));
    }
    if (data.containsKey('subjective_energy_score')) {
      context.handle(
          _subjectiveEnergyScoreMeta,
          subjectiveEnergyScore.isAcceptableOrUnknown(
              data['subjective_energy_score']!, _subjectiveEnergyScoreMeta));
    }
    if (data.containsKey('subjective_stress_score')) {
      context.handle(
          _subjectiveStressScoreMeta,
          subjectiveStressScore.isAcceptableOrUnknown(
              data['subjective_stress_score']!, _subjectiveStressScoreMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DailyBiometricsTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DailyBiometricsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      hrvAverage: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}hrv_average']),
      restingHeartRate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}resting_heart_rate']),
      basalTemperatureDeviation: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}basal_temperature_deviation']),
      totalSteps: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_steps']),
      estimatedNeatKcal: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}estimated_neat_kcal']),
      subjectiveEnergyScore: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}subjective_energy_score']),
      subjectiveStressScore: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}subjective_stress_score']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $DailyBiometricsTableTable createAlias(String alias) {
    return $DailyBiometricsTableTable(attachedDatabase, alias);
  }
}

class DailyBiometricsTableData extends DataClass
    implements Insertable<DailyBiometricsTableData> {
  final String id;
  final String userId;
  final DateTime date;
  final double? hrvAverage;
  final int? restingHeartRate;
  final double? basalTemperatureDeviation;
  final int? totalSteps;
  final int? estimatedNeatKcal;
  final int? subjectiveEnergyScore;
  final int? subjectiveStressScore;
  final DateTime createdAt;
  const DailyBiometricsTableData(
      {required this.id,
      required this.userId,
      required this.date,
      this.hrvAverage,
      this.restingHeartRate,
      this.basalTemperatureDeviation,
      this.totalSteps,
      this.estimatedNeatKcal,
      this.subjectiveEnergyScore,
      this.subjectiveStressScore,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || hrvAverage != null) {
      map['hrv_average'] = Variable<double>(hrvAverage);
    }
    if (!nullToAbsent || restingHeartRate != null) {
      map['resting_heart_rate'] = Variable<int>(restingHeartRate);
    }
    if (!nullToAbsent || basalTemperatureDeviation != null) {
      map['basal_temperature_deviation'] =
          Variable<double>(basalTemperatureDeviation);
    }
    if (!nullToAbsent || totalSteps != null) {
      map['total_steps'] = Variable<int>(totalSteps);
    }
    if (!nullToAbsent || estimatedNeatKcal != null) {
      map['estimated_neat_kcal'] = Variable<int>(estimatedNeatKcal);
    }
    if (!nullToAbsent || subjectiveEnergyScore != null) {
      map['subjective_energy_score'] = Variable<int>(subjectiveEnergyScore);
    }
    if (!nullToAbsent || subjectiveStressScore != null) {
      map['subjective_stress_score'] = Variable<int>(subjectiveStressScore);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  DailyBiometricsTableCompanion toCompanion(bool nullToAbsent) {
    return DailyBiometricsTableCompanion(
      id: Value(id),
      userId: Value(userId),
      date: Value(date),
      hrvAverage: hrvAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(hrvAverage),
      restingHeartRate: restingHeartRate == null && nullToAbsent
          ? const Value.absent()
          : Value(restingHeartRate),
      basalTemperatureDeviation:
          basalTemperatureDeviation == null && nullToAbsent
              ? const Value.absent()
              : Value(basalTemperatureDeviation),
      totalSteps: totalSteps == null && nullToAbsent
          ? const Value.absent()
          : Value(totalSteps),
      estimatedNeatKcal: estimatedNeatKcal == null && nullToAbsent
          ? const Value.absent()
          : Value(estimatedNeatKcal),
      subjectiveEnergyScore: subjectiveEnergyScore == null && nullToAbsent
          ? const Value.absent()
          : Value(subjectiveEnergyScore),
      subjectiveStressScore: subjectiveStressScore == null && nullToAbsent
          ? const Value.absent()
          : Value(subjectiveStressScore),
      createdAt: Value(createdAt),
    );
  }

  factory DailyBiometricsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyBiometricsTableData(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      date: serializer.fromJson<DateTime>(json['date']),
      hrvAverage: serializer.fromJson<double?>(json['hrvAverage']),
      restingHeartRate: serializer.fromJson<int?>(json['restingHeartRate']),
      basalTemperatureDeviation:
          serializer.fromJson<double?>(json['basalTemperatureDeviation']),
      totalSteps: serializer.fromJson<int?>(json['totalSteps']),
      estimatedNeatKcal: serializer.fromJson<int?>(json['estimatedNeatKcal']),
      subjectiveEnergyScore:
          serializer.fromJson<int?>(json['subjectiveEnergyScore']),
      subjectiveStressScore:
          serializer.fromJson<int?>(json['subjectiveStressScore']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'date': serializer.toJson<DateTime>(date),
      'hrvAverage': serializer.toJson<double?>(hrvAverage),
      'restingHeartRate': serializer.toJson<int?>(restingHeartRate),
      'basalTemperatureDeviation':
          serializer.toJson<double?>(basalTemperatureDeviation),
      'totalSteps': serializer.toJson<int?>(totalSteps),
      'estimatedNeatKcal': serializer.toJson<int?>(estimatedNeatKcal),
      'subjectiveEnergyScore': serializer.toJson<int?>(subjectiveEnergyScore),
      'subjectiveStressScore': serializer.toJson<int?>(subjectiveStressScore),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  DailyBiometricsTableData copyWith(
          {String? id,
          String? userId,
          DateTime? date,
          Value<double?> hrvAverage = const Value.absent(),
          Value<int?> restingHeartRate = const Value.absent(),
          Value<double?> basalTemperatureDeviation = const Value.absent(),
          Value<int?> totalSteps = const Value.absent(),
          Value<int?> estimatedNeatKcal = const Value.absent(),
          Value<int?> subjectiveEnergyScore = const Value.absent(),
          Value<int?> subjectiveStressScore = const Value.absent(),
          DateTime? createdAt}) =>
      DailyBiometricsTableData(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        date: date ?? this.date,
        hrvAverage: hrvAverage.present ? hrvAverage.value : this.hrvAverage,
        restingHeartRate: restingHeartRate.present
            ? restingHeartRate.value
            : this.restingHeartRate,
        basalTemperatureDeviation: basalTemperatureDeviation.present
            ? basalTemperatureDeviation.value
            : this.basalTemperatureDeviation,
        totalSteps: totalSteps.present ? totalSteps.value : this.totalSteps,
        estimatedNeatKcal: estimatedNeatKcal.present
            ? estimatedNeatKcal.value
            : this.estimatedNeatKcal,
        subjectiveEnergyScore: subjectiveEnergyScore.present
            ? subjectiveEnergyScore.value
            : this.subjectiveEnergyScore,
        subjectiveStressScore: subjectiveStressScore.present
            ? subjectiveStressScore.value
            : this.subjectiveStressScore,
        createdAt: createdAt ?? this.createdAt,
      );
  DailyBiometricsTableData copyWithCompanion(
      DailyBiometricsTableCompanion data) {
    return DailyBiometricsTableData(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      date: data.date.present ? data.date.value : this.date,
      hrvAverage:
          data.hrvAverage.present ? data.hrvAverage.value : this.hrvAverage,
      restingHeartRate: data.restingHeartRate.present
          ? data.restingHeartRate.value
          : this.restingHeartRate,
      basalTemperatureDeviation: data.basalTemperatureDeviation.present
          ? data.basalTemperatureDeviation.value
          : this.basalTemperatureDeviation,
      totalSteps:
          data.totalSteps.present ? data.totalSteps.value : this.totalSteps,
      estimatedNeatKcal: data.estimatedNeatKcal.present
          ? data.estimatedNeatKcal.value
          : this.estimatedNeatKcal,
      subjectiveEnergyScore: data.subjectiveEnergyScore.present
          ? data.subjectiveEnergyScore.value
          : this.subjectiveEnergyScore,
      subjectiveStressScore: data.subjectiveStressScore.present
          ? data.subjectiveStressScore.value
          : this.subjectiveStressScore,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DailyBiometricsTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('hrvAverage: $hrvAverage, ')
          ..write('restingHeartRate: $restingHeartRate, ')
          ..write('basalTemperatureDeviation: $basalTemperatureDeviation, ')
          ..write('totalSteps: $totalSteps, ')
          ..write('estimatedNeatKcal: $estimatedNeatKcal, ')
          ..write('subjectiveEnergyScore: $subjectiveEnergyScore, ')
          ..write('subjectiveStressScore: $subjectiveStressScore, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      date,
      hrvAverage,
      restingHeartRate,
      basalTemperatureDeviation,
      totalSteps,
      estimatedNeatKcal,
      subjectiveEnergyScore,
      subjectiveStressScore,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyBiometricsTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.date == this.date &&
          other.hrvAverage == this.hrvAverage &&
          other.restingHeartRate == this.restingHeartRate &&
          other.basalTemperatureDeviation == this.basalTemperatureDeviation &&
          other.totalSteps == this.totalSteps &&
          other.estimatedNeatKcal == this.estimatedNeatKcal &&
          other.subjectiveEnergyScore == this.subjectiveEnergyScore &&
          other.subjectiveStressScore == this.subjectiveStressScore &&
          other.createdAt == this.createdAt);
}

class DailyBiometricsTableCompanion
    extends UpdateCompanion<DailyBiometricsTableData> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> date;
  final Value<double?> hrvAverage;
  final Value<int?> restingHeartRate;
  final Value<double?> basalTemperatureDeviation;
  final Value<int?> totalSteps;
  final Value<int?> estimatedNeatKcal;
  final Value<int?> subjectiveEnergyScore;
  final Value<int?> subjectiveStressScore;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const DailyBiometricsTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.date = const Value.absent(),
    this.hrvAverage = const Value.absent(),
    this.restingHeartRate = const Value.absent(),
    this.basalTemperatureDeviation = const Value.absent(),
    this.totalSteps = const Value.absent(),
    this.estimatedNeatKcal = const Value.absent(),
    this.subjectiveEnergyScore = const Value.absent(),
    this.subjectiveStressScore = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DailyBiometricsTableCompanion.insert({
    required String id,
    required String userId,
    required DateTime date,
    this.hrvAverage = const Value.absent(),
    this.restingHeartRate = const Value.absent(),
    this.basalTemperatureDeviation = const Value.absent(),
    this.totalSteps = const Value.absent(),
    this.estimatedNeatKcal = const Value.absent(),
    this.subjectiveEnergyScore = const Value.absent(),
    this.subjectiveStressScore = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        date = Value(date),
        createdAt = Value(createdAt);
  static Insertable<DailyBiometricsTableData> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? date,
    Expression<double>? hrvAverage,
    Expression<int>? restingHeartRate,
    Expression<double>? basalTemperatureDeviation,
    Expression<int>? totalSteps,
    Expression<int>? estimatedNeatKcal,
    Expression<int>? subjectiveEnergyScore,
    Expression<int>? subjectiveStressScore,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (date != null) 'date': date,
      if (hrvAverage != null) 'hrv_average': hrvAverage,
      if (restingHeartRate != null) 'resting_heart_rate': restingHeartRate,
      if (basalTemperatureDeviation != null)
        'basal_temperature_deviation': basalTemperatureDeviation,
      if (totalSteps != null) 'total_steps': totalSteps,
      if (estimatedNeatKcal != null) 'estimated_neat_kcal': estimatedNeatKcal,
      if (subjectiveEnergyScore != null)
        'subjective_energy_score': subjectiveEnergyScore,
      if (subjectiveStressScore != null)
        'subjective_stress_score': subjectiveStressScore,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DailyBiometricsTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? date,
      Value<double?>? hrvAverage,
      Value<int?>? restingHeartRate,
      Value<double?>? basalTemperatureDeviation,
      Value<int?>? totalSteps,
      Value<int?>? estimatedNeatKcal,
      Value<int?>? subjectiveEnergyScore,
      Value<int?>? subjectiveStressScore,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return DailyBiometricsTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      date: date ?? this.date,
      hrvAverage: hrvAverage ?? this.hrvAverage,
      restingHeartRate: restingHeartRate ?? this.restingHeartRate,
      basalTemperatureDeviation:
          basalTemperatureDeviation ?? this.basalTemperatureDeviation,
      totalSteps: totalSteps ?? this.totalSteps,
      estimatedNeatKcal: estimatedNeatKcal ?? this.estimatedNeatKcal,
      subjectiveEnergyScore:
          subjectiveEnergyScore ?? this.subjectiveEnergyScore,
      subjectiveStressScore:
          subjectiveStressScore ?? this.subjectiveStressScore,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (hrvAverage.present) {
      map['hrv_average'] = Variable<double>(hrvAverage.value);
    }
    if (restingHeartRate.present) {
      map['resting_heart_rate'] = Variable<int>(restingHeartRate.value);
    }
    if (basalTemperatureDeviation.present) {
      map['basal_temperature_deviation'] =
          Variable<double>(basalTemperatureDeviation.value);
    }
    if (totalSteps.present) {
      map['total_steps'] = Variable<int>(totalSteps.value);
    }
    if (estimatedNeatKcal.present) {
      map['estimated_neat_kcal'] = Variable<int>(estimatedNeatKcal.value);
    }
    if (subjectiveEnergyScore.present) {
      map['subjective_energy_score'] =
          Variable<int>(subjectiveEnergyScore.value);
    }
    if (subjectiveStressScore.present) {
      map['subjective_stress_score'] =
          Variable<int>(subjectiveStressScore.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyBiometricsTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('hrvAverage: $hrvAverage, ')
          ..write('restingHeartRate: $restingHeartRate, ')
          ..write('basalTemperatureDeviation: $basalTemperatureDeviation, ')
          ..write('totalSteps: $totalSteps, ')
          ..write('estimatedNeatKcal: $estimatedNeatKcal, ')
          ..write('subjectiveEnergyScore: $subjectiveEnergyScore, ')
          ..write('subjectiveStressScore: $subjectiveStressScore, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TrainingSessionsTable extends TrainingSessions
    with TableInfo<$TrainingSessionsTable, TrainingSession> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TrainingSessionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_profiles (id)'));
  static const VerificationMeta _startAtMeta =
      const VerificationMeta('startAt');
  @override
  late final GeneratedColumn<DateTime> startAt = GeneratedColumn<DateTime>(
      'start_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endAtMeta = const VerificationMeta('endAt');
  @override
  late final GeneratedColumn<DateTime> endAt = GeneratedColumn<DateTime>(
      'end_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _intensityMeta =
      const VerificationMeta('intensity');
  @override
  late final GeneratedColumn<String> intensity = GeneratedColumn<String>(
      'intensity', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _trainingTypeMeta =
      const VerificationMeta('trainingType');
  @override
  late final GeneratedColumn<String> trainingType = GeneratedColumn<String>(
      'training_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _caloriesBurnedMeta =
      const VerificationMeta('caloriesBurned');
  @override
  late final GeneratedColumn<int> caloriesBurned = GeneratedColumn<int>(
      'calories_burned', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isNightTrainingMeta =
      const VerificationMeta('isNightTraining');
  @override
  late final GeneratedColumn<bool> isNightTraining = GeneratedColumn<bool>(
      'is_night_training', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_night_training" IN (0, 1))'));
  static const VerificationMeta _perceivedExertionMeta =
      const VerificationMeta('perceivedExertion');
  @override
  late final GeneratedColumn<int> perceivedExertion = GeneratedColumn<int>(
      'perceived_exertion', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        startAt,
        endAt,
        intensity,
        trainingType,
        caloriesBurned,
        isNightTraining,
        perceivedExertion,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'training_sessions';
  @override
  VerificationContext validateIntegrity(Insertable<TrainingSession> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('start_at')) {
      context.handle(_startAtMeta,
          startAt.isAcceptableOrUnknown(data['start_at']!, _startAtMeta));
    } else if (isInserting) {
      context.missing(_startAtMeta);
    }
    if (data.containsKey('end_at')) {
      context.handle(
          _endAtMeta, endAt.isAcceptableOrUnknown(data['end_at']!, _endAtMeta));
    } else if (isInserting) {
      context.missing(_endAtMeta);
    }
    if (data.containsKey('intensity')) {
      context.handle(_intensityMeta,
          intensity.isAcceptableOrUnknown(data['intensity']!, _intensityMeta));
    } else if (isInserting) {
      context.missing(_intensityMeta);
    }
    if (data.containsKey('training_type')) {
      context.handle(
          _trainingTypeMeta,
          trainingType.isAcceptableOrUnknown(
              data['training_type']!, _trainingTypeMeta));
    } else if (isInserting) {
      context.missing(_trainingTypeMeta);
    }
    if (data.containsKey('calories_burned')) {
      context.handle(
          _caloriesBurnedMeta,
          caloriesBurned.isAcceptableOrUnknown(
              data['calories_burned']!, _caloriesBurnedMeta));
    } else if (isInserting) {
      context.missing(_caloriesBurnedMeta);
    }
    if (data.containsKey('is_night_training')) {
      context.handle(
          _isNightTrainingMeta,
          isNightTraining.isAcceptableOrUnknown(
              data['is_night_training']!, _isNightTrainingMeta));
    } else if (isInserting) {
      context.missing(_isNightTrainingMeta);
    }
    if (data.containsKey('perceived_exertion')) {
      context.handle(
          _perceivedExertionMeta,
          perceivedExertion.isAcceptableOrUnknown(
              data['perceived_exertion']!, _perceivedExertionMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TrainingSession map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TrainingSession(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      startAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_at'])!,
      endAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_at'])!,
      intensity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}intensity'])!,
      trainingType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}training_type'])!,
      caloriesBurned: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}calories_burned'])!,
      isNightTraining: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_night_training'])!,
      perceivedExertion: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}perceived_exertion']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $TrainingSessionsTable createAlias(String alias) {
    return $TrainingSessionsTable(attachedDatabase, alias);
  }
}

class TrainingSession extends DataClass implements Insertable<TrainingSession> {
  final String id;
  final String userId;
  final DateTime startAt;
  final DateTime endAt;
  final String intensity;
  final String trainingType;
  final int caloriesBurned;
  final bool isNightTraining;
  final int? perceivedExertion;
  final DateTime createdAt;
  const TrainingSession(
      {required this.id,
      required this.userId,
      required this.startAt,
      required this.endAt,
      required this.intensity,
      required this.trainingType,
      required this.caloriesBurned,
      required this.isNightTraining,
      this.perceivedExertion,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['start_at'] = Variable<DateTime>(startAt);
    map['end_at'] = Variable<DateTime>(endAt);
    map['intensity'] = Variable<String>(intensity);
    map['training_type'] = Variable<String>(trainingType);
    map['calories_burned'] = Variable<int>(caloriesBurned);
    map['is_night_training'] = Variable<bool>(isNightTraining);
    if (!nullToAbsent || perceivedExertion != null) {
      map['perceived_exertion'] = Variable<int>(perceivedExertion);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  TrainingSessionsCompanion toCompanion(bool nullToAbsent) {
    return TrainingSessionsCompanion(
      id: Value(id),
      userId: Value(userId),
      startAt: Value(startAt),
      endAt: Value(endAt),
      intensity: Value(intensity),
      trainingType: Value(trainingType),
      caloriesBurned: Value(caloriesBurned),
      isNightTraining: Value(isNightTraining),
      perceivedExertion: perceivedExertion == null && nullToAbsent
          ? const Value.absent()
          : Value(perceivedExertion),
      createdAt: Value(createdAt),
    );
  }

  factory TrainingSession.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TrainingSession(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      startAt: serializer.fromJson<DateTime>(json['startAt']),
      endAt: serializer.fromJson<DateTime>(json['endAt']),
      intensity: serializer.fromJson<String>(json['intensity']),
      trainingType: serializer.fromJson<String>(json['trainingType']),
      caloriesBurned: serializer.fromJson<int>(json['caloriesBurned']),
      isNightTraining: serializer.fromJson<bool>(json['isNightTraining']),
      perceivedExertion: serializer.fromJson<int?>(json['perceivedExertion']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'startAt': serializer.toJson<DateTime>(startAt),
      'endAt': serializer.toJson<DateTime>(endAt),
      'intensity': serializer.toJson<String>(intensity),
      'trainingType': serializer.toJson<String>(trainingType),
      'caloriesBurned': serializer.toJson<int>(caloriesBurned),
      'isNightTraining': serializer.toJson<bool>(isNightTraining),
      'perceivedExertion': serializer.toJson<int?>(perceivedExertion),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  TrainingSession copyWith(
          {String? id,
          String? userId,
          DateTime? startAt,
          DateTime? endAt,
          String? intensity,
          String? trainingType,
          int? caloriesBurned,
          bool? isNightTraining,
          Value<int?> perceivedExertion = const Value.absent(),
          DateTime? createdAt}) =>
      TrainingSession(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        intensity: intensity ?? this.intensity,
        trainingType: trainingType ?? this.trainingType,
        caloriesBurned: caloriesBurned ?? this.caloriesBurned,
        isNightTraining: isNightTraining ?? this.isNightTraining,
        perceivedExertion: perceivedExertion.present
            ? perceivedExertion.value
            : this.perceivedExertion,
        createdAt: createdAt ?? this.createdAt,
      );
  TrainingSession copyWithCompanion(TrainingSessionsCompanion data) {
    return TrainingSession(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      startAt: data.startAt.present ? data.startAt.value : this.startAt,
      endAt: data.endAt.present ? data.endAt.value : this.endAt,
      intensity: data.intensity.present ? data.intensity.value : this.intensity,
      trainingType: data.trainingType.present
          ? data.trainingType.value
          : this.trainingType,
      caloriesBurned: data.caloriesBurned.present
          ? data.caloriesBurned.value
          : this.caloriesBurned,
      isNightTraining: data.isNightTraining.present
          ? data.isNightTraining.value
          : this.isNightTraining,
      perceivedExertion: data.perceivedExertion.present
          ? data.perceivedExertion.value
          : this.perceivedExertion,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TrainingSession(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('intensity: $intensity, ')
          ..write('trainingType: $trainingType, ')
          ..write('caloriesBurned: $caloriesBurned, ')
          ..write('isNightTraining: $isNightTraining, ')
          ..write('perceivedExertion: $perceivedExertion, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      startAt,
      endAt,
      intensity,
      trainingType,
      caloriesBurned,
      isNightTraining,
      perceivedExertion,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TrainingSession &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.startAt == this.startAt &&
          other.endAt == this.endAt &&
          other.intensity == this.intensity &&
          other.trainingType == this.trainingType &&
          other.caloriesBurned == this.caloriesBurned &&
          other.isNightTraining == this.isNightTraining &&
          other.perceivedExertion == this.perceivedExertion &&
          other.createdAt == this.createdAt);
}

class TrainingSessionsCompanion extends UpdateCompanion<TrainingSession> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> startAt;
  final Value<DateTime> endAt;
  final Value<String> intensity;
  final Value<String> trainingType;
  final Value<int> caloriesBurned;
  final Value<bool> isNightTraining;
  final Value<int?> perceivedExertion;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const TrainingSessionsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.startAt = const Value.absent(),
    this.endAt = const Value.absent(),
    this.intensity = const Value.absent(),
    this.trainingType = const Value.absent(),
    this.caloriesBurned = const Value.absent(),
    this.isNightTraining = const Value.absent(),
    this.perceivedExertion = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TrainingSessionsCompanion.insert({
    required String id,
    required String userId,
    required DateTime startAt,
    required DateTime endAt,
    required String intensity,
    required String trainingType,
    required int caloriesBurned,
    required bool isNightTraining,
    this.perceivedExertion = const Value.absent(),
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        startAt = Value(startAt),
        endAt = Value(endAt),
        intensity = Value(intensity),
        trainingType = Value(trainingType),
        caloriesBurned = Value(caloriesBurned),
        isNightTraining = Value(isNightTraining),
        createdAt = Value(createdAt);
  static Insertable<TrainingSession> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? startAt,
    Expression<DateTime>? endAt,
    Expression<String>? intensity,
    Expression<String>? trainingType,
    Expression<int>? caloriesBurned,
    Expression<bool>? isNightTraining,
    Expression<int>? perceivedExertion,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (startAt != null) 'start_at': startAt,
      if (endAt != null) 'end_at': endAt,
      if (intensity != null) 'intensity': intensity,
      if (trainingType != null) 'training_type': trainingType,
      if (caloriesBurned != null) 'calories_burned': caloriesBurned,
      if (isNightTraining != null) 'is_night_training': isNightTraining,
      if (perceivedExertion != null) 'perceived_exertion': perceivedExertion,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TrainingSessionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? startAt,
      Value<DateTime>? endAt,
      Value<String>? intensity,
      Value<String>? trainingType,
      Value<int>? caloriesBurned,
      Value<bool>? isNightTraining,
      Value<int?>? perceivedExertion,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return TrainingSessionsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      intensity: intensity ?? this.intensity,
      trainingType: trainingType ?? this.trainingType,
      caloriesBurned: caloriesBurned ?? this.caloriesBurned,
      isNightTraining: isNightTraining ?? this.isNightTraining,
      perceivedExertion: perceivedExertion ?? this.perceivedExertion,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (startAt.present) {
      map['start_at'] = Variable<DateTime>(startAt.value);
    }
    if (endAt.present) {
      map['end_at'] = Variable<DateTime>(endAt.value);
    }
    if (intensity.present) {
      map['intensity'] = Variable<String>(intensity.value);
    }
    if (trainingType.present) {
      map['training_type'] = Variable<String>(trainingType.value);
    }
    if (caloriesBurned.present) {
      map['calories_burned'] = Variable<int>(caloriesBurned.value);
    }
    if (isNightTraining.present) {
      map['is_night_training'] = Variable<bool>(isNightTraining.value);
    }
    if (perceivedExertion.present) {
      map['perceived_exertion'] = Variable<int>(perceivedExertion.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TrainingSessionsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('intensity: $intensity, ')
          ..write('trainingType: $trainingType, ')
          ..write('caloriesBurned: $caloriesBurned, ')
          ..write('isNightTraining: $isNightTraining, ')
          ..write('perceivedExertion: $perceivedExertion, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CaffeineEventsTable extends CaffeineEvents
    with TableInfo<$CaffeineEventsTable, CaffeineEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CaffeineEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_profiles (id)'));
  static const VerificationMeta _consumedAtMeta =
      const VerificationMeta('consumedAt');
  @override
  late final GeneratedColumn<DateTime> consumedAt = GeneratedColumn<DateTime>(
      'consumed_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _caffeineMgMeta =
      const VerificationMeta('caffeineMg');
  @override
  late final GeneratedColumn<int> caffeineMg = GeneratedColumn<int>(
      'caffeine_mg', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _sourceTypeMeta =
      const VerificationMeta('sourceType');
  @override
  late final GeneratedColumn<String> sourceType = GeneratedColumn<String>(
      'source_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isLateCaffeineMeta =
      const VerificationMeta('isLateCaffeine');
  @override
  late final GeneratedColumn<bool> isLateCaffeine = GeneratedColumn<bool>(
      'is_late_caffeine', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_late_caffeine" IN (0, 1))'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        consumedAt,
        caffeineMg,
        sourceType,
        isLateCaffeine,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'caffeine_events';
  @override
  VerificationContext validateIntegrity(Insertable<CaffeineEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('consumed_at')) {
      context.handle(
          _consumedAtMeta,
          consumedAt.isAcceptableOrUnknown(
              data['consumed_at']!, _consumedAtMeta));
    } else if (isInserting) {
      context.missing(_consumedAtMeta);
    }
    if (data.containsKey('caffeine_mg')) {
      context.handle(
          _caffeineMgMeta,
          caffeineMg.isAcceptableOrUnknown(
              data['caffeine_mg']!, _caffeineMgMeta));
    } else if (isInserting) {
      context.missing(_caffeineMgMeta);
    }
    if (data.containsKey('source_type')) {
      context.handle(
          _sourceTypeMeta,
          sourceType.isAcceptableOrUnknown(
              data['source_type']!, _sourceTypeMeta));
    } else if (isInserting) {
      context.missing(_sourceTypeMeta);
    }
    if (data.containsKey('is_late_caffeine')) {
      context.handle(
          _isLateCaffeineMeta,
          isLateCaffeine.isAcceptableOrUnknown(
              data['is_late_caffeine']!, _isLateCaffeineMeta));
    } else if (isInserting) {
      context.missing(_isLateCaffeineMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CaffeineEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CaffeineEvent(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      consumedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}consumed_at'])!,
      caffeineMg: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}caffeine_mg'])!,
      sourceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_type'])!,
      isLateCaffeine: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_late_caffeine'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $CaffeineEventsTable createAlias(String alias) {
    return $CaffeineEventsTable(attachedDatabase, alias);
  }
}

class CaffeineEvent extends DataClass implements Insertable<CaffeineEvent> {
  final String id;
  final String userId;
  final DateTime consumedAt;
  final int caffeineMg;
  final String sourceType;
  final bool isLateCaffeine;
  final DateTime createdAt;
  const CaffeineEvent(
      {required this.id,
      required this.userId,
      required this.consumedAt,
      required this.caffeineMg,
      required this.sourceType,
      required this.isLateCaffeine,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['consumed_at'] = Variable<DateTime>(consumedAt);
    map['caffeine_mg'] = Variable<int>(caffeineMg);
    map['source_type'] = Variable<String>(sourceType);
    map['is_late_caffeine'] = Variable<bool>(isLateCaffeine);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CaffeineEventsCompanion toCompanion(bool nullToAbsent) {
    return CaffeineEventsCompanion(
      id: Value(id),
      userId: Value(userId),
      consumedAt: Value(consumedAt),
      caffeineMg: Value(caffeineMg),
      sourceType: Value(sourceType),
      isLateCaffeine: Value(isLateCaffeine),
      createdAt: Value(createdAt),
    );
  }

  factory CaffeineEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CaffeineEvent(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      consumedAt: serializer.fromJson<DateTime>(json['consumedAt']),
      caffeineMg: serializer.fromJson<int>(json['caffeineMg']),
      sourceType: serializer.fromJson<String>(json['sourceType']),
      isLateCaffeine: serializer.fromJson<bool>(json['isLateCaffeine']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'consumedAt': serializer.toJson<DateTime>(consumedAt),
      'caffeineMg': serializer.toJson<int>(caffeineMg),
      'sourceType': serializer.toJson<String>(sourceType),
      'isLateCaffeine': serializer.toJson<bool>(isLateCaffeine),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  CaffeineEvent copyWith(
          {String? id,
          String? userId,
          DateTime? consumedAt,
          int? caffeineMg,
          String? sourceType,
          bool? isLateCaffeine,
          DateTime? createdAt}) =>
      CaffeineEvent(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        consumedAt: consumedAt ?? this.consumedAt,
        caffeineMg: caffeineMg ?? this.caffeineMg,
        sourceType: sourceType ?? this.sourceType,
        isLateCaffeine: isLateCaffeine ?? this.isLateCaffeine,
        createdAt: createdAt ?? this.createdAt,
      );
  CaffeineEvent copyWithCompanion(CaffeineEventsCompanion data) {
    return CaffeineEvent(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      consumedAt:
          data.consumedAt.present ? data.consumedAt.value : this.consumedAt,
      caffeineMg:
          data.caffeineMg.present ? data.caffeineMg.value : this.caffeineMg,
      sourceType:
          data.sourceType.present ? data.sourceType.value : this.sourceType,
      isLateCaffeine: data.isLateCaffeine.present
          ? data.isLateCaffeine.value
          : this.isLateCaffeine,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CaffeineEvent(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('consumedAt: $consumedAt, ')
          ..write('caffeineMg: $caffeineMg, ')
          ..write('sourceType: $sourceType, ')
          ..write('isLateCaffeine: $isLateCaffeine, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, consumedAt, caffeineMg,
      sourceType, isLateCaffeine, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CaffeineEvent &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.consumedAt == this.consumedAt &&
          other.caffeineMg == this.caffeineMg &&
          other.sourceType == this.sourceType &&
          other.isLateCaffeine == this.isLateCaffeine &&
          other.createdAt == this.createdAt);
}

class CaffeineEventsCompanion extends UpdateCompanion<CaffeineEvent> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> consumedAt;
  final Value<int> caffeineMg;
  final Value<String> sourceType;
  final Value<bool> isLateCaffeine;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const CaffeineEventsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.consumedAt = const Value.absent(),
    this.caffeineMg = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.isLateCaffeine = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CaffeineEventsCompanion.insert({
    required String id,
    required String userId,
    required DateTime consumedAt,
    required int caffeineMg,
    required String sourceType,
    required bool isLateCaffeine,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        consumedAt = Value(consumedAt),
        caffeineMg = Value(caffeineMg),
        sourceType = Value(sourceType),
        isLateCaffeine = Value(isLateCaffeine),
        createdAt = Value(createdAt);
  static Insertable<CaffeineEvent> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? consumedAt,
    Expression<int>? caffeineMg,
    Expression<String>? sourceType,
    Expression<bool>? isLateCaffeine,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (consumedAt != null) 'consumed_at': consumedAt,
      if (caffeineMg != null) 'caffeine_mg': caffeineMg,
      if (sourceType != null) 'source_type': sourceType,
      if (isLateCaffeine != null) 'is_late_caffeine': isLateCaffeine,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CaffeineEventsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? consumedAt,
      Value<int>? caffeineMg,
      Value<String>? sourceType,
      Value<bool>? isLateCaffeine,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return CaffeineEventsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      consumedAt: consumedAt ?? this.consumedAt,
      caffeineMg: caffeineMg ?? this.caffeineMg,
      sourceType: sourceType ?? this.sourceType,
      isLateCaffeine: isLateCaffeine ?? this.isLateCaffeine,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (consumedAt.present) {
      map['consumed_at'] = Variable<DateTime>(consumedAt.value);
    }
    if (caffeineMg.present) {
      map['caffeine_mg'] = Variable<int>(caffeineMg.value);
    }
    if (sourceType.present) {
      map['source_type'] = Variable<String>(sourceType.value);
    }
    if (isLateCaffeine.present) {
      map['is_late_caffeine'] = Variable<bool>(isLateCaffeine.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CaffeineEventsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('consumedAt: $consumedAt, ')
          ..write('caffeineMg: $caffeineMg, ')
          ..write('sourceType: $sourceType, ')
          ..write('isLateCaffeine: $isLateCaffeine, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ScreenUsageEventsTable extends ScreenUsageEvents
    with TableInfo<$ScreenUsageEventsTable, ScreenUsageEvent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ScreenUsageEventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_profiles (id)'));
  static const VerificationMeta _startAtMeta =
      const VerificationMeta('startAt');
  @override
  late final GeneratedColumn<DateTime> startAt = GeneratedColumn<DateTime>(
      'start_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endAtMeta = const VerificationMeta('endAt');
  @override
  late final GeneratedColumn<DateTime> endAt = GeneratedColumn<DateTime>(
      'end_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _estimatedMinutesMeta =
      const VerificationMeta('estimatedMinutes');
  @override
  late final GeneratedColumn<int> estimatedMinutes = GeneratedColumn<int>(
      'estimated_minutes', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _usageTypeMeta =
      const VerificationMeta('usageType');
  @override
  late final GeneratedColumn<String> usageType = GeneratedColumn<String>(
      'usage_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isNightUsageMeta =
      const VerificationMeta('isNightUsage');
  @override
  late final GeneratedColumn<bool> isNightUsage = GeneratedColumn<bool>(
      'is_night_usage', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_night_usage" IN (0, 1))'));
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        startAt,
        endAt,
        estimatedMinutes,
        usageType,
        isNightUsage,
        source,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'screen_usage_events';
  @override
  VerificationContext validateIntegrity(Insertable<ScreenUsageEvent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('start_at')) {
      context.handle(_startAtMeta,
          startAt.isAcceptableOrUnknown(data['start_at']!, _startAtMeta));
    } else if (isInserting) {
      context.missing(_startAtMeta);
    }
    if (data.containsKey('end_at')) {
      context.handle(
          _endAtMeta, endAt.isAcceptableOrUnknown(data['end_at']!, _endAtMeta));
    } else if (isInserting) {
      context.missing(_endAtMeta);
    }
    if (data.containsKey('estimated_minutes')) {
      context.handle(
          _estimatedMinutesMeta,
          estimatedMinutes.isAcceptableOrUnknown(
              data['estimated_minutes']!, _estimatedMinutesMeta));
    } else if (isInserting) {
      context.missing(_estimatedMinutesMeta);
    }
    if (data.containsKey('usage_type')) {
      context.handle(_usageTypeMeta,
          usageType.isAcceptableOrUnknown(data['usage_type']!, _usageTypeMeta));
    } else if (isInserting) {
      context.missing(_usageTypeMeta);
    }
    if (data.containsKey('is_night_usage')) {
      context.handle(
          _isNightUsageMeta,
          isNightUsage.isAcceptableOrUnknown(
              data['is_night_usage']!, _isNightUsageMeta));
    } else if (isInserting) {
      context.missing(_isNightUsageMeta);
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ScreenUsageEvent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ScreenUsageEvent(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      startAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_at'])!,
      endAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_at'])!,
      estimatedMinutes: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}estimated_minutes'])!,
      usageType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}usage_type'])!,
      isNightUsage: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_night_usage'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $ScreenUsageEventsTable createAlias(String alias) {
    return $ScreenUsageEventsTable(attachedDatabase, alias);
  }
}

class ScreenUsageEvent extends DataClass
    implements Insertable<ScreenUsageEvent> {
  final String id;
  final String userId;
  final DateTime startAt;
  final DateTime endAt;
  final int estimatedMinutes;
  final String usageType;
  final bool isNightUsage;
  final String source;
  final DateTime createdAt;
  const ScreenUsageEvent(
      {required this.id,
      required this.userId,
      required this.startAt,
      required this.endAt,
      required this.estimatedMinutes,
      required this.usageType,
      required this.isNightUsage,
      required this.source,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['start_at'] = Variable<DateTime>(startAt);
    map['end_at'] = Variable<DateTime>(endAt);
    map['estimated_minutes'] = Variable<int>(estimatedMinutes);
    map['usage_type'] = Variable<String>(usageType);
    map['is_night_usage'] = Variable<bool>(isNightUsage);
    map['source'] = Variable<String>(source);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ScreenUsageEventsCompanion toCompanion(bool nullToAbsent) {
    return ScreenUsageEventsCompanion(
      id: Value(id),
      userId: Value(userId),
      startAt: Value(startAt),
      endAt: Value(endAt),
      estimatedMinutes: Value(estimatedMinutes),
      usageType: Value(usageType),
      isNightUsage: Value(isNightUsage),
      source: Value(source),
      createdAt: Value(createdAt),
    );
  }

  factory ScreenUsageEvent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ScreenUsageEvent(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      startAt: serializer.fromJson<DateTime>(json['startAt']),
      endAt: serializer.fromJson<DateTime>(json['endAt']),
      estimatedMinutes: serializer.fromJson<int>(json['estimatedMinutes']),
      usageType: serializer.fromJson<String>(json['usageType']),
      isNightUsage: serializer.fromJson<bool>(json['isNightUsage']),
      source: serializer.fromJson<String>(json['source']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'startAt': serializer.toJson<DateTime>(startAt),
      'endAt': serializer.toJson<DateTime>(endAt),
      'estimatedMinutes': serializer.toJson<int>(estimatedMinutes),
      'usageType': serializer.toJson<String>(usageType),
      'isNightUsage': serializer.toJson<bool>(isNightUsage),
      'source': serializer.toJson<String>(source),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ScreenUsageEvent copyWith(
          {String? id,
          String? userId,
          DateTime? startAt,
          DateTime? endAt,
          int? estimatedMinutes,
          String? usageType,
          bool? isNightUsage,
          String? source,
          DateTime? createdAt}) =>
      ScreenUsageEvent(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        estimatedMinutes: estimatedMinutes ?? this.estimatedMinutes,
        usageType: usageType ?? this.usageType,
        isNightUsage: isNightUsage ?? this.isNightUsage,
        source: source ?? this.source,
        createdAt: createdAt ?? this.createdAt,
      );
  ScreenUsageEvent copyWithCompanion(ScreenUsageEventsCompanion data) {
    return ScreenUsageEvent(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      startAt: data.startAt.present ? data.startAt.value : this.startAt,
      endAt: data.endAt.present ? data.endAt.value : this.endAt,
      estimatedMinutes: data.estimatedMinutes.present
          ? data.estimatedMinutes.value
          : this.estimatedMinutes,
      usageType: data.usageType.present ? data.usageType.value : this.usageType,
      isNightUsage: data.isNightUsage.present
          ? data.isNightUsage.value
          : this.isNightUsage,
      source: data.source.present ? data.source.value : this.source,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ScreenUsageEvent(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('estimatedMinutes: $estimatedMinutes, ')
          ..write('usageType: $usageType, ')
          ..write('isNightUsage: $isNightUsage, ')
          ..write('source: $source, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, startAt, endAt, estimatedMinutes,
      usageType, isNightUsage, source, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScreenUsageEvent &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.startAt == this.startAt &&
          other.endAt == this.endAt &&
          other.estimatedMinutes == this.estimatedMinutes &&
          other.usageType == this.usageType &&
          other.isNightUsage == this.isNightUsage &&
          other.source == this.source &&
          other.createdAt == this.createdAt);
}

class ScreenUsageEventsCompanion extends UpdateCompanion<ScreenUsageEvent> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> startAt;
  final Value<DateTime> endAt;
  final Value<int> estimatedMinutes;
  final Value<String> usageType;
  final Value<bool> isNightUsage;
  final Value<String> source;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const ScreenUsageEventsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.startAt = const Value.absent(),
    this.endAt = const Value.absent(),
    this.estimatedMinutes = const Value.absent(),
    this.usageType = const Value.absent(),
    this.isNightUsage = const Value.absent(),
    this.source = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ScreenUsageEventsCompanion.insert({
    required String id,
    required String userId,
    required DateTime startAt,
    required DateTime endAt,
    required int estimatedMinutes,
    required String usageType,
    required bool isNightUsage,
    required String source,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        startAt = Value(startAt),
        endAt = Value(endAt),
        estimatedMinutes = Value(estimatedMinutes),
        usageType = Value(usageType),
        isNightUsage = Value(isNightUsage),
        source = Value(source),
        createdAt = Value(createdAt);
  static Insertable<ScreenUsageEvent> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? startAt,
    Expression<DateTime>? endAt,
    Expression<int>? estimatedMinutes,
    Expression<String>? usageType,
    Expression<bool>? isNightUsage,
    Expression<String>? source,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (startAt != null) 'start_at': startAt,
      if (endAt != null) 'end_at': endAt,
      if (estimatedMinutes != null) 'estimated_minutes': estimatedMinutes,
      if (usageType != null) 'usage_type': usageType,
      if (isNightUsage != null) 'is_night_usage': isNightUsage,
      if (source != null) 'source': source,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ScreenUsageEventsCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? startAt,
      Value<DateTime>? endAt,
      Value<int>? estimatedMinutes,
      Value<String>? usageType,
      Value<bool>? isNightUsage,
      Value<String>? source,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return ScreenUsageEventsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      estimatedMinutes: estimatedMinutes ?? this.estimatedMinutes,
      usageType: usageType ?? this.usageType,
      isNightUsage: isNightUsage ?? this.isNightUsage,
      source: source ?? this.source,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (startAt.present) {
      map['start_at'] = Variable<DateTime>(startAt.value);
    }
    if (endAt.present) {
      map['end_at'] = Variable<DateTime>(endAt.value);
    }
    if (estimatedMinutes.present) {
      map['estimated_minutes'] = Variable<int>(estimatedMinutes.value);
    }
    if (usageType.present) {
      map['usage_type'] = Variable<String>(usageType.value);
    }
    if (isNightUsage.present) {
      map['is_night_usage'] = Variable<bool>(isNightUsage.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ScreenUsageEventsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('estimatedMinutes: $estimatedMinutes, ')
          ..write('usageType: $usageType, ')
          ..write('isNightUsage: $isNightUsage, ')
          ..write('source: $source, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CircadianScoresTable extends CircadianScores
    with TableInfo<$CircadianScoresTable, CircadianScore> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CircadianScoresTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_profiles (id)'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _totalScoreMeta =
      const VerificationMeta('totalScore');
  @override
  late final GeneratedColumn<double> totalScore = GeneratedColumn<double>(
      'total_score', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _lightScoreMeta =
      const VerificationMeta('lightScore');
  @override
  late final GeneratedColumn<double> lightScore = GeneratedColumn<double>(
      'light_score', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _nutritionScoreMeta =
      const VerificationMeta('nutritionScore');
  @override
  late final GeneratedColumn<double> nutritionScore = GeneratedColumn<double>(
      'nutrition_score', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _sleepScoreMeta =
      const VerificationMeta('sleepScore');
  @override
  late final GeneratedColumn<double> sleepScore = GeneratedColumn<double>(
      'sleep_score', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _screenPenaltyMeta =
      const VerificationMeta('screenPenalty');
  @override
  late final GeneratedColumn<double> screenPenalty = GeneratedColumn<double>(
      'screen_penalty', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _nightEatingPenaltyMeta =
      const VerificationMeta('nightEatingPenalty');
  @override
  late final GeneratedColumn<double> nightEatingPenalty =
      GeneratedColumn<double>('night_eating_penalty', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _lateCaffeinePenaltyMeta =
      const VerificationMeta('lateCaffeinePenalty');
  @override
  late final GeneratedColumn<double> lateCaffeinePenalty =
      GeneratedColumn<double>('late_caffeine_penalty', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _explanationMeta =
      const VerificationMeta('explanation');
  @override
  late final GeneratedColumn<String> explanation = GeneratedColumn<String>(
      'explanation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        date,
        totalScore,
        lightScore,
        nutritionScore,
        sleepScore,
        screenPenalty,
        nightEatingPenalty,
        lateCaffeinePenalty,
        explanation,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'circadian_scores';
  @override
  VerificationContext validateIntegrity(Insertable<CircadianScore> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('total_score')) {
      context.handle(
          _totalScoreMeta,
          totalScore.isAcceptableOrUnknown(
              data['total_score']!, _totalScoreMeta));
    } else if (isInserting) {
      context.missing(_totalScoreMeta);
    }
    if (data.containsKey('light_score')) {
      context.handle(
          _lightScoreMeta,
          lightScore.isAcceptableOrUnknown(
              data['light_score']!, _lightScoreMeta));
    } else if (isInserting) {
      context.missing(_lightScoreMeta);
    }
    if (data.containsKey('nutrition_score')) {
      context.handle(
          _nutritionScoreMeta,
          nutritionScore.isAcceptableOrUnknown(
              data['nutrition_score']!, _nutritionScoreMeta));
    } else if (isInserting) {
      context.missing(_nutritionScoreMeta);
    }
    if (data.containsKey('sleep_score')) {
      context.handle(
          _sleepScoreMeta,
          sleepScore.isAcceptableOrUnknown(
              data['sleep_score']!, _sleepScoreMeta));
    } else if (isInserting) {
      context.missing(_sleepScoreMeta);
    }
    if (data.containsKey('screen_penalty')) {
      context.handle(
          _screenPenaltyMeta,
          screenPenalty.isAcceptableOrUnknown(
              data['screen_penalty']!, _screenPenaltyMeta));
    } else if (isInserting) {
      context.missing(_screenPenaltyMeta);
    }
    if (data.containsKey('night_eating_penalty')) {
      context.handle(
          _nightEatingPenaltyMeta,
          nightEatingPenalty.isAcceptableOrUnknown(
              data['night_eating_penalty']!, _nightEatingPenaltyMeta));
    } else if (isInserting) {
      context.missing(_nightEatingPenaltyMeta);
    }
    if (data.containsKey('late_caffeine_penalty')) {
      context.handle(
          _lateCaffeinePenaltyMeta,
          lateCaffeinePenalty.isAcceptableOrUnknown(
              data['late_caffeine_penalty']!, _lateCaffeinePenaltyMeta));
    } else if (isInserting) {
      context.missing(_lateCaffeinePenaltyMeta);
    }
    if (data.containsKey('explanation')) {
      context.handle(
          _explanationMeta,
          explanation.isAcceptableOrUnknown(
              data['explanation']!, _explanationMeta));
    } else if (isInserting) {
      context.missing(_explanationMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CircadianScore map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CircadianScore(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      totalScore: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_score'])!,
      lightScore: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}light_score'])!,
      nutritionScore: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}nutrition_score'])!,
      sleepScore: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sleep_score'])!,
      screenPenalty: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}screen_penalty'])!,
      nightEatingPenalty: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}night_eating_penalty'])!,
      lateCaffeinePenalty: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}late_caffeine_penalty'])!,
      explanation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}explanation'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $CircadianScoresTable createAlias(String alias) {
    return $CircadianScoresTable(attachedDatabase, alias);
  }
}

class CircadianScore extends DataClass implements Insertable<CircadianScore> {
  final String id;
  final String userId;
  final DateTime date;
  final double totalScore;
  final double lightScore;
  final double nutritionScore;
  final double sleepScore;
  final double screenPenalty;
  final double nightEatingPenalty;
  final double lateCaffeinePenalty;
  final String explanation;
  final DateTime createdAt;
  const CircadianScore(
      {required this.id,
      required this.userId,
      required this.date,
      required this.totalScore,
      required this.lightScore,
      required this.nutritionScore,
      required this.sleepScore,
      required this.screenPenalty,
      required this.nightEatingPenalty,
      required this.lateCaffeinePenalty,
      required this.explanation,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['date'] = Variable<DateTime>(date);
    map['total_score'] = Variable<double>(totalScore);
    map['light_score'] = Variable<double>(lightScore);
    map['nutrition_score'] = Variable<double>(nutritionScore);
    map['sleep_score'] = Variable<double>(sleepScore);
    map['screen_penalty'] = Variable<double>(screenPenalty);
    map['night_eating_penalty'] = Variable<double>(nightEatingPenalty);
    map['late_caffeine_penalty'] = Variable<double>(lateCaffeinePenalty);
    map['explanation'] = Variable<String>(explanation);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CircadianScoresCompanion toCompanion(bool nullToAbsent) {
    return CircadianScoresCompanion(
      id: Value(id),
      userId: Value(userId),
      date: Value(date),
      totalScore: Value(totalScore),
      lightScore: Value(lightScore),
      nutritionScore: Value(nutritionScore),
      sleepScore: Value(sleepScore),
      screenPenalty: Value(screenPenalty),
      nightEatingPenalty: Value(nightEatingPenalty),
      lateCaffeinePenalty: Value(lateCaffeinePenalty),
      explanation: Value(explanation),
      createdAt: Value(createdAt),
    );
  }

  factory CircadianScore.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CircadianScore(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      date: serializer.fromJson<DateTime>(json['date']),
      totalScore: serializer.fromJson<double>(json['totalScore']),
      lightScore: serializer.fromJson<double>(json['lightScore']),
      nutritionScore: serializer.fromJson<double>(json['nutritionScore']),
      sleepScore: serializer.fromJson<double>(json['sleepScore']),
      screenPenalty: serializer.fromJson<double>(json['screenPenalty']),
      nightEatingPenalty:
          serializer.fromJson<double>(json['nightEatingPenalty']),
      lateCaffeinePenalty:
          serializer.fromJson<double>(json['lateCaffeinePenalty']),
      explanation: serializer.fromJson<String>(json['explanation']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'date': serializer.toJson<DateTime>(date),
      'totalScore': serializer.toJson<double>(totalScore),
      'lightScore': serializer.toJson<double>(lightScore),
      'nutritionScore': serializer.toJson<double>(nutritionScore),
      'sleepScore': serializer.toJson<double>(sleepScore),
      'screenPenalty': serializer.toJson<double>(screenPenalty),
      'nightEatingPenalty': serializer.toJson<double>(nightEatingPenalty),
      'lateCaffeinePenalty': serializer.toJson<double>(lateCaffeinePenalty),
      'explanation': serializer.toJson<String>(explanation),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  CircadianScore copyWith(
          {String? id,
          String? userId,
          DateTime? date,
          double? totalScore,
          double? lightScore,
          double? nutritionScore,
          double? sleepScore,
          double? screenPenalty,
          double? nightEatingPenalty,
          double? lateCaffeinePenalty,
          String? explanation,
          DateTime? createdAt}) =>
      CircadianScore(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        date: date ?? this.date,
        totalScore: totalScore ?? this.totalScore,
        lightScore: lightScore ?? this.lightScore,
        nutritionScore: nutritionScore ?? this.nutritionScore,
        sleepScore: sleepScore ?? this.sleepScore,
        screenPenalty: screenPenalty ?? this.screenPenalty,
        nightEatingPenalty: nightEatingPenalty ?? this.nightEatingPenalty,
        lateCaffeinePenalty: lateCaffeinePenalty ?? this.lateCaffeinePenalty,
        explanation: explanation ?? this.explanation,
        createdAt: createdAt ?? this.createdAt,
      );
  CircadianScore copyWithCompanion(CircadianScoresCompanion data) {
    return CircadianScore(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      date: data.date.present ? data.date.value : this.date,
      totalScore:
          data.totalScore.present ? data.totalScore.value : this.totalScore,
      lightScore:
          data.lightScore.present ? data.lightScore.value : this.lightScore,
      nutritionScore: data.nutritionScore.present
          ? data.nutritionScore.value
          : this.nutritionScore,
      sleepScore:
          data.sleepScore.present ? data.sleepScore.value : this.sleepScore,
      screenPenalty: data.screenPenalty.present
          ? data.screenPenalty.value
          : this.screenPenalty,
      nightEatingPenalty: data.nightEatingPenalty.present
          ? data.nightEatingPenalty.value
          : this.nightEatingPenalty,
      lateCaffeinePenalty: data.lateCaffeinePenalty.present
          ? data.lateCaffeinePenalty.value
          : this.lateCaffeinePenalty,
      explanation:
          data.explanation.present ? data.explanation.value : this.explanation,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CircadianScore(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('totalScore: $totalScore, ')
          ..write('lightScore: $lightScore, ')
          ..write('nutritionScore: $nutritionScore, ')
          ..write('sleepScore: $sleepScore, ')
          ..write('screenPenalty: $screenPenalty, ')
          ..write('nightEatingPenalty: $nightEatingPenalty, ')
          ..write('lateCaffeinePenalty: $lateCaffeinePenalty, ')
          ..write('explanation: $explanation, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      date,
      totalScore,
      lightScore,
      nutritionScore,
      sleepScore,
      screenPenalty,
      nightEatingPenalty,
      lateCaffeinePenalty,
      explanation,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CircadianScore &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.date == this.date &&
          other.totalScore == this.totalScore &&
          other.lightScore == this.lightScore &&
          other.nutritionScore == this.nutritionScore &&
          other.sleepScore == this.sleepScore &&
          other.screenPenalty == this.screenPenalty &&
          other.nightEatingPenalty == this.nightEatingPenalty &&
          other.lateCaffeinePenalty == this.lateCaffeinePenalty &&
          other.explanation == this.explanation &&
          other.createdAt == this.createdAt);
}

class CircadianScoresCompanion extends UpdateCompanion<CircadianScore> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> date;
  final Value<double> totalScore;
  final Value<double> lightScore;
  final Value<double> nutritionScore;
  final Value<double> sleepScore;
  final Value<double> screenPenalty;
  final Value<double> nightEatingPenalty;
  final Value<double> lateCaffeinePenalty;
  final Value<String> explanation;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const CircadianScoresCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.date = const Value.absent(),
    this.totalScore = const Value.absent(),
    this.lightScore = const Value.absent(),
    this.nutritionScore = const Value.absent(),
    this.sleepScore = const Value.absent(),
    this.screenPenalty = const Value.absent(),
    this.nightEatingPenalty = const Value.absent(),
    this.lateCaffeinePenalty = const Value.absent(),
    this.explanation = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CircadianScoresCompanion.insert({
    required String id,
    required String userId,
    required DateTime date,
    required double totalScore,
    required double lightScore,
    required double nutritionScore,
    required double sleepScore,
    required double screenPenalty,
    required double nightEatingPenalty,
    required double lateCaffeinePenalty,
    required String explanation,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        date = Value(date),
        totalScore = Value(totalScore),
        lightScore = Value(lightScore),
        nutritionScore = Value(nutritionScore),
        sleepScore = Value(sleepScore),
        screenPenalty = Value(screenPenalty),
        nightEatingPenalty = Value(nightEatingPenalty),
        lateCaffeinePenalty = Value(lateCaffeinePenalty),
        explanation = Value(explanation),
        createdAt = Value(createdAt);
  static Insertable<CircadianScore> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? date,
    Expression<double>? totalScore,
    Expression<double>? lightScore,
    Expression<double>? nutritionScore,
    Expression<double>? sleepScore,
    Expression<double>? screenPenalty,
    Expression<double>? nightEatingPenalty,
    Expression<double>? lateCaffeinePenalty,
    Expression<String>? explanation,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (date != null) 'date': date,
      if (totalScore != null) 'total_score': totalScore,
      if (lightScore != null) 'light_score': lightScore,
      if (nutritionScore != null) 'nutrition_score': nutritionScore,
      if (sleepScore != null) 'sleep_score': sleepScore,
      if (screenPenalty != null) 'screen_penalty': screenPenalty,
      if (nightEatingPenalty != null)
        'night_eating_penalty': nightEatingPenalty,
      if (lateCaffeinePenalty != null)
        'late_caffeine_penalty': lateCaffeinePenalty,
      if (explanation != null) 'explanation': explanation,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CircadianScoresCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? date,
      Value<double>? totalScore,
      Value<double>? lightScore,
      Value<double>? nutritionScore,
      Value<double>? sleepScore,
      Value<double>? screenPenalty,
      Value<double>? nightEatingPenalty,
      Value<double>? lateCaffeinePenalty,
      Value<String>? explanation,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return CircadianScoresCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      date: date ?? this.date,
      totalScore: totalScore ?? this.totalScore,
      lightScore: lightScore ?? this.lightScore,
      nutritionScore: nutritionScore ?? this.nutritionScore,
      sleepScore: sleepScore ?? this.sleepScore,
      screenPenalty: screenPenalty ?? this.screenPenalty,
      nightEatingPenalty: nightEatingPenalty ?? this.nightEatingPenalty,
      lateCaffeinePenalty: lateCaffeinePenalty ?? this.lateCaffeinePenalty,
      explanation: explanation ?? this.explanation,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (totalScore.present) {
      map['total_score'] = Variable<double>(totalScore.value);
    }
    if (lightScore.present) {
      map['light_score'] = Variable<double>(lightScore.value);
    }
    if (nutritionScore.present) {
      map['nutrition_score'] = Variable<double>(nutritionScore.value);
    }
    if (sleepScore.present) {
      map['sleep_score'] = Variable<double>(sleepScore.value);
    }
    if (screenPenalty.present) {
      map['screen_penalty'] = Variable<double>(screenPenalty.value);
    }
    if (nightEatingPenalty.present) {
      map['night_eating_penalty'] = Variable<double>(nightEatingPenalty.value);
    }
    if (lateCaffeinePenalty.present) {
      map['late_caffeine_penalty'] =
          Variable<double>(lateCaffeinePenalty.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CircadianScoresCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('totalScore: $totalScore, ')
          ..write('lightScore: $lightScore, ')
          ..write('nutritionScore: $nutritionScore, ')
          ..write('sleepScore: $sleepScore, ')
          ..write('screenPenalty: $screenPenalty, ')
          ..write('nightEatingPenalty: $nightEatingPenalty, ')
          ..write('lateCaffeinePenalty: $lateCaffeinePenalty, ')
          ..write('explanation: $explanation, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DailyPlansTable extends DailyPlans
    with TableInfo<$DailyPlansTable, DailyPlan> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DailyPlansTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user_profiles (id)'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _priorityActionsJsonMeta =
      const VerificationMeta('priorityActionsJson');
  @override
  late final GeneratedColumn<String> priorityActionsJson =
      GeneratedColumn<String>('priority_actions_json', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _morningLightTargetMeta =
      const VerificationMeta('morningLightTarget');
  @override
  late final GeneratedColumn<String> morningLightTarget =
      GeneratedColumn<String>('morning_light_target', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nutritionWindowStartMeta =
      const VerificationMeta('nutritionWindowStart');
  @override
  late final GeneratedColumn<String> nutritionWindowStart =
      GeneratedColumn<String>('nutrition_window_start', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nutritionWindowEndMeta =
      const VerificationMeta('nutritionWindowEnd');
  @override
  late final GeneratedColumn<String> nutritionWindowEnd =
      GeneratedColumn<String>('nutrition_window_end', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _caffeineCutoffTimeMeta =
      const VerificationMeta('caffeineCutoffTime');
  @override
  late final GeneratedColumn<String> caffeineCutoffTime =
      GeneratedColumn<String>('caffeine_cutoff_time', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _trainingRecommendationMeta =
      const VerificationMeta('trainingRecommendation');
  @override
  late final GeneratedColumn<String> trainingRecommendation =
      GeneratedColumn<String>('training_recommendation', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _eveningLightRecommendationMeta =
      const VerificationMeta('eveningLightRecommendation');
  @override
  late final GeneratedColumn<String> eveningLightRecommendation =
      GeneratedColumn<String>(
          'evening_light_recommendation', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sleepPreparationRecommendationMeta =
      const VerificationMeta('sleepPreparationRecommendation');
  @override
  late final GeneratedColumn<String> sleepPreparationRecommendation =
      GeneratedColumn<String>(
          'sleep_preparation_recommendation', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        date,
        priorityActionsJson,
        morningLightTarget,
        nutritionWindowStart,
        nutritionWindowEnd,
        caffeineCutoffTime,
        trainingRecommendation,
        eveningLightRecommendation,
        sleepPreparationRecommendation,
        createdAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'daily_plans';
  @override
  VerificationContext validateIntegrity(Insertable<DailyPlan> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('priority_actions_json')) {
      context.handle(
          _priorityActionsJsonMeta,
          priorityActionsJson.isAcceptableOrUnknown(
              data['priority_actions_json']!, _priorityActionsJsonMeta));
    } else if (isInserting) {
      context.missing(_priorityActionsJsonMeta);
    }
    if (data.containsKey('morning_light_target')) {
      context.handle(
          _morningLightTargetMeta,
          morningLightTarget.isAcceptableOrUnknown(
              data['morning_light_target']!, _morningLightTargetMeta));
    } else if (isInserting) {
      context.missing(_morningLightTargetMeta);
    }
    if (data.containsKey('nutrition_window_start')) {
      context.handle(
          _nutritionWindowStartMeta,
          nutritionWindowStart.isAcceptableOrUnknown(
              data['nutrition_window_start']!, _nutritionWindowStartMeta));
    } else if (isInserting) {
      context.missing(_nutritionWindowStartMeta);
    }
    if (data.containsKey('nutrition_window_end')) {
      context.handle(
          _nutritionWindowEndMeta,
          nutritionWindowEnd.isAcceptableOrUnknown(
              data['nutrition_window_end']!, _nutritionWindowEndMeta));
    } else if (isInserting) {
      context.missing(_nutritionWindowEndMeta);
    }
    if (data.containsKey('caffeine_cutoff_time')) {
      context.handle(
          _caffeineCutoffTimeMeta,
          caffeineCutoffTime.isAcceptableOrUnknown(
              data['caffeine_cutoff_time']!, _caffeineCutoffTimeMeta));
    } else if (isInserting) {
      context.missing(_caffeineCutoffTimeMeta);
    }
    if (data.containsKey('training_recommendation')) {
      context.handle(
          _trainingRecommendationMeta,
          trainingRecommendation.isAcceptableOrUnknown(
              data['training_recommendation']!, _trainingRecommendationMeta));
    } else if (isInserting) {
      context.missing(_trainingRecommendationMeta);
    }
    if (data.containsKey('evening_light_recommendation')) {
      context.handle(
          _eveningLightRecommendationMeta,
          eveningLightRecommendation.isAcceptableOrUnknown(
              data['evening_light_recommendation']!,
              _eveningLightRecommendationMeta));
    } else if (isInserting) {
      context.missing(_eveningLightRecommendationMeta);
    }
    if (data.containsKey('sleep_preparation_recommendation')) {
      context.handle(
          _sleepPreparationRecommendationMeta,
          sleepPreparationRecommendation.isAcceptableOrUnknown(
              data['sleep_preparation_recommendation']!,
              _sleepPreparationRecommendationMeta));
    } else if (isInserting) {
      context.missing(_sleepPreparationRecommendationMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DailyPlan map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DailyPlan(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      priorityActionsJson: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}priority_actions_json'])!,
      morningLightTarget: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}morning_light_target'])!,
      nutritionWindowStart: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}nutrition_window_start'])!,
      nutritionWindowEnd: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}nutrition_window_end'])!,
      caffeineCutoffTime: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}caffeine_cutoff_time'])!,
      trainingRecommendation: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}training_recommendation'])!,
      eveningLightRecommendation: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}evening_light_recommendation'])!,
      sleepPreparationRecommendation: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}sleep_preparation_recommendation'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $DailyPlansTable createAlias(String alias) {
    return $DailyPlansTable(attachedDatabase, alias);
  }
}

class DailyPlan extends DataClass implements Insertable<DailyPlan> {
  final String id;
  final String userId;
  final DateTime date;
  final String priorityActionsJson;
  final String morningLightTarget;
  final String nutritionWindowStart;
  final String nutritionWindowEnd;
  final String caffeineCutoffTime;
  final String trainingRecommendation;
  final String eveningLightRecommendation;
  final String sleepPreparationRecommendation;
  final DateTime createdAt;
  const DailyPlan(
      {required this.id,
      required this.userId,
      required this.date,
      required this.priorityActionsJson,
      required this.morningLightTarget,
      required this.nutritionWindowStart,
      required this.nutritionWindowEnd,
      required this.caffeineCutoffTime,
      required this.trainingRecommendation,
      required this.eveningLightRecommendation,
      required this.sleepPreparationRecommendation,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['user_id'] = Variable<String>(userId);
    map['date'] = Variable<DateTime>(date);
    map['priority_actions_json'] = Variable<String>(priorityActionsJson);
    map['morning_light_target'] = Variable<String>(morningLightTarget);
    map['nutrition_window_start'] = Variable<String>(nutritionWindowStart);
    map['nutrition_window_end'] = Variable<String>(nutritionWindowEnd);
    map['caffeine_cutoff_time'] = Variable<String>(caffeineCutoffTime);
    map['training_recommendation'] = Variable<String>(trainingRecommendation);
    map['evening_light_recommendation'] =
        Variable<String>(eveningLightRecommendation);
    map['sleep_preparation_recommendation'] =
        Variable<String>(sleepPreparationRecommendation);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  DailyPlansCompanion toCompanion(bool nullToAbsent) {
    return DailyPlansCompanion(
      id: Value(id),
      userId: Value(userId),
      date: Value(date),
      priorityActionsJson: Value(priorityActionsJson),
      morningLightTarget: Value(morningLightTarget),
      nutritionWindowStart: Value(nutritionWindowStart),
      nutritionWindowEnd: Value(nutritionWindowEnd),
      caffeineCutoffTime: Value(caffeineCutoffTime),
      trainingRecommendation: Value(trainingRecommendation),
      eveningLightRecommendation: Value(eveningLightRecommendation),
      sleepPreparationRecommendation: Value(sleepPreparationRecommendation),
      createdAt: Value(createdAt),
    );
  }

  factory DailyPlan.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DailyPlan(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      date: serializer.fromJson<DateTime>(json['date']),
      priorityActionsJson:
          serializer.fromJson<String>(json['priorityActionsJson']),
      morningLightTarget:
          serializer.fromJson<String>(json['morningLightTarget']),
      nutritionWindowStart:
          serializer.fromJson<String>(json['nutritionWindowStart']),
      nutritionWindowEnd:
          serializer.fromJson<String>(json['nutritionWindowEnd']),
      caffeineCutoffTime:
          serializer.fromJson<String>(json['caffeineCutoffTime']),
      trainingRecommendation:
          serializer.fromJson<String>(json['trainingRecommendation']),
      eveningLightRecommendation:
          serializer.fromJson<String>(json['eveningLightRecommendation']),
      sleepPreparationRecommendation:
          serializer.fromJson<String>(json['sleepPreparationRecommendation']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'date': serializer.toJson<DateTime>(date),
      'priorityActionsJson': serializer.toJson<String>(priorityActionsJson),
      'morningLightTarget': serializer.toJson<String>(morningLightTarget),
      'nutritionWindowStart': serializer.toJson<String>(nutritionWindowStart),
      'nutritionWindowEnd': serializer.toJson<String>(nutritionWindowEnd),
      'caffeineCutoffTime': serializer.toJson<String>(caffeineCutoffTime),
      'trainingRecommendation':
          serializer.toJson<String>(trainingRecommendation),
      'eveningLightRecommendation':
          serializer.toJson<String>(eveningLightRecommendation),
      'sleepPreparationRecommendation':
          serializer.toJson<String>(sleepPreparationRecommendation),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  DailyPlan copyWith(
          {String? id,
          String? userId,
          DateTime? date,
          String? priorityActionsJson,
          String? morningLightTarget,
          String? nutritionWindowStart,
          String? nutritionWindowEnd,
          String? caffeineCutoffTime,
          String? trainingRecommendation,
          String? eveningLightRecommendation,
          String? sleepPreparationRecommendation,
          DateTime? createdAt}) =>
      DailyPlan(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        date: date ?? this.date,
        priorityActionsJson: priorityActionsJson ?? this.priorityActionsJson,
        morningLightTarget: morningLightTarget ?? this.morningLightTarget,
        nutritionWindowStart: nutritionWindowStart ?? this.nutritionWindowStart,
        nutritionWindowEnd: nutritionWindowEnd ?? this.nutritionWindowEnd,
        caffeineCutoffTime: caffeineCutoffTime ?? this.caffeineCutoffTime,
        trainingRecommendation:
            trainingRecommendation ?? this.trainingRecommendation,
        eveningLightRecommendation:
            eveningLightRecommendation ?? this.eveningLightRecommendation,
        sleepPreparationRecommendation: sleepPreparationRecommendation ??
            this.sleepPreparationRecommendation,
        createdAt: createdAt ?? this.createdAt,
      );
  DailyPlan copyWithCompanion(DailyPlansCompanion data) {
    return DailyPlan(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      date: data.date.present ? data.date.value : this.date,
      priorityActionsJson: data.priorityActionsJson.present
          ? data.priorityActionsJson.value
          : this.priorityActionsJson,
      morningLightTarget: data.morningLightTarget.present
          ? data.morningLightTarget.value
          : this.morningLightTarget,
      nutritionWindowStart: data.nutritionWindowStart.present
          ? data.nutritionWindowStart.value
          : this.nutritionWindowStart,
      nutritionWindowEnd: data.nutritionWindowEnd.present
          ? data.nutritionWindowEnd.value
          : this.nutritionWindowEnd,
      caffeineCutoffTime: data.caffeineCutoffTime.present
          ? data.caffeineCutoffTime.value
          : this.caffeineCutoffTime,
      trainingRecommendation: data.trainingRecommendation.present
          ? data.trainingRecommendation.value
          : this.trainingRecommendation,
      eveningLightRecommendation: data.eveningLightRecommendation.present
          ? data.eveningLightRecommendation.value
          : this.eveningLightRecommendation,
      sleepPreparationRecommendation:
          data.sleepPreparationRecommendation.present
              ? data.sleepPreparationRecommendation.value
              : this.sleepPreparationRecommendation,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DailyPlan(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('priorityActionsJson: $priorityActionsJson, ')
          ..write('morningLightTarget: $morningLightTarget, ')
          ..write('nutritionWindowStart: $nutritionWindowStart, ')
          ..write('nutritionWindowEnd: $nutritionWindowEnd, ')
          ..write('caffeineCutoffTime: $caffeineCutoffTime, ')
          ..write('trainingRecommendation: $trainingRecommendation, ')
          ..write('eveningLightRecommendation: $eveningLightRecommendation, ')
          ..write(
              'sleepPreparationRecommendation: $sleepPreparationRecommendation, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userId,
      date,
      priorityActionsJson,
      morningLightTarget,
      nutritionWindowStart,
      nutritionWindowEnd,
      caffeineCutoffTime,
      trainingRecommendation,
      eveningLightRecommendation,
      sleepPreparationRecommendation,
      createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DailyPlan &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.date == this.date &&
          other.priorityActionsJson == this.priorityActionsJson &&
          other.morningLightTarget == this.morningLightTarget &&
          other.nutritionWindowStart == this.nutritionWindowStart &&
          other.nutritionWindowEnd == this.nutritionWindowEnd &&
          other.caffeineCutoffTime == this.caffeineCutoffTime &&
          other.trainingRecommendation == this.trainingRecommendation &&
          other.eveningLightRecommendation == this.eveningLightRecommendation &&
          other.sleepPreparationRecommendation ==
              this.sleepPreparationRecommendation &&
          other.createdAt == this.createdAt);
}

class DailyPlansCompanion extends UpdateCompanion<DailyPlan> {
  final Value<String> id;
  final Value<String> userId;
  final Value<DateTime> date;
  final Value<String> priorityActionsJson;
  final Value<String> morningLightTarget;
  final Value<String> nutritionWindowStart;
  final Value<String> nutritionWindowEnd;
  final Value<String> caffeineCutoffTime;
  final Value<String> trainingRecommendation;
  final Value<String> eveningLightRecommendation;
  final Value<String> sleepPreparationRecommendation;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const DailyPlansCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.date = const Value.absent(),
    this.priorityActionsJson = const Value.absent(),
    this.morningLightTarget = const Value.absent(),
    this.nutritionWindowStart = const Value.absent(),
    this.nutritionWindowEnd = const Value.absent(),
    this.caffeineCutoffTime = const Value.absent(),
    this.trainingRecommendation = const Value.absent(),
    this.eveningLightRecommendation = const Value.absent(),
    this.sleepPreparationRecommendation = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DailyPlansCompanion.insert({
    required String id,
    required String userId,
    required DateTime date,
    required String priorityActionsJson,
    required String morningLightTarget,
    required String nutritionWindowStart,
    required String nutritionWindowEnd,
    required String caffeineCutoffTime,
    required String trainingRecommendation,
    required String eveningLightRecommendation,
    required String sleepPreparationRecommendation,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        userId = Value(userId),
        date = Value(date),
        priorityActionsJson = Value(priorityActionsJson),
        morningLightTarget = Value(morningLightTarget),
        nutritionWindowStart = Value(nutritionWindowStart),
        nutritionWindowEnd = Value(nutritionWindowEnd),
        caffeineCutoffTime = Value(caffeineCutoffTime),
        trainingRecommendation = Value(trainingRecommendation),
        eveningLightRecommendation = Value(eveningLightRecommendation),
        sleepPreparationRecommendation = Value(sleepPreparationRecommendation),
        createdAt = Value(createdAt);
  static Insertable<DailyPlan> custom({
    Expression<String>? id,
    Expression<String>? userId,
    Expression<DateTime>? date,
    Expression<String>? priorityActionsJson,
    Expression<String>? morningLightTarget,
    Expression<String>? nutritionWindowStart,
    Expression<String>? nutritionWindowEnd,
    Expression<String>? caffeineCutoffTime,
    Expression<String>? trainingRecommendation,
    Expression<String>? eveningLightRecommendation,
    Expression<String>? sleepPreparationRecommendation,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (date != null) 'date': date,
      if (priorityActionsJson != null)
        'priority_actions_json': priorityActionsJson,
      if (morningLightTarget != null)
        'morning_light_target': morningLightTarget,
      if (nutritionWindowStart != null)
        'nutrition_window_start': nutritionWindowStart,
      if (nutritionWindowEnd != null)
        'nutrition_window_end': nutritionWindowEnd,
      if (caffeineCutoffTime != null)
        'caffeine_cutoff_time': caffeineCutoffTime,
      if (trainingRecommendation != null)
        'training_recommendation': trainingRecommendation,
      if (eveningLightRecommendation != null)
        'evening_light_recommendation': eveningLightRecommendation,
      if (sleepPreparationRecommendation != null)
        'sleep_preparation_recommendation': sleepPreparationRecommendation,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DailyPlansCompanion copyWith(
      {Value<String>? id,
      Value<String>? userId,
      Value<DateTime>? date,
      Value<String>? priorityActionsJson,
      Value<String>? morningLightTarget,
      Value<String>? nutritionWindowStart,
      Value<String>? nutritionWindowEnd,
      Value<String>? caffeineCutoffTime,
      Value<String>? trainingRecommendation,
      Value<String>? eveningLightRecommendation,
      Value<String>? sleepPreparationRecommendation,
      Value<DateTime>? createdAt,
      Value<int>? rowid}) {
    return DailyPlansCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      date: date ?? this.date,
      priorityActionsJson: priorityActionsJson ?? this.priorityActionsJson,
      morningLightTarget: morningLightTarget ?? this.morningLightTarget,
      nutritionWindowStart: nutritionWindowStart ?? this.nutritionWindowStart,
      nutritionWindowEnd: nutritionWindowEnd ?? this.nutritionWindowEnd,
      caffeineCutoffTime: caffeineCutoffTime ?? this.caffeineCutoffTime,
      trainingRecommendation:
          trainingRecommendation ?? this.trainingRecommendation,
      eveningLightRecommendation:
          eveningLightRecommendation ?? this.eveningLightRecommendation,
      sleepPreparationRecommendation:
          sleepPreparationRecommendation ?? this.sleepPreparationRecommendation,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (priorityActionsJson.present) {
      map['priority_actions_json'] =
          Variable<String>(priorityActionsJson.value);
    }
    if (morningLightTarget.present) {
      map['morning_light_target'] = Variable<String>(morningLightTarget.value);
    }
    if (nutritionWindowStart.present) {
      map['nutrition_window_start'] =
          Variable<String>(nutritionWindowStart.value);
    }
    if (nutritionWindowEnd.present) {
      map['nutrition_window_end'] = Variable<String>(nutritionWindowEnd.value);
    }
    if (caffeineCutoffTime.present) {
      map['caffeine_cutoff_time'] = Variable<String>(caffeineCutoffTime.value);
    }
    if (trainingRecommendation.present) {
      map['training_recommendation'] =
          Variable<String>(trainingRecommendation.value);
    }
    if (eveningLightRecommendation.present) {
      map['evening_light_recommendation'] =
          Variable<String>(eveningLightRecommendation.value);
    }
    if (sleepPreparationRecommendation.present) {
      map['sleep_preparation_recommendation'] =
          Variable<String>(sleepPreparationRecommendation.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DailyPlansCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('date: $date, ')
          ..write('priorityActionsJson: $priorityActionsJson, ')
          ..write('morningLightTarget: $morningLightTarget, ')
          ..write('nutritionWindowStart: $nutritionWindowStart, ')
          ..write('nutritionWindowEnd: $nutritionWindowEnd, ')
          ..write('caffeineCutoffTime: $caffeineCutoffTime, ')
          ..write('trainingRecommendation: $trainingRecommendation, ')
          ..write('eveningLightRecommendation: $eveningLightRecommendation, ')
          ..write(
              'sleepPreparationRecommendation: $sleepPreparationRecommendation, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserProfilesTable userProfiles = $UserProfilesTable(this);
  late final $LightExposureEventsTable lightExposureEvents =
      $LightExposureEventsTable(this);
  late final $NutritionEventsTable nutritionEvents =
      $NutritionEventsTable(this);
  late final $SleepRecordsTable sleepRecords = $SleepRecordsTable(this);
  late final $DailyBiometricsTableTable dailyBiometricsTable =
      $DailyBiometricsTableTable(this);
  late final $TrainingSessionsTable trainingSessions =
      $TrainingSessionsTable(this);
  late final $CaffeineEventsTable caffeineEvents = $CaffeineEventsTable(this);
  late final $ScreenUsageEventsTable screenUsageEvents =
      $ScreenUsageEventsTable(this);
  late final $CircadianScoresTable circadianScores =
      $CircadianScoresTable(this);
  late final $DailyPlansTable dailyPlans = $DailyPlansTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        userProfiles,
        lightExposureEvents,
        nutritionEvents,
        sleepRecords,
        dailyBiometricsTable,
        trainingSessions,
        caffeineEvents,
        screenUsageEvents,
        circadianScores,
        dailyPlans
      ];
}

typedef $$UserProfilesTableCreateCompanionBuilder = UserProfilesCompanion
    Function({
  required String id,
  required String name,
  Value<DateTime?> birthDate,
  Value<String?> sex,
  Value<double?> heightCm,
  Value<double?> weightKg,
  required String fitzpatrickSkinType,
  required String baseChronotype,
  required String workScheduleType,
  required bool isNightShiftWorker,
  required String usualWakeTime,
  required String usualSleepTime,
  required String mainGoal,
  required String trainingProfile,
  required DateTime createdAt,
  required DateTime updatedAt,
  Value<int> rowid,
});
typedef $$UserProfilesTableUpdateCompanionBuilder = UserProfilesCompanion
    Function({
  Value<String> id,
  Value<String> name,
  Value<DateTime?> birthDate,
  Value<String?> sex,
  Value<double?> heightCm,
  Value<double?> weightKg,
  Value<String> fitzpatrickSkinType,
  Value<String> baseChronotype,
  Value<String> workScheduleType,
  Value<bool> isNightShiftWorker,
  Value<String> usualWakeTime,
  Value<String> usualSleepTime,
  Value<String> mainGoal,
  Value<String> trainingProfile,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

final class $$UserProfilesTableReferences
    extends BaseReferences<_$AppDatabase, $UserProfilesTable, UserProfile> {
  $$UserProfilesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$LightExposureEventsTable,
      List<LightExposureEvent>> _lightExposureEventsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.lightExposureEvents,
          aliasName: $_aliasNameGenerator(
              db.userProfiles.id, db.lightExposureEvents.userId));

  $$LightExposureEventsTableProcessedTableManager get lightExposureEventsRefs {
    final manager =
        $$LightExposureEventsTableTableManager($_db, $_db.lightExposureEvents)
            .filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_lightExposureEventsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$NutritionEventsTable, List<NutritionEvent>>
      _nutritionEventsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.nutritionEvents,
              aliasName: $_aliasNameGenerator(
                  db.userProfiles.id, db.nutritionEvents.userId));

  $$NutritionEventsTableProcessedTableManager get nutritionEventsRefs {
    final manager =
        $$NutritionEventsTableTableManager($_db, $_db.nutritionEvents)
            .filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_nutritionEventsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$SleepRecordsTable, List<SleepRecord>>
      _sleepRecordsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.sleepRecords,
          aliasName:
              $_aliasNameGenerator(db.userProfiles.id, db.sleepRecords.userId));

  $$SleepRecordsTableProcessedTableManager get sleepRecordsRefs {
    final manager = $$SleepRecordsTableTableManager($_db, $_db.sleepRecords)
        .filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_sleepRecordsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DailyBiometricsTableTable,
      List<DailyBiometricsTableData>> _dailyBiometricsTableRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.dailyBiometricsTable,
          aliasName: $_aliasNameGenerator(
              db.userProfiles.id, db.dailyBiometricsTable.userId));

  $$DailyBiometricsTableTableProcessedTableManager
      get dailyBiometricsTableRefs {
    final manager =
        $$DailyBiometricsTableTableTableManager($_db, $_db.dailyBiometricsTable)
            .filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_dailyBiometricsTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$TrainingSessionsTable, List<TrainingSession>>
      _trainingSessionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.trainingSessions,
              aliasName: $_aliasNameGenerator(
                  db.userProfiles.id, db.trainingSessions.userId));

  $$TrainingSessionsTableProcessedTableManager get trainingSessionsRefs {
    final manager =
        $$TrainingSessionsTableTableManager($_db, $_db.trainingSessions)
            .filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_trainingSessionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$CaffeineEventsTable, List<CaffeineEvent>>
      _caffeineEventsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.caffeineEvents,
              aliasName: $_aliasNameGenerator(
                  db.userProfiles.id, db.caffeineEvents.userId));

  $$CaffeineEventsTableProcessedTableManager get caffeineEventsRefs {
    final manager = $$CaffeineEventsTableTableManager($_db, $_db.caffeineEvents)
        .filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_caffeineEventsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$ScreenUsageEventsTable, List<ScreenUsageEvent>>
      _screenUsageEventsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.screenUsageEvents,
              aliasName: $_aliasNameGenerator(
                  db.userProfiles.id, db.screenUsageEvents.userId));

  $$ScreenUsageEventsTableProcessedTableManager get screenUsageEventsRefs {
    final manager =
        $$ScreenUsageEventsTableTableManager($_db, $_db.screenUsageEvents)
            .filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_screenUsageEventsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$CircadianScoresTable, List<CircadianScore>>
      _circadianScoresRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.circadianScores,
              aliasName: $_aliasNameGenerator(
                  db.userProfiles.id, db.circadianScores.userId));

  $$CircadianScoresTableProcessedTableManager get circadianScoresRefs {
    final manager =
        $$CircadianScoresTableTableManager($_db, $_db.circadianScores)
            .filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_circadianScoresRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DailyPlansTable, List<DailyPlan>>
      _dailyPlansRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
          db.dailyPlans,
          aliasName:
              $_aliasNameGenerator(db.userProfiles.id, db.dailyPlans.userId));

  $$DailyPlansTableProcessedTableManager get dailyPlansRefs {
    final manager = $$DailyPlansTableTableManager($_db, $_db.dailyPlans)
        .filter((f) => f.userId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_dailyPlansRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$UserProfilesTableFilterComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sex => $composableBuilder(
      column: $table.sex, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get heightCm => $composableBuilder(
      column: $table.heightCm, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get weightKg => $composableBuilder(
      column: $table.weightKg, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fitzpatrickSkinType => $composableBuilder(
      column: $table.fitzpatrickSkinType,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get baseChronotype => $composableBuilder(
      column: $table.baseChronotype,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get workScheduleType => $composableBuilder(
      column: $table.workScheduleType,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isNightShiftWorker => $composableBuilder(
      column: $table.isNightShiftWorker,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get usualWakeTime => $composableBuilder(
      column: $table.usualWakeTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get usualSleepTime => $composableBuilder(
      column: $table.usualSleepTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mainGoal => $composableBuilder(
      column: $table.mainGoal, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get trainingProfile => $composableBuilder(
      column: $table.trainingProfile,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  Expression<bool> lightExposureEventsRefs(
      Expression<bool> Function($$LightExposureEventsTableFilterComposer f) f) {
    final $$LightExposureEventsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.lightExposureEvents,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$LightExposureEventsTableFilterComposer(
              $db: $db,
              $table: $db.lightExposureEvents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> nutritionEventsRefs(
      Expression<bool> Function($$NutritionEventsTableFilterComposer f) f) {
    final $$NutritionEventsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.nutritionEvents,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$NutritionEventsTableFilterComposer(
              $db: $db,
              $table: $db.nutritionEvents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> sleepRecordsRefs(
      Expression<bool> Function($$SleepRecordsTableFilterComposer f) f) {
    final $$SleepRecordsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sleepRecords,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SleepRecordsTableFilterComposer(
              $db: $db,
              $table: $db.sleepRecords,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> dailyBiometricsTableRefs(
      Expression<bool> Function($$DailyBiometricsTableTableFilterComposer f)
          f) {
    final $$DailyBiometricsTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dailyBiometricsTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DailyBiometricsTableTableFilterComposer(
              $db: $db,
              $table: $db.dailyBiometricsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> trainingSessionsRefs(
      Expression<bool> Function($$TrainingSessionsTableFilterComposer f) f) {
    final $$TrainingSessionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.trainingSessions,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TrainingSessionsTableFilterComposer(
              $db: $db,
              $table: $db.trainingSessions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> caffeineEventsRefs(
      Expression<bool> Function($$CaffeineEventsTableFilterComposer f) f) {
    final $$CaffeineEventsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.caffeineEvents,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CaffeineEventsTableFilterComposer(
              $db: $db,
              $table: $db.caffeineEvents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> screenUsageEventsRefs(
      Expression<bool> Function($$ScreenUsageEventsTableFilterComposer f) f) {
    final $$ScreenUsageEventsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.screenUsageEvents,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ScreenUsageEventsTableFilterComposer(
              $db: $db,
              $table: $db.screenUsageEvents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> circadianScoresRefs(
      Expression<bool> Function($$CircadianScoresTableFilterComposer f) f) {
    final $$CircadianScoresTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.circadianScores,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CircadianScoresTableFilterComposer(
              $db: $db,
              $table: $db.circadianScores,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> dailyPlansRefs(
      Expression<bool> Function($$DailyPlansTableFilterComposer f) f) {
    final $$DailyPlansTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dailyPlans,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DailyPlansTableFilterComposer(
              $db: $db,
              $table: $db.dailyPlans,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserProfilesTableOrderingComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sex => $composableBuilder(
      column: $table.sex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get heightCm => $composableBuilder(
      column: $table.heightCm, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get weightKg => $composableBuilder(
      column: $table.weightKg, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fitzpatrickSkinType => $composableBuilder(
      column: $table.fitzpatrickSkinType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get baseChronotype => $composableBuilder(
      column: $table.baseChronotype,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get workScheduleType => $composableBuilder(
      column: $table.workScheduleType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isNightShiftWorker => $composableBuilder(
      column: $table.isNightShiftWorker,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get usualWakeTime => $composableBuilder(
      column: $table.usualWakeTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get usualSleepTime => $composableBuilder(
      column: $table.usualSleepTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mainGoal => $composableBuilder(
      column: $table.mainGoal, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get trainingProfile => $composableBuilder(
      column: $table.trainingProfile,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$UserProfilesTableAnnotationComposer
    extends Composer<_$AppDatabase, $UserProfilesTable> {
  $$UserProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<String> get sex =>
      $composableBuilder(column: $table.sex, builder: (column) => column);

  GeneratedColumn<double> get heightCm =>
      $composableBuilder(column: $table.heightCm, builder: (column) => column);

  GeneratedColumn<double> get weightKg =>
      $composableBuilder(column: $table.weightKg, builder: (column) => column);

  GeneratedColumn<String> get fitzpatrickSkinType => $composableBuilder(
      column: $table.fitzpatrickSkinType, builder: (column) => column);

  GeneratedColumn<String> get baseChronotype => $composableBuilder(
      column: $table.baseChronotype, builder: (column) => column);

  GeneratedColumn<String> get workScheduleType => $composableBuilder(
      column: $table.workScheduleType, builder: (column) => column);

  GeneratedColumn<bool> get isNightShiftWorker => $composableBuilder(
      column: $table.isNightShiftWorker, builder: (column) => column);

  GeneratedColumn<String> get usualWakeTime => $composableBuilder(
      column: $table.usualWakeTime, builder: (column) => column);

  GeneratedColumn<String> get usualSleepTime => $composableBuilder(
      column: $table.usualSleepTime, builder: (column) => column);

  GeneratedColumn<String> get mainGoal =>
      $composableBuilder(column: $table.mainGoal, builder: (column) => column);

  GeneratedColumn<String> get trainingProfile => $composableBuilder(
      column: $table.trainingProfile, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> lightExposureEventsRefs<T extends Object>(
      Expression<T> Function($$LightExposureEventsTableAnnotationComposer a)
          f) {
    final $$LightExposureEventsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.lightExposureEvents,
            getReferencedColumn: (t) => t.userId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$LightExposureEventsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.lightExposureEvents,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> nutritionEventsRefs<T extends Object>(
      Expression<T> Function($$NutritionEventsTableAnnotationComposer a) f) {
    final $$NutritionEventsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.nutritionEvents,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$NutritionEventsTableAnnotationComposer(
              $db: $db,
              $table: $db.nutritionEvents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> sleepRecordsRefs<T extends Object>(
      Expression<T> Function($$SleepRecordsTableAnnotationComposer a) f) {
    final $$SleepRecordsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.sleepRecords,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$SleepRecordsTableAnnotationComposer(
              $db: $db,
              $table: $db.sleepRecords,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> dailyBiometricsTableRefs<T extends Object>(
      Expression<T> Function($$DailyBiometricsTableTableAnnotationComposer a)
          f) {
    final $$DailyBiometricsTableTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.dailyBiometricsTable,
            getReferencedColumn: (t) => t.userId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$DailyBiometricsTableTableAnnotationComposer(
                  $db: $db,
                  $table: $db.dailyBiometricsTable,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> trainingSessionsRefs<T extends Object>(
      Expression<T> Function($$TrainingSessionsTableAnnotationComposer a) f) {
    final $$TrainingSessionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.trainingSessions,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TrainingSessionsTableAnnotationComposer(
              $db: $db,
              $table: $db.trainingSessions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> caffeineEventsRefs<T extends Object>(
      Expression<T> Function($$CaffeineEventsTableAnnotationComposer a) f) {
    final $$CaffeineEventsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.caffeineEvents,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CaffeineEventsTableAnnotationComposer(
              $db: $db,
              $table: $db.caffeineEvents,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> screenUsageEventsRefs<T extends Object>(
      Expression<T> Function($$ScreenUsageEventsTableAnnotationComposer a) f) {
    final $$ScreenUsageEventsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.screenUsageEvents,
            getReferencedColumn: (t) => t.userId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$ScreenUsageEventsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.screenUsageEvents,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> circadianScoresRefs<T extends Object>(
      Expression<T> Function($$CircadianScoresTableAnnotationComposer a) f) {
    final $$CircadianScoresTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.circadianScores,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CircadianScoresTableAnnotationComposer(
              $db: $db,
              $table: $db.circadianScores,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> dailyPlansRefs<T extends Object>(
      Expression<T> Function($$DailyPlansTableAnnotationComposer a) f) {
    final $$DailyPlansTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dailyPlans,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DailyPlansTableAnnotationComposer(
              $db: $db,
              $table: $db.dailyPlans,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserProfilesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserProfilesTable,
    UserProfile,
    $$UserProfilesTableFilterComposer,
    $$UserProfilesTableOrderingComposer,
    $$UserProfilesTableAnnotationComposer,
    $$UserProfilesTableCreateCompanionBuilder,
    $$UserProfilesTableUpdateCompanionBuilder,
    (UserProfile, $$UserProfilesTableReferences),
    UserProfile,
    PrefetchHooks Function(
        {bool lightExposureEventsRefs,
        bool nutritionEventsRefs,
        bool sleepRecordsRefs,
        bool dailyBiometricsTableRefs,
        bool trainingSessionsRefs,
        bool caffeineEventsRefs,
        bool screenUsageEventsRefs,
        bool circadianScoresRefs,
        bool dailyPlansRefs})> {
  $$UserProfilesTableTableManager(_$AppDatabase db, $UserProfilesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> sex = const Value.absent(),
            Value<double?> heightCm = const Value.absent(),
            Value<double?> weightKg = const Value.absent(),
            Value<String> fitzpatrickSkinType = const Value.absent(),
            Value<String> baseChronotype = const Value.absent(),
            Value<String> workScheduleType = const Value.absent(),
            Value<bool> isNightShiftWorker = const Value.absent(),
            Value<String> usualWakeTime = const Value.absent(),
            Value<String> usualSleepTime = const Value.absent(),
            Value<String> mainGoal = const Value.absent(),
            Value<String> trainingProfile = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserProfilesCompanion(
            id: id,
            name: name,
            birthDate: birthDate,
            sex: sex,
            heightCm: heightCm,
            weightKg: weightKg,
            fitzpatrickSkinType: fitzpatrickSkinType,
            baseChronotype: baseChronotype,
            workScheduleType: workScheduleType,
            isNightShiftWorker: isNightShiftWorker,
            usualWakeTime: usualWakeTime,
            usualSleepTime: usualSleepTime,
            mainGoal: mainGoal,
            trainingProfile: trainingProfile,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String name,
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> sex = const Value.absent(),
            Value<double?> heightCm = const Value.absent(),
            Value<double?> weightKg = const Value.absent(),
            required String fitzpatrickSkinType,
            required String baseChronotype,
            required String workScheduleType,
            required bool isNightShiftWorker,
            required String usualWakeTime,
            required String usualSleepTime,
            required String mainGoal,
            required String trainingProfile,
            required DateTime createdAt,
            required DateTime updatedAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserProfilesCompanion.insert(
            id: id,
            name: name,
            birthDate: birthDate,
            sex: sex,
            heightCm: heightCm,
            weightKg: weightKg,
            fitzpatrickSkinType: fitzpatrickSkinType,
            baseChronotype: baseChronotype,
            workScheduleType: workScheduleType,
            isNightShiftWorker: isNightShiftWorker,
            usualWakeTime: usualWakeTime,
            usualSleepTime: usualSleepTime,
            mainGoal: mainGoal,
            trainingProfile: trainingProfile,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserProfilesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {lightExposureEventsRefs = false,
              nutritionEventsRefs = false,
              sleepRecordsRefs = false,
              dailyBiometricsTableRefs = false,
              trainingSessionsRefs = false,
              caffeineEventsRefs = false,
              screenUsageEventsRefs = false,
              circadianScoresRefs = false,
              dailyPlansRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (lightExposureEventsRefs) db.lightExposureEvents,
                if (nutritionEventsRefs) db.nutritionEvents,
                if (sleepRecordsRefs) db.sleepRecords,
                if (dailyBiometricsTableRefs) db.dailyBiometricsTable,
                if (trainingSessionsRefs) db.trainingSessions,
                if (caffeineEventsRefs) db.caffeineEvents,
                if (screenUsageEventsRefs) db.screenUsageEvents,
                if (circadianScoresRefs) db.circadianScores,
                if (dailyPlansRefs) db.dailyPlans
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (lightExposureEventsRefs)
                    await $_getPrefetchedData<UserProfile, $UserProfilesTable,
                            LightExposureEvent>(
                        currentTable: table,
                        referencedTable: $$UserProfilesTableReferences
                            ._lightExposureEventsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserProfilesTableReferences(db, table, p0)
                                .lightExposureEventsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (nutritionEventsRefs)
                    await $_getPrefetchedData<UserProfile, $UserProfilesTable,
                            NutritionEvent>(
                        currentTable: table,
                        referencedTable: $$UserProfilesTableReferences
                            ._nutritionEventsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserProfilesTableReferences(db, table, p0)
                                .nutritionEventsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (sleepRecordsRefs)
                    await $_getPrefetchedData<UserProfile, $UserProfilesTable,
                            SleepRecord>(
                        currentTable: table,
                        referencedTable: $$UserProfilesTableReferences
                            ._sleepRecordsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserProfilesTableReferences(db, table, p0)
                                .sleepRecordsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (dailyBiometricsTableRefs)
                    await $_getPrefetchedData<UserProfile, $UserProfilesTable,
                            DailyBiometricsTableData>(
                        currentTable: table,
                        referencedTable: $$UserProfilesTableReferences
                            ._dailyBiometricsTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserProfilesTableReferences(db, table, p0)
                                .dailyBiometricsTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (trainingSessionsRefs)
                    await $_getPrefetchedData<UserProfile, $UserProfilesTable,
                            TrainingSession>(
                        currentTable: table,
                        referencedTable: $$UserProfilesTableReferences
                            ._trainingSessionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserProfilesTableReferences(db, table, p0)
                                .trainingSessionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (caffeineEventsRefs)
                    await $_getPrefetchedData<UserProfile, $UserProfilesTable,
                            CaffeineEvent>(
                        currentTable: table,
                        referencedTable: $$UserProfilesTableReferences
                            ._caffeineEventsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserProfilesTableReferences(db, table, p0)
                                .caffeineEventsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (screenUsageEventsRefs)
                    await $_getPrefetchedData<UserProfile, $UserProfilesTable, ScreenUsageEvent>(
                        currentTable: table,
                        referencedTable: $$UserProfilesTableReferences
                            ._screenUsageEventsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserProfilesTableReferences(db, table, p0)
                                .screenUsageEventsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (circadianScoresRefs)
                    await $_getPrefetchedData<UserProfile, $UserProfilesTable,
                            CircadianScore>(
                        currentTable: table,
                        referencedTable: $$UserProfilesTableReferences
                            ._circadianScoresRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserProfilesTableReferences(db, table, p0)
                                .circadianScoresRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (dailyPlansRefs)
                    await $_getPrefetchedData<UserProfile, $UserProfilesTable,
                            DailyPlan>(
                        currentTable: table,
                        referencedTable: $$UserProfilesTableReferences
                            ._dailyPlansRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserProfilesTableReferences(db, table, p0)
                                .dailyPlansRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$UserProfilesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserProfilesTable,
    UserProfile,
    $$UserProfilesTableFilterComposer,
    $$UserProfilesTableOrderingComposer,
    $$UserProfilesTableAnnotationComposer,
    $$UserProfilesTableCreateCompanionBuilder,
    $$UserProfilesTableUpdateCompanionBuilder,
    (UserProfile, $$UserProfilesTableReferences),
    UserProfile,
    PrefetchHooks Function(
        {bool lightExposureEventsRefs,
        bool nutritionEventsRefs,
        bool sleepRecordsRefs,
        bool dailyBiometricsTableRefs,
        bool trainingSessionsRefs,
        bool caffeineEventsRefs,
        bool screenUsageEventsRefs,
        bool circadianScoresRefs,
        bool dailyPlansRefs})>;
typedef $$LightExposureEventsTableCreateCompanionBuilder
    = LightExposureEventsCompanion Function({
  required String id,
  required String userId,
  required DateTime startAt,
  required DateTime endAt,
  required String lightType,
  required int estimatedLux,
  Value<double?> uvIndex,
  required String source,
  required bool isMorningSunlight,
  required bool isSunriseViewed,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$LightExposureEventsTableUpdateCompanionBuilder
    = LightExposureEventsCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> startAt,
  Value<DateTime> endAt,
  Value<String> lightType,
  Value<int> estimatedLux,
  Value<double?> uvIndex,
  Value<String> source,
  Value<bool> isMorningSunlight,
  Value<bool> isSunriseViewed,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$LightExposureEventsTableReferences extends BaseReferences<
    _$AppDatabase, $LightExposureEventsTable, LightExposureEvent> {
  $$LightExposureEventsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias($_aliasNameGenerator(
          db.lightExposureEvents.userId, db.userProfiles.id));

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager($_db, $_db.userProfiles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$LightExposureEventsTableFilterComposer
    extends Composer<_$AppDatabase, $LightExposureEventsTable> {
  $$LightExposureEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startAt => $composableBuilder(
      column: $table.startAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endAt => $composableBuilder(
      column: $table.endAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lightType => $composableBuilder(
      column: $table.lightType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get estimatedLux => $composableBuilder(
      column: $table.estimatedLux, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get uvIndex => $composableBuilder(
      column: $table.uvIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isMorningSunlight => $composableBuilder(
      column: $table.isMorningSunlight,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isSunriseViewed => $composableBuilder(
      column: $table.isSunriseViewed,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableFilterComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$LightExposureEventsTableOrderingComposer
    extends Composer<_$AppDatabase, $LightExposureEventsTable> {
  $$LightExposureEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startAt => $composableBuilder(
      column: $table.startAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endAt => $composableBuilder(
      column: $table.endAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lightType => $composableBuilder(
      column: $table.lightType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get estimatedLux => $composableBuilder(
      column: $table.estimatedLux,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get uvIndex => $composableBuilder(
      column: $table.uvIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isMorningSunlight => $composableBuilder(
      column: $table.isMorningSunlight,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isSunriseViewed => $composableBuilder(
      column: $table.isSunriseViewed,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$LightExposureEventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LightExposureEventsTable> {
  $$LightExposureEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startAt =>
      $composableBuilder(column: $table.startAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endAt =>
      $composableBuilder(column: $table.endAt, builder: (column) => column);

  GeneratedColumn<String> get lightType =>
      $composableBuilder(column: $table.lightType, builder: (column) => column);

  GeneratedColumn<int> get estimatedLux => $composableBuilder(
      column: $table.estimatedLux, builder: (column) => column);

  GeneratedColumn<double> get uvIndex =>
      $composableBuilder(column: $table.uvIndex, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<bool> get isMorningSunlight => $composableBuilder(
      column: $table.isMorningSunlight, builder: (column) => column);

  GeneratedColumn<bool> get isSunriseViewed => $composableBuilder(
      column: $table.isSunriseViewed, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$LightExposureEventsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LightExposureEventsTable,
    LightExposureEvent,
    $$LightExposureEventsTableFilterComposer,
    $$LightExposureEventsTableOrderingComposer,
    $$LightExposureEventsTableAnnotationComposer,
    $$LightExposureEventsTableCreateCompanionBuilder,
    $$LightExposureEventsTableUpdateCompanionBuilder,
    (LightExposureEvent, $$LightExposureEventsTableReferences),
    LightExposureEvent,
    PrefetchHooks Function({bool userId})> {
  $$LightExposureEventsTableTableManager(
      _$AppDatabase db, $LightExposureEventsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LightExposureEventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LightExposureEventsTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LightExposureEventsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> startAt = const Value.absent(),
            Value<DateTime> endAt = const Value.absent(),
            Value<String> lightType = const Value.absent(),
            Value<int> estimatedLux = const Value.absent(),
            Value<double?> uvIndex = const Value.absent(),
            Value<String> source = const Value.absent(),
            Value<bool> isMorningSunlight = const Value.absent(),
            Value<bool> isSunriseViewed = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              LightExposureEventsCompanion(
            id: id,
            userId: userId,
            startAt: startAt,
            endAt: endAt,
            lightType: lightType,
            estimatedLux: estimatedLux,
            uvIndex: uvIndex,
            source: source,
            isMorningSunlight: isMorningSunlight,
            isSunriseViewed: isSunriseViewed,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime startAt,
            required DateTime endAt,
            required String lightType,
            required int estimatedLux,
            Value<double?> uvIndex = const Value.absent(),
            required String source,
            required bool isMorningSunlight,
            required bool isSunriseViewed,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              LightExposureEventsCompanion.insert(
            id: id,
            userId: userId,
            startAt: startAt,
            endAt: endAt,
            lightType: lightType,
            estimatedLux: estimatedLux,
            uvIndex: uvIndex,
            source: source,
            isMorningSunlight: isMorningSunlight,
            isSunriseViewed: isSunriseViewed,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$LightExposureEventsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$LightExposureEventsTableReferences._userIdTable(db),
                    referencedColumn: $$LightExposureEventsTableReferences
                        ._userIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$LightExposureEventsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LightExposureEventsTable,
    LightExposureEvent,
    $$LightExposureEventsTableFilterComposer,
    $$LightExposureEventsTableOrderingComposer,
    $$LightExposureEventsTableAnnotationComposer,
    $$LightExposureEventsTableCreateCompanionBuilder,
    $$LightExposureEventsTableUpdateCompanionBuilder,
    (LightExposureEvent, $$LightExposureEventsTableReferences),
    LightExposureEvent,
    PrefetchHooks Function({bool userId})>;
typedef $$NutritionEventsTableCreateCompanionBuilder = NutritionEventsCompanion
    Function({
  required String id,
  required String userId,
  required DateTime consumedAt,
  required int calories,
  required double proteinGrams,
  required double carbsGrams,
  required double fatGrams,
  required double fiberGrams,
  required String mealType,
  required bool isNightEating,
  Value<double?> hoursBeforeSleep,
  Value<int?> satietyScore,
  Value<int?> energyAfterMealScore,
  Value<int?> anxietyAfterMealScore,
  required String source,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$NutritionEventsTableUpdateCompanionBuilder = NutritionEventsCompanion
    Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> consumedAt,
  Value<int> calories,
  Value<double> proteinGrams,
  Value<double> carbsGrams,
  Value<double> fatGrams,
  Value<double> fiberGrams,
  Value<String> mealType,
  Value<bool> isNightEating,
  Value<double?> hoursBeforeSleep,
  Value<int?> satietyScore,
  Value<int?> energyAfterMealScore,
  Value<int?> anxietyAfterMealScore,
  Value<String> source,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$NutritionEventsTableReferences extends BaseReferences<
    _$AppDatabase, $NutritionEventsTable, NutritionEvent> {
  $$NutritionEventsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias(
          $_aliasNameGenerator(db.nutritionEvents.userId, db.userProfiles.id));

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager($_db, $_db.userProfiles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$NutritionEventsTableFilterComposer
    extends Composer<_$AppDatabase, $NutritionEventsTable> {
  $$NutritionEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get consumedAt => $composableBuilder(
      column: $table.consumedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get calories => $composableBuilder(
      column: $table.calories, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get proteinGrams => $composableBuilder(
      column: $table.proteinGrams, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get carbsGrams => $composableBuilder(
      column: $table.carbsGrams, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get fatGrams => $composableBuilder(
      column: $table.fatGrams, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get fiberGrams => $composableBuilder(
      column: $table.fiberGrams, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mealType => $composableBuilder(
      column: $table.mealType, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isNightEating => $composableBuilder(
      column: $table.isNightEating, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get hoursBeforeSleep => $composableBuilder(
      column: $table.hoursBeforeSleep,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get satietyScore => $composableBuilder(
      column: $table.satietyScore, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get energyAfterMealScore => $composableBuilder(
      column: $table.energyAfterMealScore,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get anxietyAfterMealScore => $composableBuilder(
      column: $table.anxietyAfterMealScore,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableFilterComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$NutritionEventsTableOrderingComposer
    extends Composer<_$AppDatabase, $NutritionEventsTable> {
  $$NutritionEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get consumedAt => $composableBuilder(
      column: $table.consumedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get calories => $composableBuilder(
      column: $table.calories, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get proteinGrams => $composableBuilder(
      column: $table.proteinGrams,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get carbsGrams => $composableBuilder(
      column: $table.carbsGrams, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get fatGrams => $composableBuilder(
      column: $table.fatGrams, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get fiberGrams => $composableBuilder(
      column: $table.fiberGrams, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mealType => $composableBuilder(
      column: $table.mealType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isNightEating => $composableBuilder(
      column: $table.isNightEating,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get hoursBeforeSleep => $composableBuilder(
      column: $table.hoursBeforeSleep,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get satietyScore => $composableBuilder(
      column: $table.satietyScore,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get energyAfterMealScore => $composableBuilder(
      column: $table.energyAfterMealScore,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get anxietyAfterMealScore => $composableBuilder(
      column: $table.anxietyAfterMealScore,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$NutritionEventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $NutritionEventsTable> {
  $$NutritionEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get consumedAt => $composableBuilder(
      column: $table.consumedAt, builder: (column) => column);

  GeneratedColumn<int> get calories =>
      $composableBuilder(column: $table.calories, builder: (column) => column);

  GeneratedColumn<double> get proteinGrams => $composableBuilder(
      column: $table.proteinGrams, builder: (column) => column);

  GeneratedColumn<double> get carbsGrams => $composableBuilder(
      column: $table.carbsGrams, builder: (column) => column);

  GeneratedColumn<double> get fatGrams =>
      $composableBuilder(column: $table.fatGrams, builder: (column) => column);

  GeneratedColumn<double> get fiberGrams => $composableBuilder(
      column: $table.fiberGrams, builder: (column) => column);

  GeneratedColumn<String> get mealType =>
      $composableBuilder(column: $table.mealType, builder: (column) => column);

  GeneratedColumn<bool> get isNightEating => $composableBuilder(
      column: $table.isNightEating, builder: (column) => column);

  GeneratedColumn<double> get hoursBeforeSleep => $composableBuilder(
      column: $table.hoursBeforeSleep, builder: (column) => column);

  GeneratedColumn<int> get satietyScore => $composableBuilder(
      column: $table.satietyScore, builder: (column) => column);

  GeneratedColumn<int> get energyAfterMealScore => $composableBuilder(
      column: $table.energyAfterMealScore, builder: (column) => column);

  GeneratedColumn<int> get anxietyAfterMealScore => $composableBuilder(
      column: $table.anxietyAfterMealScore, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$NutritionEventsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $NutritionEventsTable,
    NutritionEvent,
    $$NutritionEventsTableFilterComposer,
    $$NutritionEventsTableOrderingComposer,
    $$NutritionEventsTableAnnotationComposer,
    $$NutritionEventsTableCreateCompanionBuilder,
    $$NutritionEventsTableUpdateCompanionBuilder,
    (NutritionEvent, $$NutritionEventsTableReferences),
    NutritionEvent,
    PrefetchHooks Function({bool userId})> {
  $$NutritionEventsTableTableManager(
      _$AppDatabase db, $NutritionEventsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NutritionEventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NutritionEventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NutritionEventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> consumedAt = const Value.absent(),
            Value<int> calories = const Value.absent(),
            Value<double> proteinGrams = const Value.absent(),
            Value<double> carbsGrams = const Value.absent(),
            Value<double> fatGrams = const Value.absent(),
            Value<double> fiberGrams = const Value.absent(),
            Value<String> mealType = const Value.absent(),
            Value<bool> isNightEating = const Value.absent(),
            Value<double?> hoursBeforeSleep = const Value.absent(),
            Value<int?> satietyScore = const Value.absent(),
            Value<int?> energyAfterMealScore = const Value.absent(),
            Value<int?> anxietyAfterMealScore = const Value.absent(),
            Value<String> source = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NutritionEventsCompanion(
            id: id,
            userId: userId,
            consumedAt: consumedAt,
            calories: calories,
            proteinGrams: proteinGrams,
            carbsGrams: carbsGrams,
            fatGrams: fatGrams,
            fiberGrams: fiberGrams,
            mealType: mealType,
            isNightEating: isNightEating,
            hoursBeforeSleep: hoursBeforeSleep,
            satietyScore: satietyScore,
            energyAfterMealScore: energyAfterMealScore,
            anxietyAfterMealScore: anxietyAfterMealScore,
            source: source,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime consumedAt,
            required int calories,
            required double proteinGrams,
            required double carbsGrams,
            required double fatGrams,
            required double fiberGrams,
            required String mealType,
            required bool isNightEating,
            Value<double?> hoursBeforeSleep = const Value.absent(),
            Value<int?> satietyScore = const Value.absent(),
            Value<int?> energyAfterMealScore = const Value.absent(),
            Value<int?> anxietyAfterMealScore = const Value.absent(),
            required String source,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              NutritionEventsCompanion.insert(
            id: id,
            userId: userId,
            consumedAt: consumedAt,
            calories: calories,
            proteinGrams: proteinGrams,
            carbsGrams: carbsGrams,
            fatGrams: fatGrams,
            fiberGrams: fiberGrams,
            mealType: mealType,
            isNightEating: isNightEating,
            hoursBeforeSleep: hoursBeforeSleep,
            satietyScore: satietyScore,
            energyAfterMealScore: energyAfterMealScore,
            anxietyAfterMealScore: anxietyAfterMealScore,
            source: source,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$NutritionEventsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$NutritionEventsTableReferences._userIdTable(db),
                    referencedColumn:
                        $$NutritionEventsTableReferences._userIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$NutritionEventsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $NutritionEventsTable,
    NutritionEvent,
    $$NutritionEventsTableFilterComposer,
    $$NutritionEventsTableOrderingComposer,
    $$NutritionEventsTableAnnotationComposer,
    $$NutritionEventsTableCreateCompanionBuilder,
    $$NutritionEventsTableUpdateCompanionBuilder,
    (NutritionEvent, $$NutritionEventsTableReferences),
    NutritionEvent,
    PrefetchHooks Function({bool userId})>;
typedef $$SleepRecordsTableCreateCompanionBuilder = SleepRecordsCompanion
    Function({
  required String id,
  required String userId,
  required DateTime sleepStart,
  required DateTime sleepEnd,
  required int totalSleepMinutes,
  required double sleepEfficiency,
  Value<int?> deepSleepMinutes,
  Value<int?> remSleepMinutes,
  Value<int?> awakenings,
  required String source,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$SleepRecordsTableUpdateCompanionBuilder = SleepRecordsCompanion
    Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> sleepStart,
  Value<DateTime> sleepEnd,
  Value<int> totalSleepMinutes,
  Value<double> sleepEfficiency,
  Value<int?> deepSleepMinutes,
  Value<int?> remSleepMinutes,
  Value<int?> awakenings,
  Value<String> source,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$SleepRecordsTableReferences
    extends BaseReferences<_$AppDatabase, $SleepRecordsTable, SleepRecord> {
  $$SleepRecordsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias(
          $_aliasNameGenerator(db.sleepRecords.userId, db.userProfiles.id));

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager($_db, $_db.userProfiles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$SleepRecordsTableFilterComposer
    extends Composer<_$AppDatabase, $SleepRecordsTable> {
  $$SleepRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get sleepStart => $composableBuilder(
      column: $table.sleepStart, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get sleepEnd => $composableBuilder(
      column: $table.sleepEnd, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalSleepMinutes => $composableBuilder(
      column: $table.totalSleepMinutes,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get sleepEfficiency => $composableBuilder(
      column: $table.sleepEfficiency,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get deepSleepMinutes => $composableBuilder(
      column: $table.deepSleepMinutes,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get remSleepMinutes => $composableBuilder(
      column: $table.remSleepMinutes,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get awakenings => $composableBuilder(
      column: $table.awakenings, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableFilterComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SleepRecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $SleepRecordsTable> {
  $$SleepRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get sleepStart => $composableBuilder(
      column: $table.sleepStart, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get sleepEnd => $composableBuilder(
      column: $table.sleepEnd, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalSleepMinutes => $composableBuilder(
      column: $table.totalSleepMinutes,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get sleepEfficiency => $composableBuilder(
      column: $table.sleepEfficiency,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get deepSleepMinutes => $composableBuilder(
      column: $table.deepSleepMinutes,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get remSleepMinutes => $composableBuilder(
      column: $table.remSleepMinutes,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get awakenings => $composableBuilder(
      column: $table.awakenings, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SleepRecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SleepRecordsTable> {
  $$SleepRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get sleepStart => $composableBuilder(
      column: $table.sleepStart, builder: (column) => column);

  GeneratedColumn<DateTime> get sleepEnd =>
      $composableBuilder(column: $table.sleepEnd, builder: (column) => column);

  GeneratedColumn<int> get totalSleepMinutes => $composableBuilder(
      column: $table.totalSleepMinutes, builder: (column) => column);

  GeneratedColumn<double> get sleepEfficiency => $composableBuilder(
      column: $table.sleepEfficiency, builder: (column) => column);

  GeneratedColumn<int> get deepSleepMinutes => $composableBuilder(
      column: $table.deepSleepMinutes, builder: (column) => column);

  GeneratedColumn<int> get remSleepMinutes => $composableBuilder(
      column: $table.remSleepMinutes, builder: (column) => column);

  GeneratedColumn<int> get awakenings => $composableBuilder(
      column: $table.awakenings, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$SleepRecordsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SleepRecordsTable,
    SleepRecord,
    $$SleepRecordsTableFilterComposer,
    $$SleepRecordsTableOrderingComposer,
    $$SleepRecordsTableAnnotationComposer,
    $$SleepRecordsTableCreateCompanionBuilder,
    $$SleepRecordsTableUpdateCompanionBuilder,
    (SleepRecord, $$SleepRecordsTableReferences),
    SleepRecord,
    PrefetchHooks Function({bool userId})> {
  $$SleepRecordsTableTableManager(_$AppDatabase db, $SleepRecordsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SleepRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SleepRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SleepRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> sleepStart = const Value.absent(),
            Value<DateTime> sleepEnd = const Value.absent(),
            Value<int> totalSleepMinutes = const Value.absent(),
            Value<double> sleepEfficiency = const Value.absent(),
            Value<int?> deepSleepMinutes = const Value.absent(),
            Value<int?> remSleepMinutes = const Value.absent(),
            Value<int?> awakenings = const Value.absent(),
            Value<String> source = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SleepRecordsCompanion(
            id: id,
            userId: userId,
            sleepStart: sleepStart,
            sleepEnd: sleepEnd,
            totalSleepMinutes: totalSleepMinutes,
            sleepEfficiency: sleepEfficiency,
            deepSleepMinutes: deepSleepMinutes,
            remSleepMinutes: remSleepMinutes,
            awakenings: awakenings,
            source: source,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime sleepStart,
            required DateTime sleepEnd,
            required int totalSleepMinutes,
            required double sleepEfficiency,
            Value<int?> deepSleepMinutes = const Value.absent(),
            Value<int?> remSleepMinutes = const Value.absent(),
            Value<int?> awakenings = const Value.absent(),
            required String source,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              SleepRecordsCompanion.insert(
            id: id,
            userId: userId,
            sleepStart: sleepStart,
            sleepEnd: sleepEnd,
            totalSleepMinutes: totalSleepMinutes,
            sleepEfficiency: sleepEfficiency,
            deepSleepMinutes: deepSleepMinutes,
            remSleepMinutes: remSleepMinutes,
            awakenings: awakenings,
            source: source,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$SleepRecordsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$SleepRecordsTableReferences._userIdTable(db),
                    referencedColumn:
                        $$SleepRecordsTableReferences._userIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$SleepRecordsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SleepRecordsTable,
    SleepRecord,
    $$SleepRecordsTableFilterComposer,
    $$SleepRecordsTableOrderingComposer,
    $$SleepRecordsTableAnnotationComposer,
    $$SleepRecordsTableCreateCompanionBuilder,
    $$SleepRecordsTableUpdateCompanionBuilder,
    (SleepRecord, $$SleepRecordsTableReferences),
    SleepRecord,
    PrefetchHooks Function({bool userId})>;
typedef $$DailyBiometricsTableTableCreateCompanionBuilder
    = DailyBiometricsTableCompanion Function({
  required String id,
  required String userId,
  required DateTime date,
  Value<double?> hrvAverage,
  Value<int?> restingHeartRate,
  Value<double?> basalTemperatureDeviation,
  Value<int?> totalSteps,
  Value<int?> estimatedNeatKcal,
  Value<int?> subjectiveEnergyScore,
  Value<int?> subjectiveStressScore,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$DailyBiometricsTableTableUpdateCompanionBuilder
    = DailyBiometricsTableCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> date,
  Value<double?> hrvAverage,
  Value<int?> restingHeartRate,
  Value<double?> basalTemperatureDeviation,
  Value<int?> totalSteps,
  Value<int?> estimatedNeatKcal,
  Value<int?> subjectiveEnergyScore,
  Value<int?> subjectiveStressScore,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$DailyBiometricsTableTableReferences extends BaseReferences<
    _$AppDatabase, $DailyBiometricsTableTable, DailyBiometricsTableData> {
  $$DailyBiometricsTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias($_aliasNameGenerator(
          db.dailyBiometricsTable.userId, db.userProfiles.id));

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager($_db, $_db.userProfiles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DailyBiometricsTableTableFilterComposer
    extends Composer<_$AppDatabase, $DailyBiometricsTableTable> {
  $$DailyBiometricsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get hrvAverage => $composableBuilder(
      column: $table.hrvAverage, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get restingHeartRate => $composableBuilder(
      column: $table.restingHeartRate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get basalTemperatureDeviation => $composableBuilder(
      column: $table.basalTemperatureDeviation,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get totalSteps => $composableBuilder(
      column: $table.totalSteps, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get estimatedNeatKcal => $composableBuilder(
      column: $table.estimatedNeatKcal,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get subjectiveEnergyScore => $composableBuilder(
      column: $table.subjectiveEnergyScore,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get subjectiveStressScore => $composableBuilder(
      column: $table.subjectiveStressScore,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableFilterComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DailyBiometricsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DailyBiometricsTableTable> {
  $$DailyBiometricsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get hrvAverage => $composableBuilder(
      column: $table.hrvAverage, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get restingHeartRate => $composableBuilder(
      column: $table.restingHeartRate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get basalTemperatureDeviation => $composableBuilder(
      column: $table.basalTemperatureDeviation,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get totalSteps => $composableBuilder(
      column: $table.totalSteps, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get estimatedNeatKcal => $composableBuilder(
      column: $table.estimatedNeatKcal,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get subjectiveEnergyScore => $composableBuilder(
      column: $table.subjectiveEnergyScore,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get subjectiveStressScore => $composableBuilder(
      column: $table.subjectiveStressScore,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DailyBiometricsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DailyBiometricsTableTable> {
  $$DailyBiometricsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<double> get hrvAverage => $composableBuilder(
      column: $table.hrvAverage, builder: (column) => column);

  GeneratedColumn<int> get restingHeartRate => $composableBuilder(
      column: $table.restingHeartRate, builder: (column) => column);

  GeneratedColumn<double> get basalTemperatureDeviation => $composableBuilder(
      column: $table.basalTemperatureDeviation, builder: (column) => column);

  GeneratedColumn<int> get totalSteps => $composableBuilder(
      column: $table.totalSteps, builder: (column) => column);

  GeneratedColumn<int> get estimatedNeatKcal => $composableBuilder(
      column: $table.estimatedNeatKcal, builder: (column) => column);

  GeneratedColumn<int> get subjectiveEnergyScore => $composableBuilder(
      column: $table.subjectiveEnergyScore, builder: (column) => column);

  GeneratedColumn<int> get subjectiveStressScore => $composableBuilder(
      column: $table.subjectiveStressScore, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DailyBiometricsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DailyBiometricsTableTable,
    DailyBiometricsTableData,
    $$DailyBiometricsTableTableFilterComposer,
    $$DailyBiometricsTableTableOrderingComposer,
    $$DailyBiometricsTableTableAnnotationComposer,
    $$DailyBiometricsTableTableCreateCompanionBuilder,
    $$DailyBiometricsTableTableUpdateCompanionBuilder,
    (DailyBiometricsTableData, $$DailyBiometricsTableTableReferences),
    DailyBiometricsTableData,
    PrefetchHooks Function({bool userId})> {
  $$DailyBiometricsTableTableTableManager(
      _$AppDatabase db, $DailyBiometricsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DailyBiometricsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DailyBiometricsTableTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DailyBiometricsTableTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<double?> hrvAverage = const Value.absent(),
            Value<int?> restingHeartRate = const Value.absent(),
            Value<double?> basalTemperatureDeviation = const Value.absent(),
            Value<int?> totalSteps = const Value.absent(),
            Value<int?> estimatedNeatKcal = const Value.absent(),
            Value<int?> subjectiveEnergyScore = const Value.absent(),
            Value<int?> subjectiveStressScore = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DailyBiometricsTableCompanion(
            id: id,
            userId: userId,
            date: date,
            hrvAverage: hrvAverage,
            restingHeartRate: restingHeartRate,
            basalTemperatureDeviation: basalTemperatureDeviation,
            totalSteps: totalSteps,
            estimatedNeatKcal: estimatedNeatKcal,
            subjectiveEnergyScore: subjectiveEnergyScore,
            subjectiveStressScore: subjectiveStressScore,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime date,
            Value<double?> hrvAverage = const Value.absent(),
            Value<int?> restingHeartRate = const Value.absent(),
            Value<double?> basalTemperatureDeviation = const Value.absent(),
            Value<int?> totalSteps = const Value.absent(),
            Value<int?> estimatedNeatKcal = const Value.absent(),
            Value<int?> subjectiveEnergyScore = const Value.absent(),
            Value<int?> subjectiveStressScore = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              DailyBiometricsTableCompanion.insert(
            id: id,
            userId: userId,
            date: date,
            hrvAverage: hrvAverage,
            restingHeartRate: restingHeartRate,
            basalTemperatureDeviation: basalTemperatureDeviation,
            totalSteps: totalSteps,
            estimatedNeatKcal: estimatedNeatKcal,
            subjectiveEnergyScore: subjectiveEnergyScore,
            subjectiveStressScore: subjectiveStressScore,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DailyBiometricsTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$DailyBiometricsTableTableReferences._userIdTable(db),
                    referencedColumn: $$DailyBiometricsTableTableReferences
                        ._userIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DailyBiometricsTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDatabase,
        $DailyBiometricsTableTable,
        DailyBiometricsTableData,
        $$DailyBiometricsTableTableFilterComposer,
        $$DailyBiometricsTableTableOrderingComposer,
        $$DailyBiometricsTableTableAnnotationComposer,
        $$DailyBiometricsTableTableCreateCompanionBuilder,
        $$DailyBiometricsTableTableUpdateCompanionBuilder,
        (DailyBiometricsTableData, $$DailyBiometricsTableTableReferences),
        DailyBiometricsTableData,
        PrefetchHooks Function({bool userId})>;
typedef $$TrainingSessionsTableCreateCompanionBuilder
    = TrainingSessionsCompanion Function({
  required String id,
  required String userId,
  required DateTime startAt,
  required DateTime endAt,
  required String intensity,
  required String trainingType,
  required int caloriesBurned,
  required bool isNightTraining,
  Value<int?> perceivedExertion,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$TrainingSessionsTableUpdateCompanionBuilder
    = TrainingSessionsCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> startAt,
  Value<DateTime> endAt,
  Value<String> intensity,
  Value<String> trainingType,
  Value<int> caloriesBurned,
  Value<bool> isNightTraining,
  Value<int?> perceivedExertion,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$TrainingSessionsTableReferences extends BaseReferences<
    _$AppDatabase, $TrainingSessionsTable, TrainingSession> {
  $$TrainingSessionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias(
          $_aliasNameGenerator(db.trainingSessions.userId, db.userProfiles.id));

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager($_db, $_db.userProfiles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TrainingSessionsTableFilterComposer
    extends Composer<_$AppDatabase, $TrainingSessionsTable> {
  $$TrainingSessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startAt => $composableBuilder(
      column: $table.startAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endAt => $composableBuilder(
      column: $table.endAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get intensity => $composableBuilder(
      column: $table.intensity, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get trainingType => $composableBuilder(
      column: $table.trainingType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get caloriesBurned => $composableBuilder(
      column: $table.caloriesBurned,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isNightTraining => $composableBuilder(
      column: $table.isNightTraining,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get perceivedExertion => $composableBuilder(
      column: $table.perceivedExertion,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableFilterComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TrainingSessionsTableOrderingComposer
    extends Composer<_$AppDatabase, $TrainingSessionsTable> {
  $$TrainingSessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startAt => $composableBuilder(
      column: $table.startAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endAt => $composableBuilder(
      column: $table.endAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get intensity => $composableBuilder(
      column: $table.intensity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get trainingType => $composableBuilder(
      column: $table.trainingType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get caloriesBurned => $composableBuilder(
      column: $table.caloriesBurned,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isNightTraining => $composableBuilder(
      column: $table.isNightTraining,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get perceivedExertion => $composableBuilder(
      column: $table.perceivedExertion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TrainingSessionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TrainingSessionsTable> {
  $$TrainingSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startAt =>
      $composableBuilder(column: $table.startAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endAt =>
      $composableBuilder(column: $table.endAt, builder: (column) => column);

  GeneratedColumn<String> get intensity =>
      $composableBuilder(column: $table.intensity, builder: (column) => column);

  GeneratedColumn<String> get trainingType => $composableBuilder(
      column: $table.trainingType, builder: (column) => column);

  GeneratedColumn<int> get caloriesBurned => $composableBuilder(
      column: $table.caloriesBurned, builder: (column) => column);

  GeneratedColumn<bool> get isNightTraining => $composableBuilder(
      column: $table.isNightTraining, builder: (column) => column);

  GeneratedColumn<int> get perceivedExertion => $composableBuilder(
      column: $table.perceivedExertion, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TrainingSessionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TrainingSessionsTable,
    TrainingSession,
    $$TrainingSessionsTableFilterComposer,
    $$TrainingSessionsTableOrderingComposer,
    $$TrainingSessionsTableAnnotationComposer,
    $$TrainingSessionsTableCreateCompanionBuilder,
    $$TrainingSessionsTableUpdateCompanionBuilder,
    (TrainingSession, $$TrainingSessionsTableReferences),
    TrainingSession,
    PrefetchHooks Function({bool userId})> {
  $$TrainingSessionsTableTableManager(
      _$AppDatabase db, $TrainingSessionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TrainingSessionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TrainingSessionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TrainingSessionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> startAt = const Value.absent(),
            Value<DateTime> endAt = const Value.absent(),
            Value<String> intensity = const Value.absent(),
            Value<String> trainingType = const Value.absent(),
            Value<int> caloriesBurned = const Value.absent(),
            Value<bool> isNightTraining = const Value.absent(),
            Value<int?> perceivedExertion = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TrainingSessionsCompanion(
            id: id,
            userId: userId,
            startAt: startAt,
            endAt: endAt,
            intensity: intensity,
            trainingType: trainingType,
            caloriesBurned: caloriesBurned,
            isNightTraining: isNightTraining,
            perceivedExertion: perceivedExertion,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime startAt,
            required DateTime endAt,
            required String intensity,
            required String trainingType,
            required int caloriesBurned,
            required bool isNightTraining,
            Value<int?> perceivedExertion = const Value.absent(),
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              TrainingSessionsCompanion.insert(
            id: id,
            userId: userId,
            startAt: startAt,
            endAt: endAt,
            intensity: intensity,
            trainingType: trainingType,
            caloriesBurned: caloriesBurned,
            isNightTraining: isNightTraining,
            perceivedExertion: perceivedExertion,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TrainingSessionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$TrainingSessionsTableReferences._userIdTable(db),
                    referencedColumn:
                        $$TrainingSessionsTableReferences._userIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TrainingSessionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TrainingSessionsTable,
    TrainingSession,
    $$TrainingSessionsTableFilterComposer,
    $$TrainingSessionsTableOrderingComposer,
    $$TrainingSessionsTableAnnotationComposer,
    $$TrainingSessionsTableCreateCompanionBuilder,
    $$TrainingSessionsTableUpdateCompanionBuilder,
    (TrainingSession, $$TrainingSessionsTableReferences),
    TrainingSession,
    PrefetchHooks Function({bool userId})>;
typedef $$CaffeineEventsTableCreateCompanionBuilder = CaffeineEventsCompanion
    Function({
  required String id,
  required String userId,
  required DateTime consumedAt,
  required int caffeineMg,
  required String sourceType,
  required bool isLateCaffeine,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$CaffeineEventsTableUpdateCompanionBuilder = CaffeineEventsCompanion
    Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> consumedAt,
  Value<int> caffeineMg,
  Value<String> sourceType,
  Value<bool> isLateCaffeine,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$CaffeineEventsTableReferences
    extends BaseReferences<_$AppDatabase, $CaffeineEventsTable, CaffeineEvent> {
  $$CaffeineEventsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias(
          $_aliasNameGenerator(db.caffeineEvents.userId, db.userProfiles.id));

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager($_db, $_db.userProfiles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CaffeineEventsTableFilterComposer
    extends Composer<_$AppDatabase, $CaffeineEventsTable> {
  $$CaffeineEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get consumedAt => $composableBuilder(
      column: $table.consumedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get caffeineMg => $composableBuilder(
      column: $table.caffeineMg, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sourceType => $composableBuilder(
      column: $table.sourceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isLateCaffeine => $composableBuilder(
      column: $table.isLateCaffeine,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableFilterComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CaffeineEventsTableOrderingComposer
    extends Composer<_$AppDatabase, $CaffeineEventsTable> {
  $$CaffeineEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get consumedAt => $composableBuilder(
      column: $table.consumedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get caffeineMg => $composableBuilder(
      column: $table.caffeineMg, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sourceType => $composableBuilder(
      column: $table.sourceType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isLateCaffeine => $composableBuilder(
      column: $table.isLateCaffeine,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CaffeineEventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CaffeineEventsTable> {
  $$CaffeineEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get consumedAt => $composableBuilder(
      column: $table.consumedAt, builder: (column) => column);

  GeneratedColumn<int> get caffeineMg => $composableBuilder(
      column: $table.caffeineMg, builder: (column) => column);

  GeneratedColumn<String> get sourceType => $composableBuilder(
      column: $table.sourceType, builder: (column) => column);

  GeneratedColumn<bool> get isLateCaffeine => $composableBuilder(
      column: $table.isLateCaffeine, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CaffeineEventsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CaffeineEventsTable,
    CaffeineEvent,
    $$CaffeineEventsTableFilterComposer,
    $$CaffeineEventsTableOrderingComposer,
    $$CaffeineEventsTableAnnotationComposer,
    $$CaffeineEventsTableCreateCompanionBuilder,
    $$CaffeineEventsTableUpdateCompanionBuilder,
    (CaffeineEvent, $$CaffeineEventsTableReferences),
    CaffeineEvent,
    PrefetchHooks Function({bool userId})> {
  $$CaffeineEventsTableTableManager(
      _$AppDatabase db, $CaffeineEventsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CaffeineEventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CaffeineEventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CaffeineEventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> consumedAt = const Value.absent(),
            Value<int> caffeineMg = const Value.absent(),
            Value<String> sourceType = const Value.absent(),
            Value<bool> isLateCaffeine = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CaffeineEventsCompanion(
            id: id,
            userId: userId,
            consumedAt: consumedAt,
            caffeineMg: caffeineMg,
            sourceType: sourceType,
            isLateCaffeine: isLateCaffeine,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime consumedAt,
            required int caffeineMg,
            required String sourceType,
            required bool isLateCaffeine,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              CaffeineEventsCompanion.insert(
            id: id,
            userId: userId,
            consumedAt: consumedAt,
            caffeineMg: caffeineMg,
            sourceType: sourceType,
            isLateCaffeine: isLateCaffeine,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CaffeineEventsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$CaffeineEventsTableReferences._userIdTable(db),
                    referencedColumn:
                        $$CaffeineEventsTableReferences._userIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CaffeineEventsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CaffeineEventsTable,
    CaffeineEvent,
    $$CaffeineEventsTableFilterComposer,
    $$CaffeineEventsTableOrderingComposer,
    $$CaffeineEventsTableAnnotationComposer,
    $$CaffeineEventsTableCreateCompanionBuilder,
    $$CaffeineEventsTableUpdateCompanionBuilder,
    (CaffeineEvent, $$CaffeineEventsTableReferences),
    CaffeineEvent,
    PrefetchHooks Function({bool userId})>;
typedef $$ScreenUsageEventsTableCreateCompanionBuilder
    = ScreenUsageEventsCompanion Function({
  required String id,
  required String userId,
  required DateTime startAt,
  required DateTime endAt,
  required int estimatedMinutes,
  required String usageType,
  required bool isNightUsage,
  required String source,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$ScreenUsageEventsTableUpdateCompanionBuilder
    = ScreenUsageEventsCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> startAt,
  Value<DateTime> endAt,
  Value<int> estimatedMinutes,
  Value<String> usageType,
  Value<bool> isNightUsage,
  Value<String> source,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$ScreenUsageEventsTableReferences extends BaseReferences<
    _$AppDatabase, $ScreenUsageEventsTable, ScreenUsageEvent> {
  $$ScreenUsageEventsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias($_aliasNameGenerator(
          db.screenUsageEvents.userId, db.userProfiles.id));

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager($_db, $_db.userProfiles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ScreenUsageEventsTableFilterComposer
    extends Composer<_$AppDatabase, $ScreenUsageEventsTable> {
  $$ScreenUsageEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get startAt => $composableBuilder(
      column: $table.startAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get endAt => $composableBuilder(
      column: $table.endAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get estimatedMinutes => $composableBuilder(
      column: $table.estimatedMinutes,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get usageType => $composableBuilder(
      column: $table.usageType, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isNightUsage => $composableBuilder(
      column: $table.isNightUsage, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableFilterComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ScreenUsageEventsTableOrderingComposer
    extends Composer<_$AppDatabase, $ScreenUsageEventsTable> {
  $$ScreenUsageEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get startAt => $composableBuilder(
      column: $table.startAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get endAt => $composableBuilder(
      column: $table.endAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get estimatedMinutes => $composableBuilder(
      column: $table.estimatedMinutes,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get usageType => $composableBuilder(
      column: $table.usageType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isNightUsage => $composableBuilder(
      column: $table.isNightUsage,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get source => $composableBuilder(
      column: $table.source, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ScreenUsageEventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ScreenUsageEventsTable> {
  $$ScreenUsageEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get startAt =>
      $composableBuilder(column: $table.startAt, builder: (column) => column);

  GeneratedColumn<DateTime> get endAt =>
      $composableBuilder(column: $table.endAt, builder: (column) => column);

  GeneratedColumn<int> get estimatedMinutes => $composableBuilder(
      column: $table.estimatedMinutes, builder: (column) => column);

  GeneratedColumn<String> get usageType =>
      $composableBuilder(column: $table.usageType, builder: (column) => column);

  GeneratedColumn<bool> get isNightUsage => $composableBuilder(
      column: $table.isNightUsage, builder: (column) => column);

  GeneratedColumn<String> get source =>
      $composableBuilder(column: $table.source, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ScreenUsageEventsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ScreenUsageEventsTable,
    ScreenUsageEvent,
    $$ScreenUsageEventsTableFilterComposer,
    $$ScreenUsageEventsTableOrderingComposer,
    $$ScreenUsageEventsTableAnnotationComposer,
    $$ScreenUsageEventsTableCreateCompanionBuilder,
    $$ScreenUsageEventsTableUpdateCompanionBuilder,
    (ScreenUsageEvent, $$ScreenUsageEventsTableReferences),
    ScreenUsageEvent,
    PrefetchHooks Function({bool userId})> {
  $$ScreenUsageEventsTableTableManager(
      _$AppDatabase db, $ScreenUsageEventsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ScreenUsageEventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ScreenUsageEventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ScreenUsageEventsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> startAt = const Value.absent(),
            Value<DateTime> endAt = const Value.absent(),
            Value<int> estimatedMinutes = const Value.absent(),
            Value<String> usageType = const Value.absent(),
            Value<bool> isNightUsage = const Value.absent(),
            Value<String> source = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ScreenUsageEventsCompanion(
            id: id,
            userId: userId,
            startAt: startAt,
            endAt: endAt,
            estimatedMinutes: estimatedMinutes,
            usageType: usageType,
            isNightUsage: isNightUsage,
            source: source,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime startAt,
            required DateTime endAt,
            required int estimatedMinutes,
            required String usageType,
            required bool isNightUsage,
            required String source,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              ScreenUsageEventsCompanion.insert(
            id: id,
            userId: userId,
            startAt: startAt,
            endAt: endAt,
            estimatedMinutes: estimatedMinutes,
            usageType: usageType,
            isNightUsage: isNightUsage,
            source: source,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ScreenUsageEventsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$ScreenUsageEventsTableReferences._userIdTable(db),
                    referencedColumn:
                        $$ScreenUsageEventsTableReferences._userIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ScreenUsageEventsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ScreenUsageEventsTable,
    ScreenUsageEvent,
    $$ScreenUsageEventsTableFilterComposer,
    $$ScreenUsageEventsTableOrderingComposer,
    $$ScreenUsageEventsTableAnnotationComposer,
    $$ScreenUsageEventsTableCreateCompanionBuilder,
    $$ScreenUsageEventsTableUpdateCompanionBuilder,
    (ScreenUsageEvent, $$ScreenUsageEventsTableReferences),
    ScreenUsageEvent,
    PrefetchHooks Function({bool userId})>;
typedef $$CircadianScoresTableCreateCompanionBuilder = CircadianScoresCompanion
    Function({
  required String id,
  required String userId,
  required DateTime date,
  required double totalScore,
  required double lightScore,
  required double nutritionScore,
  required double sleepScore,
  required double screenPenalty,
  required double nightEatingPenalty,
  required double lateCaffeinePenalty,
  required String explanation,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$CircadianScoresTableUpdateCompanionBuilder = CircadianScoresCompanion
    Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> date,
  Value<double> totalScore,
  Value<double> lightScore,
  Value<double> nutritionScore,
  Value<double> sleepScore,
  Value<double> screenPenalty,
  Value<double> nightEatingPenalty,
  Value<double> lateCaffeinePenalty,
  Value<String> explanation,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$CircadianScoresTableReferences extends BaseReferences<
    _$AppDatabase, $CircadianScoresTable, CircadianScore> {
  $$CircadianScoresTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias(
          $_aliasNameGenerator(db.circadianScores.userId, db.userProfiles.id));

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager($_db, $_db.userProfiles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CircadianScoresTableFilterComposer
    extends Composer<_$AppDatabase, $CircadianScoresTable> {
  $$CircadianScoresTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalScore => $composableBuilder(
      column: $table.totalScore, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get lightScore => $composableBuilder(
      column: $table.lightScore, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get nutritionScore => $composableBuilder(
      column: $table.nutritionScore,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get sleepScore => $composableBuilder(
      column: $table.sleepScore, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get screenPenalty => $composableBuilder(
      column: $table.screenPenalty, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get nightEatingPenalty => $composableBuilder(
      column: $table.nightEatingPenalty,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get lateCaffeinePenalty => $composableBuilder(
      column: $table.lateCaffeinePenalty,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get explanation => $composableBuilder(
      column: $table.explanation, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableFilterComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CircadianScoresTableOrderingComposer
    extends Composer<_$AppDatabase, $CircadianScoresTable> {
  $$CircadianScoresTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalScore => $composableBuilder(
      column: $table.totalScore, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get lightScore => $composableBuilder(
      column: $table.lightScore, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get nutritionScore => $composableBuilder(
      column: $table.nutritionScore,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get sleepScore => $composableBuilder(
      column: $table.sleepScore, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get screenPenalty => $composableBuilder(
      column: $table.screenPenalty,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get nightEatingPenalty => $composableBuilder(
      column: $table.nightEatingPenalty,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get lateCaffeinePenalty => $composableBuilder(
      column: $table.lateCaffeinePenalty,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get explanation => $composableBuilder(
      column: $table.explanation, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CircadianScoresTableAnnotationComposer
    extends Composer<_$AppDatabase, $CircadianScoresTable> {
  $$CircadianScoresTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<double> get totalScore => $composableBuilder(
      column: $table.totalScore, builder: (column) => column);

  GeneratedColumn<double> get lightScore => $composableBuilder(
      column: $table.lightScore, builder: (column) => column);

  GeneratedColumn<double> get nutritionScore => $composableBuilder(
      column: $table.nutritionScore, builder: (column) => column);

  GeneratedColumn<double> get sleepScore => $composableBuilder(
      column: $table.sleepScore, builder: (column) => column);

  GeneratedColumn<double> get screenPenalty => $composableBuilder(
      column: $table.screenPenalty, builder: (column) => column);

  GeneratedColumn<double> get nightEatingPenalty => $composableBuilder(
      column: $table.nightEatingPenalty, builder: (column) => column);

  GeneratedColumn<double> get lateCaffeinePenalty => $composableBuilder(
      column: $table.lateCaffeinePenalty, builder: (column) => column);

  GeneratedColumn<String> get explanation => $composableBuilder(
      column: $table.explanation, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$CircadianScoresTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CircadianScoresTable,
    CircadianScore,
    $$CircadianScoresTableFilterComposer,
    $$CircadianScoresTableOrderingComposer,
    $$CircadianScoresTableAnnotationComposer,
    $$CircadianScoresTableCreateCompanionBuilder,
    $$CircadianScoresTableUpdateCompanionBuilder,
    (CircadianScore, $$CircadianScoresTableReferences),
    CircadianScore,
    PrefetchHooks Function({bool userId})> {
  $$CircadianScoresTableTableManager(
      _$AppDatabase db, $CircadianScoresTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CircadianScoresTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CircadianScoresTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CircadianScoresTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<double> totalScore = const Value.absent(),
            Value<double> lightScore = const Value.absent(),
            Value<double> nutritionScore = const Value.absent(),
            Value<double> sleepScore = const Value.absent(),
            Value<double> screenPenalty = const Value.absent(),
            Value<double> nightEatingPenalty = const Value.absent(),
            Value<double> lateCaffeinePenalty = const Value.absent(),
            Value<String> explanation = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CircadianScoresCompanion(
            id: id,
            userId: userId,
            date: date,
            totalScore: totalScore,
            lightScore: lightScore,
            nutritionScore: nutritionScore,
            sleepScore: sleepScore,
            screenPenalty: screenPenalty,
            nightEatingPenalty: nightEatingPenalty,
            lateCaffeinePenalty: lateCaffeinePenalty,
            explanation: explanation,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime date,
            required double totalScore,
            required double lightScore,
            required double nutritionScore,
            required double sleepScore,
            required double screenPenalty,
            required double nightEatingPenalty,
            required double lateCaffeinePenalty,
            required String explanation,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              CircadianScoresCompanion.insert(
            id: id,
            userId: userId,
            date: date,
            totalScore: totalScore,
            lightScore: lightScore,
            nutritionScore: nutritionScore,
            sleepScore: sleepScore,
            screenPenalty: screenPenalty,
            nightEatingPenalty: nightEatingPenalty,
            lateCaffeinePenalty: lateCaffeinePenalty,
            explanation: explanation,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CircadianScoresTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$CircadianScoresTableReferences._userIdTable(db),
                    referencedColumn:
                        $$CircadianScoresTableReferences._userIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CircadianScoresTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CircadianScoresTable,
    CircadianScore,
    $$CircadianScoresTableFilterComposer,
    $$CircadianScoresTableOrderingComposer,
    $$CircadianScoresTableAnnotationComposer,
    $$CircadianScoresTableCreateCompanionBuilder,
    $$CircadianScoresTableUpdateCompanionBuilder,
    (CircadianScore, $$CircadianScoresTableReferences),
    CircadianScore,
    PrefetchHooks Function({bool userId})>;
typedef $$DailyPlansTableCreateCompanionBuilder = DailyPlansCompanion Function({
  required String id,
  required String userId,
  required DateTime date,
  required String priorityActionsJson,
  required String morningLightTarget,
  required String nutritionWindowStart,
  required String nutritionWindowEnd,
  required String caffeineCutoffTime,
  required String trainingRecommendation,
  required String eveningLightRecommendation,
  required String sleepPreparationRecommendation,
  required DateTime createdAt,
  Value<int> rowid,
});
typedef $$DailyPlansTableUpdateCompanionBuilder = DailyPlansCompanion Function({
  Value<String> id,
  Value<String> userId,
  Value<DateTime> date,
  Value<String> priorityActionsJson,
  Value<String> morningLightTarget,
  Value<String> nutritionWindowStart,
  Value<String> nutritionWindowEnd,
  Value<String> caffeineCutoffTime,
  Value<String> trainingRecommendation,
  Value<String> eveningLightRecommendation,
  Value<String> sleepPreparationRecommendation,
  Value<DateTime> createdAt,
  Value<int> rowid,
});

final class $$DailyPlansTableReferences
    extends BaseReferences<_$AppDatabase, $DailyPlansTable, DailyPlan> {
  $$DailyPlansTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UserProfilesTable _userIdTable(_$AppDatabase db) =>
      db.userProfiles.createAlias(
          $_aliasNameGenerator(db.dailyPlans.userId, db.userProfiles.id));

  $$UserProfilesTableProcessedTableManager get userId {
    final $_column = $_itemColumn<String>('user_id')!;

    final manager = $$UserProfilesTableTableManager($_db, $_db.userProfiles)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DailyPlansTableFilterComposer
    extends Composer<_$AppDatabase, $DailyPlansTable> {
  $$DailyPlansTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priorityActionsJson => $composableBuilder(
      column: $table.priorityActionsJson,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get morningLightTarget => $composableBuilder(
      column: $table.morningLightTarget,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nutritionWindowStart => $composableBuilder(
      column: $table.nutritionWindowStart,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nutritionWindowEnd => $composableBuilder(
      column: $table.nutritionWindowEnd,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get caffeineCutoffTime => $composableBuilder(
      column: $table.caffeineCutoffTime,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get trainingRecommendation => $composableBuilder(
      column: $table.trainingRecommendation,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get eveningLightRecommendation => $composableBuilder(
      column: $table.eveningLightRecommendation,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get sleepPreparationRecommendation =>
      $composableBuilder(
          column: $table.sleepPreparationRecommendation,
          builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  $$UserProfilesTableFilterComposer get userId {
    final $$UserProfilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableFilterComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DailyPlansTableOrderingComposer
    extends Composer<_$AppDatabase, $DailyPlansTable> {
  $$DailyPlansTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priorityActionsJson => $composableBuilder(
      column: $table.priorityActionsJson,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get morningLightTarget => $composableBuilder(
      column: $table.morningLightTarget,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nutritionWindowStart => $composableBuilder(
      column: $table.nutritionWindowStart,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nutritionWindowEnd => $composableBuilder(
      column: $table.nutritionWindowEnd,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get caffeineCutoffTime => $composableBuilder(
      column: $table.caffeineCutoffTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get trainingRecommendation => $composableBuilder(
      column: $table.trainingRecommendation,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get eveningLightRecommendation => $composableBuilder(
      column: $table.eveningLightRecommendation,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get sleepPreparationRecommendation =>
      $composableBuilder(
          column: $table.sleepPreparationRecommendation,
          builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  $$UserProfilesTableOrderingComposer get userId {
    final $$UserProfilesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableOrderingComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DailyPlansTableAnnotationComposer
    extends Composer<_$AppDatabase, $DailyPlansTable> {
  $$DailyPlansTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get priorityActionsJson => $composableBuilder(
      column: $table.priorityActionsJson, builder: (column) => column);

  GeneratedColumn<String> get morningLightTarget => $composableBuilder(
      column: $table.morningLightTarget, builder: (column) => column);

  GeneratedColumn<String> get nutritionWindowStart => $composableBuilder(
      column: $table.nutritionWindowStart, builder: (column) => column);

  GeneratedColumn<String> get nutritionWindowEnd => $composableBuilder(
      column: $table.nutritionWindowEnd, builder: (column) => column);

  GeneratedColumn<String> get caffeineCutoffTime => $composableBuilder(
      column: $table.caffeineCutoffTime, builder: (column) => column);

  GeneratedColumn<String> get trainingRecommendation => $composableBuilder(
      column: $table.trainingRecommendation, builder: (column) => column);

  GeneratedColumn<String> get eveningLightRecommendation => $composableBuilder(
      column: $table.eveningLightRecommendation, builder: (column) => column);

  GeneratedColumn<String> get sleepPreparationRecommendation =>
      $composableBuilder(
          column: $table.sleepPreparationRecommendation,
          builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$UserProfilesTableAnnotationComposer get userId {
    final $$UserProfilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userProfiles,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserProfilesTableAnnotationComposer(
              $db: $db,
              $table: $db.userProfiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DailyPlansTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DailyPlansTable,
    DailyPlan,
    $$DailyPlansTableFilterComposer,
    $$DailyPlansTableOrderingComposer,
    $$DailyPlansTableAnnotationComposer,
    $$DailyPlansTableCreateCompanionBuilder,
    $$DailyPlansTableUpdateCompanionBuilder,
    (DailyPlan, $$DailyPlansTableReferences),
    DailyPlan,
    PrefetchHooks Function({bool userId})> {
  $$DailyPlansTableTableManager(_$AppDatabase db, $DailyPlansTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DailyPlansTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DailyPlansTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DailyPlansTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<String> priorityActionsJson = const Value.absent(),
            Value<String> morningLightTarget = const Value.absent(),
            Value<String> nutritionWindowStart = const Value.absent(),
            Value<String> nutritionWindowEnd = const Value.absent(),
            Value<String> caffeineCutoffTime = const Value.absent(),
            Value<String> trainingRecommendation = const Value.absent(),
            Value<String> eveningLightRecommendation = const Value.absent(),
            Value<String> sleepPreparationRecommendation = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DailyPlansCompanion(
            id: id,
            userId: userId,
            date: date,
            priorityActionsJson: priorityActionsJson,
            morningLightTarget: morningLightTarget,
            nutritionWindowStart: nutritionWindowStart,
            nutritionWindowEnd: nutritionWindowEnd,
            caffeineCutoffTime: caffeineCutoffTime,
            trainingRecommendation: trainingRecommendation,
            eveningLightRecommendation: eveningLightRecommendation,
            sleepPreparationRecommendation: sleepPreparationRecommendation,
            createdAt: createdAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String userId,
            required DateTime date,
            required String priorityActionsJson,
            required String morningLightTarget,
            required String nutritionWindowStart,
            required String nutritionWindowEnd,
            required String caffeineCutoffTime,
            required String trainingRecommendation,
            required String eveningLightRecommendation,
            required String sleepPreparationRecommendation,
            required DateTime createdAt,
            Value<int> rowid = const Value.absent(),
          }) =>
              DailyPlansCompanion.insert(
            id: id,
            userId: userId,
            date: date,
            priorityActionsJson: priorityActionsJson,
            morningLightTarget: morningLightTarget,
            nutritionWindowStart: nutritionWindowStart,
            nutritionWindowEnd: nutritionWindowEnd,
            caffeineCutoffTime: caffeineCutoffTime,
            trainingRecommendation: trainingRecommendation,
            eveningLightRecommendation: eveningLightRecommendation,
            sleepPreparationRecommendation: sleepPreparationRecommendation,
            createdAt: createdAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DailyPlansTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$DailyPlansTableReferences._userIdTable(db),
                    referencedColumn:
                        $$DailyPlansTableReferences._userIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DailyPlansTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DailyPlansTable,
    DailyPlan,
    $$DailyPlansTableFilterComposer,
    $$DailyPlansTableOrderingComposer,
    $$DailyPlansTableAnnotationComposer,
    $$DailyPlansTableCreateCompanionBuilder,
    $$DailyPlansTableUpdateCompanionBuilder,
    (DailyPlan, $$DailyPlansTableReferences),
    DailyPlan,
    PrefetchHooks Function({bool userId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserProfilesTableTableManager get userProfiles =>
      $$UserProfilesTableTableManager(_db, _db.userProfiles);
  $$LightExposureEventsTableTableManager get lightExposureEvents =>
      $$LightExposureEventsTableTableManager(_db, _db.lightExposureEvents);
  $$NutritionEventsTableTableManager get nutritionEvents =>
      $$NutritionEventsTableTableManager(_db, _db.nutritionEvents);
  $$SleepRecordsTableTableManager get sleepRecords =>
      $$SleepRecordsTableTableManager(_db, _db.sleepRecords);
  $$DailyBiometricsTableTableTableManager get dailyBiometricsTable =>
      $$DailyBiometricsTableTableTableManager(_db, _db.dailyBiometricsTable);
  $$TrainingSessionsTableTableManager get trainingSessions =>
      $$TrainingSessionsTableTableManager(_db, _db.trainingSessions);
  $$CaffeineEventsTableTableManager get caffeineEvents =>
      $$CaffeineEventsTableTableManager(_db, _db.caffeineEvents);
  $$ScreenUsageEventsTableTableManager get screenUsageEvents =>
      $$ScreenUsageEventsTableTableManager(_db, _db.screenUsageEvents);
  $$CircadianScoresTableTableManager get circadianScores =>
      $$CircadianScoresTableTableManager(_db, _db.circadianScores);
  $$DailyPlansTableTableManager get dailyPlans =>
      $$DailyPlansTableTableManager(_db, _db.dailyPlans);
}
