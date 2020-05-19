import 'package:rockpaper/models/player.dart';

class Room {
  String uid;
  String name;
  Player owner;

  List<Player> participants;

  Room({this.uid, this.name, this.owner});
}
