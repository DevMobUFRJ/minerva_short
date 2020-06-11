import 'package:flutter/material.dart';
import 'package:minervaShort/widgets/bottomContainer.dart';
import 'package:minervaShort/globals.dart' as globals;

class BotaoDoExpansivel extends StatelessWidget {

  final Widget titulo;
  final Widget telaQuestionario;
  final Widget telaQuestionatioTempo;
  
  BotaoDoExpansivel({this.telaQuestionario, this.telaQuestionatioTempo, @required this.titulo});
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: titulo,
      onTap: (){
        if(telaQuestionario != null || telaQuestionatioTempo != null){
          showModalBottomSheet(
            shape: RoundedRectangleBorder(),
           backgroundColor: Colors.transparent,
            context: context,
            builder: (context){
              return BottomContainer(
                telaQuestionario: this.telaQuestionario,
                telaQuestionarioTempo: this.telaQuestionatioTempo,
              );
            },
          );
        }
        else{
          globals.EmBreveFlushBar(context);
        }
      },
    );
  }
}
