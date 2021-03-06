import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import '../clickChangeNotifier.dart';
import 'package:minervaShort/globals.dart' as globals;

class BotaoDoGrid extends StatelessWidget{

  final String nome;
  String caminhoImagem;

  final Widget proximaTela;
  Widget filho;

  BotaoDoGrid({this.nome, this.proximaTela, this.caminhoImagem,});

  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    if(caminhoImagem==null){caminhoImagem='assets/jjj.bmp';};
    return Center(
      child: FlatButton(
        onPressed: (){
          info.zeraClick();
          globals.pontoAle = 0;
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
        child: SizedBox(
          width: 150,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(image: AssetImage('$caminhoImagem'),
                  width: 150.0,height: 100.0,
                  fit: BoxFit.fill,
                ),
              ),
              Text('$nome', textAlign: TextAlign.center, )
            ],
          ),
        ),
      ),

    );
  }
}

