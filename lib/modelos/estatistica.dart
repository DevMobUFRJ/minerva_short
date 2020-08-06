import 'package:flutter/material.dart';

class Estatistica{
  final String materia;
  final int quantAcertos;
  final int quantPerguntas;

  Estatistica({this.materia, this.quantAcertos, this.quantPerguntas});

  @override
  String toString(){
    return 'Estatistica{materia: $materia, quantAcertos: $quantAcertos, quantPerguntas: $quantPerguntas}';
  }
}