import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//FloatingActionButton que pode ser colocado na tela de teoria para download de um material adicional
class BotaoFlutuanteTeoria extends FloatingActionButton{


  DocumentSnapshot document;

  BotaoFlutuanteTeoria({this.document});


  @override
  Widget build(BuildContext context){
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
      child: Text(
        'Material adicional',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 10),
      ),
      onPressed: () => launch(document['url'],),
    );
  }
}