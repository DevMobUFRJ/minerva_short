import 'dart:math';
import 'package:minervaShort/globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:minervaShort/telas/telaQuestionarioAle.dart';
import 'package:minervaShort/widgets/gridQuestionario.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cached_network_image/cached_network_image.dart';

class QuestoesSistResp {
  //List<GridQuestionario> questoes = List();


  final _random = new Random();




  tipoOpcao(DocumentSnapshot document, String opcao){
    return document['tipo'] == 'texto'?Text('${document['alternativa_$opcao']}', style: TextStyle(fontSize: 12.0, color: Colors.black),) : document['tipo'] == 'imagem'? NetworkImage('${document['alternativa_$opcao']}'): Text('Tipo da alternativa não informado',);
  }

  bool correto(DocumentSnapshot document, String alternativa){
    //debugPrint('+++++${document['correto'] == '$alternativa'?  true : false}');
    return document['correto'] == '$alternativa'?  true : false;
  }

  bd(DocumentSnapshot document) {
    debugPrint('BD');
    return GridQuestionario(
      proximaTela: TelaQuestionarioAle(),
      questao: CachedNetworkImage(
        imageUrl: document['questao'],
        placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
      ),
      widgetOpcaoA: tipoOpcao(document, 'a'),
      widgetOpcaoB: tipoOpcao(document, 'b'),
      widgetOpcaoC: tipoOpcao(document, 'c'),
      widgetOpcaoD: tipoOpcao(document, 'd'),
      opcaoA: correto(document, 'a'),
      opcaoB: correto(document, 'b'),
      opcaoC: correto(document, 'c'),
      opcaoD: correto(document, 'd'),

    );
  }

  aleatorio() {

    globals.pontoAle++;

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
