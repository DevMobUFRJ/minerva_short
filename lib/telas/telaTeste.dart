import 'package:flutter/material.dart';
import 'package:minervaShort/questoes/questoesSistResp.dart';

class TelaTeste extends StatelessWidget {

  @override


  Widget build(BuildContext context) {

    final array = new QuestoesSistResp();
    debugPrint('TELA TESTE ESTADO');
    chama_array(){
      return array.aleatorio();
    }

    return chama_array();
  }
}