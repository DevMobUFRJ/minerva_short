import 'package:flutter/material.dart';
import 'package:minervaShort/telas/telaHome.dart';
import 'package:minervaShort/telas/telaQuestionarioAle.dart';
import 'package:minervaShort/telas/telaTeste.dart';
import 'package:provider/provider.dart';
import 'package:minervaShort/globals.dart' as globals;
import '../clickChangeNotifier.dart';

class BotaoQuestionario extends StatefulWidget {
  bool certo;
  Widget widget;
  final String opcao;
  BorderRadius borderRadius = BorderRadius.zero;
  Widget proximaTela;

  BotaoQuestionario({@required this.opcao,@required this.widget, this.certo, this.borderRadius}){
    if(borderRadius == null){borderRadius = BorderRadius.zero;}
  }

  @override
  _BotaoQuestionarioState createState() => _BotaoQuestionarioState();
}

class _BotaoQuestionarioState extends State<BotaoQuestionario> {
  Color cor = Colors.black;



  void trocaTela(){
    debugPrint('TROCA');
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context){
              return new TelaTeste();
            }
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);

    criaPopUp(bool certo){

      if(widget.certo){
        info.incrementClick();
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context){
              return RaisedButton(
                child: AlertDialog(
                  content: Icon(Icons.check, color: Colors.green, size: 64,),
                  shape: CircleBorder(),
                ),
                color: Colors.transparent,
                onPressed: (){

                  Navigator.of(context).pop();

                  trocaTela();

                },
              );
            }
        );
      }
      else{
        info.decrementClick();
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context){
              return RaisedButton(

                child: AlertDialog(
                  content: Icon(Icons.clear, color: Colors.red, size: 64,),
                  shape: CircleBorder(),
                ),
                color: Colors.transparent,
                onPressed: (){
                  Navigator.of(context).pop();
                },
              );
            }
        );
      }
    }

    return FlatButton(
      onPressed: (){
        debugPrint('BUILD');
        if(widget.certo == null){widget.certo = false;}

        criaPopUp(widget.certo);
        debugPrint('1');
        if(widget.certo){
            cor = Colors.green;
        }
        else{
            cor = Colors.red;
        }
        debugPrint('2');
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