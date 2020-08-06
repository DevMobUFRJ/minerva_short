import 'package:flutter/material.dart';
import 'package:minervaShort/clickChangeNotifier.dart';
import 'package:minervaShort/telas/tela_dashboard.dart';
import 'package:provider/provider.dart';
void main() {

  runApp(
    ChangeNotifierProvider(
      create: (context) => Info(),
      child: MyApp(),
    )
  );
  //save(Estatistica(materia: 'teste', quantPerguntas: 2, quantAcertos: 3));
  //findAll().then((estatistica) => debugPrint(estatistica.toString()));

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    return MaterialApp(
      theme: info.tema,
      home: TelaDashBoard(),
    );
  }
}
