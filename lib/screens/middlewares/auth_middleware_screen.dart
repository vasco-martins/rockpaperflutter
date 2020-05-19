import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rockpaper/mobs/user_mob.dart';
import 'package:rockpaper/models/player.dart';
import 'package:rockpaper/screens/auth_screen.dart';
import 'package:rockpaper/screens/create_room_screen.dart';
import 'package:rockpaper/utils/auth.dart';

class AuthMiddlewareScreen extends StatefulWidget {
  AuthMiddlewareScreen({Key key}) : super(key: key);

  @override
  _AuthMiddlewareScreenState createState() => _AuthMiddlewareScreenState();
}

class _AuthMiddlewareScreenState extends State<AuthMiddlewareScreen> {
  @override
  Widget build(BuildContext context) {
    final UserMob userMob = Provider.of<UserMob>(context);

    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          FirebaseUser user = snapshot.data;

          if (user == null) {
            return CreateRoomScreen();
          }

          AuthService().signIn(user);

          return CreateRoomScreen();
        }
      },
    );
  }
}
