import 'dart:math';
import 'package:minervaShort/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:minervaShort/widgets/gridQuestionario.dart';

class Alternativa extends StatelessWidget {
  String caminho;
  Alternativa(this.caminho);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      caminho,
      width: 150.0,
      height: 100.0,
      fit: BoxFit.fill,
    );
  }
}


class Array{
  List<GridQuestionario> questoes = List();
  final _random = new Random();
  static int i = 0;

  aleatorio(){
    globals.pontoAle++;

    i++;
    int cont = _random.nextInt(questoes.length);

    return questoes[cont];

  }

  Array(){
    questoes.add(
        GridQuestionario(
          questao: AssetImage('questoes_anato/questoes_sistema_resp/Quest_1.jpg'),
          widgetOpcaoA: Text(
              'I- Narina\n'
                  'II- Cavidade Nasal\n'
                  'III- Faringe\n'
                  'IV- Laringe\n'
                  'V- Epiglote'
          ),
          widgetOpcaoB: Text(
              'I- Narina\n'
                  'II- Epiglote\n'
                  'III- Laringe\n'
                  'IV- Faringe\n'
                  'V- Cavidade Nasal'
          ),
          widgetOpcaoC: Text(
              'I- Cavidade Nasal\n'
                  'II- Narina\n'
                  'III- Laringe\n'
                  'IV- Faringe\n'
                  'V- Epiglote'
          ),
          widgetOpcaoD: Text(
              'I- Cavidade Nasal\n'
                  'II- Narina\n'
                  'III- Faringe\n'
                  'IV- Epiglote\n'
                  'V- Laringe'
          ),
          opcaoD: true,
        )
    );

    questoes.add(
        GridQuestionario(
          questao: AssetImage('questoes_anato/questoes_sistema_resp/Quest_2.jpg'),
          widgetOpcaoA: Text(
              'I- Diafragma\n'
                  'II- Cavidade pleural\n'
                  'III- Bronquios Primarios\n'
                  'IV- Pulmão\n'
                  'V- Bronquios secondarios'
          ),
          widgetOpcaoB: Text(
              'I- Traqueia\n'
                  'II- Cavidade pleural\n'
                  'III- Diafragma\n'
                  'IV- Pulmão\n'
                  'V- Bronquios primarios'
          ),
          widgetOpcaoC: Text(
              'I- Traqueia\n'
                  'II- Bronquios primarios\n'
                  'III- Cavidade pleural\n'
                  'IV- Pulmão\n'
                  'V- Pulmão'
          ),
          widgetOpcaoD: Text(
              'I- Traqueia\n'
                  'II- Bronquios primarios\n'
                  'III- Diafragma\n'
                  'IV- Pulmão\n'
                  'V- Pulmão'
          ),
          opcaoC: true,
        )
    );
  }
}