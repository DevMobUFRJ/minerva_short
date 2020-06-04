//estrutura utilizada para montar a TelaTeoria - predefinições de cor, tamanho e estilo do texto
import 'package:flutter/material.dart';

class TextoTeoria extends StatelessWidget{

  final String titulo;
  final String descricao;

  TextoTeoria({@required this.titulo, @required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox( height: 16.0,),
        Text('$titulo',
          style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox( height: 8.0,),
        Divider(color: Colors.blueGrey[600]),
        const SizedBox( height: 8.0,),
        Text('$descricao',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox( height: 16.0,),
        //Divider(color: Colors.blueGrey[600]),
      ],
    );
  }
}

