import 'package:flutter/material.dart';

class ActionHome {
  late IconData icon;
  late String name;

  ActionHome({required this.icon, required this.name});

  ActionHome.fromMap(Map<String, dynamic> map) {
    icon = map["icon"];
    name = map["name"];
  }
}
