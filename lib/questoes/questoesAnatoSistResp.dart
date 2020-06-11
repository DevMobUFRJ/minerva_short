import 'dart:math';
import 'package:minervaShort/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:minervaShort/widgets/gridQuestionario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cached_network_image/cached_network_image.dart';

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


  tipoOpcao(DocumentSnapshot document){
    return document['tipo'] == 'texto'?Text('${document['alternativa_a']}', style: TextStyle(fontSize: 12.0, color: Colors.black),) : document['tipo'] == 'imagem'? NetworkImage('${document['alternativa_a']}'): Text('Tipo da alternativa não informado',);
  }

  bool correto(DocumentSnapshot document, String alternativa){
    return document['correto'] == '$alternativa'?  true : false;
  }

  bd(DocumentSnapshot document) {
    return GridQuestionario(
      questao: CachedNetworkImage(
        imageUrl: document['questao'],
        placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
      ),
      widgetOpcaoA: tipoOpcao(document),
      widgetOpcaoB: tipoOpcao(document),
      widgetOpcaoC: tipoOpcao(document),
      widgetOpcaoD: tipoOpcao(document),
      opcaoA: correto(document, 'a'),
      opcaoB: correto(document, 'b'),
      opcaoC: correto(document, 'c'),
      opcaoD: correto(document, 'd'),

    );
  }

  aleatorio() {
    globals.pontoAle++;
    j++;


    return StreamBuilder(
      stream: Firestore.instance.collection('questoes_sist_resp').snapshots(),
      builder: (context, snapshot){
        if(!snapshot.hasData) return Center(child: CircularProgressIndicator());
        int cont = _random.nextInt(snapshot.data.documents.length);
        return bd(snapshot.data.documents[cont]);
      }
    );
  }
}
