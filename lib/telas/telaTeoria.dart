// tela na qual fica a teoria
import 'package:flutter/material.dart';
import 'package:minervaShort/widgets/base.dart';
import 'package:minervaShort/widgets/textoTeoria.dart';

class TelaTeoria extends StatelessWidget{

  final List<TextoTeoria> textos;

  bool carregando = true;
  String url;
  FloatingActionButton botaoFlutuante;

  TelaTeoria(this.textos, {this.url, this.botaoFlutuante});



  @override
  Widget build(BuildContext context) {

    return Base(
      tituloAppBar: Text('Teoria'),
      widget: Column(
        children: textos,
      ),
      floatingActionButton: botaoFlutuante,
    );
  }
}

