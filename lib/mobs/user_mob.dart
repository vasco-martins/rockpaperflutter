import 'package:mobx/mobx.dart';
import 'package:rockpaper/models/player.dart';
part 'user_mob.g.dart';

class UserMob = _UserMobBase with _$UserMob;

abstract class _UserMobBase with Store {
  @observable
  Player player;

  @action
  setPlayer(Player player) {
    this.player = player;
  }

}
