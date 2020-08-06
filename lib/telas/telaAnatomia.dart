//tela da materia anatomia
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:minervaShort/widgets/textoTeoria.dart';

import 'package:provider/provider.dart';
import '../clickChangeNotifier.dart';

class TelaAnatomia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    criaTab(DocumentSnapshot document){
      if(document['materia'] != null)
        return Text(document['materia']);
      else return Text('Materia não informada');
    }

    return StreamBuilder(
      stream: Firestore.instance.collection('teoria_anatomia').snapshots(),
      builder: (context, snapshot){

        if(!snapshot.hasData) return Center(child: CircularProgressIndicator());

        int tamanho = snapshot.data.documents.length;

        return DefaultTabController(
          length: tamanho,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Teorias'),
              bottom: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  for(int i = 0; i < tamanho; i++)
                    criaTab(snapshot.data.documents[i]),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                for(int i = 0; i < tamanho; i++)
                  TextoTeoria(document: snapshot.data.documents[i],)
              ],
            ),
          ),
        );
      },
    );
  }
}

