import 'package:flutter/material.dart';
import 'package:wordfind_app/welcome_dart.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Ribeye'),
    title:  'Word Find Game',
    home: Scaffold(
      body: Center(
        child: WelcomePage(),
      ),
    ),

  ));
}

