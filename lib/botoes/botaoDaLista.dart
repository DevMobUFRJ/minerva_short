
import 'package:flutter/material.dart';

class BotaoDaLista extends StatelessWidget{
  final Widget titulo;
  final Widget subtitulo;
  final Widget proximaTela;

  BotaoDaLista({this.titulo, this.subtitulo, this.proximaTela});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: (){
        if(proximaTela!=null){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context){
                    return proximaTela;
                  }
              )
          );
        }
      },
      child: ListTile(
        title: titulo,
        subtitle: subtitulo,
      ),
    );
  }

}