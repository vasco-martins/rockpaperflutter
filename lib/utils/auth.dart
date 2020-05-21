import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rockpaper/models/player.dart';

import '../mobs/user_mob.dart';
import '../mobs/user_mob.dart';
import '../mobs/user_mob.dart';
import '../models/player.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Firestore _firestore = Firestore.instance;
  
  DocumentSnapshot snapshot;

  UserMob userMob = new UserMob();

  // ! THIS VARIABLE IS JUST FOR TEST
  String name = "Teste";

  // ? This is the anonymous sign in
  Future<Player> signUp(String name) async {
    try {

      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;

      //TODO: CREATE USER IN CLOUD FIRESTORE (uid + name)
      await Firestore.instance.collection('users').document(user.uid).setData({
        "id": user.uid,
        "name": name,
      });


      Player player = new Player(uid: user.uid, name: name);

      userMob.setPlayer(player);

      return Player.fromFirebase(snapshot);

    } catch (e) {

      print(e.toString());
      return null;
      
    }
  }

  Future<Player> signIn(FirebaseUser user) async {
    DocumentSnapshot snapshot =
        await _firestore.collection('users').document(user.uid).get();

    return Player.fromFirebase(snapshot);
  }
}
