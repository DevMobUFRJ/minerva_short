//tela da materia cálculo
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/cardBotao.dart';
import 'package:minervaShort/telas/telaQuestionario.dart';
import 'package:minervaShort/telas/telaTeoria.dart';
import 'package:minervaShort/widgets/base.dart';
import 'package:minervaShort/widgets/textoTeoria.dart';

class TelaCalculo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Base(
      tituloAppBar: Text('Cálculo'),
      widget: Column(
        children: <Widget>[
          CardBotao(
            titulo: 'Derivada',
            subtitulo: 'Definição',
          ),

          CardBotao(
            titulo: 'Integral',
            subtitulo: 'Definição, integral por partes, por substituição e funçoes parciais',
            proximaTela: TelaQuestionario(
              tituloAppBar: Text('Integral'),
              telaTeoria: TelaTeoria(
                <TextoTeoria>[
                  TextoTeoria(
                    titulo: 'Integral',
                    descricao: 'É o inverso da derivada, dessa forma, ao ver integral de *alguma coisa*, deve-se pensar qual a função cuja derivada seja essa *alguma coisa*',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

