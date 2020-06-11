import 'package:flutter/material.dart';
import 'package:minervaShort/globals.dart' as globals;

class BotaoListTile extends StatelessWidget {

  final String titulo;
  final Widget proximaTela;

  BotaoListTile({this.titulo, this.proximaTela});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.white,
      child: ListTile(
        title: Text('$titulo', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
      ),
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
        else{
          globals.EmBreveFlushBar(context);
        }
      },
    );
  }
}
