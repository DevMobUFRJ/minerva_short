//tela da parte onde ficam os questionários e a parte teórica - é a mesma tela para todos
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoDoGrid.dart';
import 'package:minervaShort/widgets/base.dart';
import 'package:minervaShort/widgets/grid.dart';
import 'package:minervaShort/globals.dart' as globals;

class TelaQuestionario extends StatelessWidget{
  final Widget tituloAppBar;
  final Widget telaTeoria;
  final Widget telaQuestionarioAle;
  final Widget telaQuestionarioTop;
  final Widget telaQuestionarioTemp;

  TelaQuestionario({this.tituloAppBar,this.telaTeoria, this.telaQuestionarioAle, this.telaQuestionarioTop, this.telaQuestionarioTemp}){
    globals.pontoAle = 0;
  }

  @override
  Widget build(BuildContext context) {

    return Base(
      tituloAppBar: tituloAppBar,
      widget: Grid(
        filhos: <Widget>[
          BotaoDoGrid(nome: 'Teoria',caminhoImagem:'assets/teoria.png',proximaTela: telaTeoria,),
          BotaoDoGrid(nome: 'Questionario aleatório',caminhoImagem:'assets/questionario.png' ,proximaTela: telaQuestionarioAle,),
          BotaoDoGrid(nome: 'Questionario por tópico',caminhoImagem:'assets/questionario.png' ,proximaTela: telaQuestionarioTop),
          BotaoDoGrid(nome: 'Questionario c/ Tempo',caminhoImagem:'assets/questionario.png' ,proximaTela: telaQuestionarioTemp),
        ],
      ),
    );
  }
}

