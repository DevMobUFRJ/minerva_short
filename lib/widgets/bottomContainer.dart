import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minervaShort/globals.dart' as globals;
import 'package:provider/provider.dart';
import '../clickChangeNotifier.dart';
import 'package:flushbar/flushbar.dart';

class BottomContainer extends StatelessWidget {

  final Widget telaQuestionario;
  final Widget telaQuestionarioTempo;

  BottomContainer({this.telaQuestionario, this.telaQuestionarioTempo});

  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    return Container(
      //color: Colors.black,
      height: 200,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Theme.of(context).primaryColor, width: 2.0),
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoButton(
            padding: EdgeInsets.all(8),
            //disabledColor: Colors.teal[400],
            color: Theme.of(context).primaryColor,
            child: Text('Questionário'),
            onPressed: (){
              if(this.telaQuestionario != null)
              {
                globals.pontoAle = 0;
                info.zeraClick();
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => telaQuestionario,
                    )
                );
              }
              else{
                globals.EmBreveFlushBar(context);
              }
            },
          ),

          SizedBox(height: 24,),

          CupertinoButton(
            padding: EdgeInsets.all(8),
            //disabledColor: Colors.teal[400],
            color: Theme.of(context).primaryColor,
            child: Text('Questionário com tempo'),
            onPressed: (){
              if(this.telaQuestionarioTempo != null)
                {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => telaQuestionarioTempo,
                      )
                  );
                }
              else{
               globals.EmBreveFlushBar(context);
              }
            },
          ),
        ],
      )
    );
  }
}
