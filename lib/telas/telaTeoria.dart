// tela na qual fica a teoria
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoListTile.dart';
import 'package:minervaShort/widgets/base.dart';
import 'package:minervaShort/widgets/textoTeoria.dart';

class TelaTeoria extends StatelessWidget{

  final List<TextoTeoria> textos;

  bool carregando = true;
  String url;
  FloatingActionButton botaoFlutuante;

  TelaTeoria({this.textos, this.url, this.botaoFlutuante});
  @override
  Widget build(BuildContext context) {
    return Base(
      tituloAppBar: Text('Teorias'),
      widget: ListView(
        children: <Widget>[
          BotaoListTile(titulo: 'Anatomia',),
          Divider(height: 2,),
          BotaoListTile(titulo: 'Embriologia',),
        ],
      ),
    );
  }
}

