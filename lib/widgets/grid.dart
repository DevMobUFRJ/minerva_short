//GridView pré-configurado pra ficar na tela principal e demais telas - recebe como filhos(children) BotaoDoGrid
import 'package:flutter/material.dart';

class Grid extends StatelessWidget{
  final String nomeBotao;
  final List<Widget> filhos;
  Grid({this.nomeBotao, this.filhos});
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: filhos,
    );
  }
}

