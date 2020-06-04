//tela da materia de saúde
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoDoGrid.dart';
import 'package:minervaShort/botoes/botaoVolta.dart';
import 'package:minervaShort/telas/telaAnatomia.dart';
import 'package:minervaShort/widgets/base.dart';
import 'package:minervaShort/widgets/grid.dart';

class TelaMed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Base(
      leading: BotaoVolta(),
      tituloAppBar: Text('Saúde'),
      widget: Grid(
        filhos: <Widget>[
          BotaoDoGrid(nome: 'Anatomia',caminhoImagem:'assets/anatomia.png' ,proximaTela: TelaAnatomia(),)
        ],
      ),
    );
  }
}

