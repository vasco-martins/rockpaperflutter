import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rockpaper/mobs/user_mob.dart';
import 'package:rockpaper/routes.dart';

void main() {
  FluroRouter.setupRouter();
  runApp(CoreScreen());
}

// Instanciates user mob
final UserMob userMob = UserMob();

class CoreScreen extends StatefulWidget {
  CoreScreen({Key key}) : super(key: key);

  @override
  _CoreScreenState createState() => _CoreScreenState();
}

class _CoreScreenState extends State<CoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Provider<UserMob>(
      create: (_) => userMob,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'middlewares/auth',
        onGenerateRoute: FluroRouter.router.generator,
      ),
    );
  }
}
