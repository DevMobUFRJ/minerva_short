import 'package:flutter/material.dart';
import 'package:minervaShort/telas/telaHome.dart';
import 'package:minervaShort/clickChangeNotifier.dart';
import 'package:minervaShort/telas/telaQuest.dart';
import 'package:provider/provider.dart';
void main() => runApp(
    ChangeNotifierProvider(
      create: (context) => Info(),
      child: MyApp(),
    )
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //primaryColor: Colors.lightBlue[300],
        primaryColor: Colors.teal[400],
        accentColor: Colors.black
      ),
      home: TelaHome(),
    );
  }
}
