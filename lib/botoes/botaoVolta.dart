//fica no leading da appBar pra voltar à tela anterior
import 'package:flutter/material.dart';


class BotaoVolta extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed:() {

          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back, color: Colors.white,)
    );
  }
}