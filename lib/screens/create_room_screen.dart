import 'package:flutter/material.dart';

class CreateRoomScreen extends StatefulWidget {
  CreateRoomScreen({Key key}) : super(key: key);

  @override
  _CreateRoomScreenState createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade800,
      appBar: AppBar(
        title: Text("CRIAR SALA"),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.orange.shade800,
      ),
      body: Column(),
    );
  }
}
