import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rockpaper/models/player.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Firestore _firestore = Firestore.instance;

  // ? This is the anonymous sign in
  Future<Player> signUp(String name) async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;

      //TODO: CREATE USER IN CLOUD FIRESTORE (uid + name)
      Firestore.instance.collection('users').document(user.uid).s;

     // return user;
    } catch (e) {
      print(e.toString());
      return null;a
    }
  }

  Future<Player> signIn(FirebaseUser user) async {
    DocumentSnapshot snapshot =
        await _firestore.collection('users').document(user.uid).get();

    return Player.fromFirebase(snapshot);
  }
}
