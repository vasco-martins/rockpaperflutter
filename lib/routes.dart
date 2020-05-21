import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:rockpaper/screens/middlewares/auth_middleware_screen.dart';

import 'screens/create_room_screen.dart';

class FluroRouter {
  static Router router = Router();

  static Handler _authMiddlewareHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          AuthMiddlewareScreen());

  static Handler _createroomHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CreateRoomScreen());

  static void setupRouter() {
    router.define(
      'middlewares/auth',
      handler: _authMiddlewareHandler,
    );
    router.define(
      'createroom', 
      handler: _createroomHandler,
    );
  }
}
