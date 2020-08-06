import 'package:flutter/material.dart';
import 'package:minervaShort/questoes/questoesSistResp.dart';

class TelaQuestionarioAle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final array = new QuestoesSistResp();
    debugPrint('TELA QUEST ESTADO');
    chama_array(){
      return array.aleatorio();
    }

    return chama_array();
  }
}