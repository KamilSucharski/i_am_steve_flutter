import 'package:flutter/material.dart';
import 'package:i_am_steve_flutter/presentation/view/start/StartWidget.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'i am steve',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StartPage(),
    );
  }
}