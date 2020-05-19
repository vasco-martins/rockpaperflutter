import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Player {
  String uid;
  String name;

  Player({
    this.uid,
    this.name,
  });

  Player.fromFirebase(DocumentSnapshot snapshot) {
    this.uid = snapshot.documentID;
    this.name = snapshot.data["name"];
  }
}
