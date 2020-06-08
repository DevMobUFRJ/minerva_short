import 'dart:async';
import 'dart:math';
import 'package:minervaShort/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:minervaShort/widgets/gridQuestionario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Alternativa extends StatelessWidget {
  String caminho;
  Alternativa(this.caminho);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      caminho,
      width: 150.0,
      height: 100.0,
      fit: BoxFit.fill,
    );
  }
}


class Array {
  //List<GridQuestionario> questoes = List();
  final _random = new Random();
  static int j = 0;


  bd(DocumentSnapshot document) {
    return GridQuestionario(
      questao: NetworkImage(document['questao']),
      widgetOpcaoA: document['tipo'] == 'texto'?Text('${document['alternativa_a']}') : document['tipo'] == 'imagem'? NetworkImage('${document['alternativa_a']}'): Text('Tipo da alternativa não informado'),
      widgetOpcaoB: document['tipo'] == 'texto'?Text('${document['alternativa_b']}') : document['tipo'] == 'imagem'? NetworkImage('${document['alternativa_b']}'): Text('Tipo da alternativa não informado'),
      widgetOpcaoC: document['tipo'] == 'texto'?Text('${document['alternativa_c']}') : document['tipo'] == 'imagem'? NetworkImage('${document['alternativa_c']}'): Text('Tipo da alternativa não informado'),
      widgetOpcaoD: document['tipo'] == 'texto'?Text('${document['alternativa_d']}') : document['tipo'] == 'imagem'? NetworkImage('${document['alternativa_d']}'): Text('Tipo da alternativa não informado'),
      opcaoA: document['correto'] == 'a'?  true : false,
      opcaoB: document['correto'] == 'b'?  true : false,
      opcaoC: document['correto'] == 'c'?  true : false,
      opcaoD: document['correto'] == 'd'?  true : false,

    );
  }

  aleatorio() {
    globals.pontoAle++;
    j++;


    return StreamBuilder(
      stream: Firestore.instance.collection('questoes_sist_resp').snapshots(),
      builder: (context, snapshot){
        if(!snapshot.hasData) return CircularProgressIndicator();
        int cont = _random.nextInt(snapshot.data.documents.length);
        return bd(snapshot.data.documents[cont]);
      }
    );
  }
}
