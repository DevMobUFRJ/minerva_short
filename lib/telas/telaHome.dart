//tela inicial
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoDoGrid.dart';
import 'package:minervaShort/telas/telaMat.dart';
import 'package:minervaShort/telas/telaMed.dart';
import 'package:minervaShort/widgets/base.dart';
import 'package:minervaShort/widgets/grid.dart';

class TelaHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Base(
      tituloAppBar: Text('Minerva Short'),
      widget: Grid(
        filhos: <Widget>[
          BotaoDoGrid(nome: 'Matemática',caminhoImagem: 'assets/matematica.png' ,proximaTela: TelaMat(),),
          BotaoDoGrid(nome: 'Saúde',caminhoImagem: 'assets/saude.png', proximaTela: TelaMed(),)
        ],
      ),
    );
  }
}