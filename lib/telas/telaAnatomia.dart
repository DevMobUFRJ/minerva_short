//tela da materia anatomia
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/cardBotao.dart';
import 'package:minervaShort/telas/telaQuestionario.dart';
import 'package:minervaShort/telas/telaQuestionarioAle.dart';
import 'package:minervaShort/widgets/base.dart';

class TelaAnatomia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Base(
      tituloAppBar: Text('Anatomia'),
      widget: Column(
        children: <Widget>[
          CardBotao(
            titulo: 'Sistema articular',
            subtitulo: '',
            proximaTela: TelaQuestionario(
              tituloAppBar: Text('Sistema articular'),
              //telaTeoria: TelaTeoria(),
            ),
          ),

          CardBotao(
            titulo: 'Sistema circulatório',
            subtitulo: '',
            proximaTela: TelaQuestionario(
              tituloAppBar: Text('Sistema circulatório'),
            ),
          ),

          CardBotao(
            titulo: 'Sistema digestório',
            subtitulo: '',
            proximaTela: TelaQuestionario(
              tituloAppBar: Text('Sistema digestório'),
            ),
          ),

          CardBotao(
            titulo: 'Sistema excretor',
            subtitulo: '',
            proximaTela: TelaQuestionario(
              tituloAppBar: Text('Sistema excretor'),
            ),
          ),

          CardBotao(
            titulo: 'Sistema muscular',
            subtitulo: '',
            proximaTela: TelaQuestionario(
              tituloAppBar: Text('Sistema muscular'),
            ),
          ),

          CardBotao(
            titulo: 'Sistema respiratório',
            subtitulo: '',
            proximaTela: TelaQuestionario(
              telaQuestionarioAle: TelaQuestionarioAle(),
              tituloAppBar: Text('Sistema respiratório'),
            ),
          ),
        ],
      ),
    );
  }
}

