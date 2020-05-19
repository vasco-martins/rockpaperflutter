// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_mob.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserMob on _UserMobBase, Store {
  final _$playerAtom = Atom(name: '_UserMobBase.player');

  @override
  Player get player {
    _$playerAtom.context.enforceReadPolicy(_$playerAtom);
    _$playerAtom.reportObserved();
    return super.player;
  }

  @override
  set player(Player value) {
    _$playerAtom.context.conditionallyRunInAction(() {
      super.player = value;
      _$playerAtom.reportChanged();
    }, _$playerAtom, name: '${_$playerAtom.name}_set');
  }
}
