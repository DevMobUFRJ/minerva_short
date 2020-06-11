import 'package:flutter/material.dart';
import 'package:minervaShort/telas/telaQuestionarioAle.dart';
import 'package:provider/provider.dart';

import '../clickChangeNotifier.dart';

class BotaoQuestionario extends StatefulWidget {
  bool certo;
  Widget widget;
  final String opcao;
  BorderRadius borderRadius = BorderRadius.zero;

  BotaoQuestionario({@required this.opcao,@required this.widget, this.certo, this.borderRadius}){
    if(borderRadius == null){borderRadius = BorderRadius.zero;}
  }

  @override
  _BotaoQuestionarioState createState() => _BotaoQuestionarioState();
}

class _BotaoQuestionarioState extends State<BotaoQuestionario> {




  bool trocaTela(){

    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context){
              return TelaQuestionarioAle();
            }
        )
    );


    return true;

  }

  criaPopUp(bool certo){

    if(widget.certo){
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context){
            return RaisedButton(
              color: Colors.transparent,
              onPressed: (){
                Navigator.of(context).pop();
                trocaTela();
              },
              child: AlertDialog(
                content: Icon(Icons.check, color: Colors.green, size: 64,),
                shape: CircleBorder(),
              ),
            );
          }
      );
    }
    else{
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context){
            return RaisedButton(
              color: Colors.transparent,
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: AlertDialog(
                content: Icon(Icons.clear, color: Colors.red, size: 64,),
                shape: CircleBorder(),
              ),
            );
          }
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    Color cor = Theme.of(context).primaryColor;
    var info = Provider.of<Info>(context);
    return FlatButton(
      onPressed: (){
        if(widget.certo == null){widget.certo = false;}

        if(widget.certo){

          info.incrementClick();

          setState(() {
            cor = Colors.green;
          });

          criaPopUp(widget.certo);

        }
        else{

          if(info.click > 0)
          {
            info.decrementClick();
          }

          setState(() {
            cor = Colors.red;
          });
          criaPopUp(widget.certo);
        }

        setState(() {});

      },
      child: SizedBox(
        width: 150,
        height: 116,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: widget.borderRadius,
              child: widget.widget,
            ),
            Text(
              '${widget.opcao}',
              style: TextStyle(color: cor),
            )
          ],
        ),
      ),
    );
  }
}

