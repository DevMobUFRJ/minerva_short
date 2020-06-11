//tela inicial
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoDoGrid.dart';
import 'package:minervaShort/telas/telaMat.dart';
import 'package:minervaShort/telas/telaMed.dart';
import 'package:minervaShort/telas/telaQuest.dart';
import 'package:minervaShort/widgets/base.dart';
import 'package:minervaShort/widgets/decoracao.dart';
import 'package:minervaShort/widgets/grid.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class TelaHome extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Minerva Short')),
        elevation: 0.0,
      ),

      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            child: Stack(
              children: <Widget>[
                Decoracao(),
                Grid(
                  filhos: <Widget>[
                    BotaoDoGrid(nome: 'Questões',caminhoImagem: 'assets/questoes.png' ,proximaTela: TelaQuest(),),
                    const SizedBox(),
                    const SizedBox(),
                    BotaoDoGrid(nome: 'Teorias',caminhoImagem: 'assets/estudo.png',),
                    BotaoDoGrid(nome: 'Estatistica',caminhoImagem: 'assets/estatistica.png',)
                  ],
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}