//estrutura utilizada para montar a TelaTeoria - predefinições de cor, tamanho e estilo do texto
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoFlutuanteTeoria.dart';

class TextoTeoria extends StatelessWidget{

  final String titulo;
  final String descricao;
  DocumentSnapshot document;




  TextoTeoria({@required this.titulo, @required this.descricao, this.document});



  @override
  Widget build(BuildContext context) {

    texto(DocumentSnapshot document, int i){

      String texto;
      if(document == null)
         texto = 'Texto não encontrado';
      else
         texto = document['textos'][i];

      return Column(
         children: <Widget>[
            const SizedBox( height: 16.0,),
            Text('$texto\n',
               strutStyle: StrutStyle(height: 1.5,),
               textAlign: TextAlign.center,
            ),
         ],
      );
    }

    estrutura(int index){

      return StreamBuilder(

        stream: Firestore.instance.collection('teoria_anatomia').document('${document.documentID}').collection('teorias').snapshots(),
        builder: (context, snapshot){

          if(!snapshot.hasData) return Center(child: CircularProgressIndicator());

          int indice = snapshot.data.documents.length != 0 ? index: null;

          int tamanho = indice != null ? snapshot.data.documents[indice]['textos'].length: 1;

          DocumentSnapshot documento = indice != null ? snapshot.data.documents[indice]: null;

          String _titulo = document['titulos'] != null? document['titulos'][index]:'Título não encontrado';

          return Column(

            children: <Widget>[

              const SizedBox( height: 16.0,),

              Text('$_titulo',
                style: TextStyle(fontWeight: FontWeight.bold,),
                textAlign: TextAlign.justify,),

              const SizedBox( height: 16.0,),
              Divider(color: Colors.blueGrey[600]),

              for(int i = 0; i < tamanho; i++)
                texto(documento, i),

              Divider(color: Colors.blueGrey[600]),
            ],
          );
        },
      );
    }


    lista(){
      int _tamanho = document['titulos'] != null? document['titulos'].length: 1;
      return ListView.builder(
        itemCount: _tamanho,
        itemBuilder: (context, index){
          return estrutura(index);
        },
      );
    }

    FloatingActionButton fba = BotaoFlutuanteTeoria(document: document,);

    return Scaffold(
      floatingActionButton: document['url'] != null? fba: null,
      body: lista(),
    );
  }
}
