import 'package:flutter/material.dart';
import 'package:minervaShort/questoes/questoesAnatoSistResp.dart';

class TelaQuestionarioAle extends StatefulWidget {

  TelaQuestionarioAle(){}

  @override
  _TelaQuestionarioAleState createState() => _TelaQuestionarioAleState();
}

class _TelaQuestionarioAleState extends State<TelaQuestionarioAle> {

  final array = new Array();

  chama_array(){
    return array.aleatorio();
  }


  @override
  Widget build(BuildContext context) {


    return chama_array();
  }
}