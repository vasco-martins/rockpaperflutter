import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:rockpaper/screens/middlewares/auth_middleware_screen.dart';

class FluroRouter {
  static Router router = Router();

  static Handler _authMiddlewareHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          AuthMiddlewareScreen());

  static void setupRouter() {
    router.define(
      'middlewares/auth',
      handler: _authMiddlewareHandler,
    );

    
  }
}
