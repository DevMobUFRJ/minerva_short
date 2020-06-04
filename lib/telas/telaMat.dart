//tela da materia matemática
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoDoGrid.dart';
import 'package:minervaShort/botoes/botaoVolta.dart';
import 'package:minervaShort/telas/telaCalculo.dart';
import 'package:minervaShort/widgets/base.dart';
import 'package:minervaShort/widgets/grid.dart';

class TelaMat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Base(
      leading: BotaoVolta(),
      tituloAppBar: Text('Matemática'),
      widget: Grid(
        filhos: <Widget>[
          BotaoDoGrid(nome: 'Cálculo',caminhoImagem:'assets/calculo.png' ,proximaTela: TelaCalculo(),)
        ],
      ),
    );
  }
}