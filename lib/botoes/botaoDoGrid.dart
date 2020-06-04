import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../clickChangeNotifier.dart';
import 'package:minervaShort/globals.dart' as globals;

class BotaoDoGrid extends StatelessWidget{

  final String nome;
  String caminhoImagem;
  final Widget proximaTela;

  BotaoDoGrid({this.nome, this.proximaTela, this.caminhoImagem});

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
        },
        child: SizedBox(
          width: 150,
          height: 200,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(image: AssetImage('$caminhoImagem'),
                  width: 150.0,height: 100.0,
                  fit: BoxFit.fill,
                ),
              ),
              Text('$nome', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
            ],
          ),
        ),
      ),

    );
  }
}

