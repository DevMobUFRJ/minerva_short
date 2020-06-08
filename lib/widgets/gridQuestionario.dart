import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoQuestionario.dart';
import 'package:provider/provider.dart';
import 'package:minervaShort/globals.dart' as globals;

import '../clickChangeNotifier.dart';
import 'base.dart';

class GridQuestionario extends StatefulWidget {
  Widget widgetOpcaoA;
  Widget widgetOpcaoB;
  Widget widgetOpcaoC;
  Widget widgetOpcaoD;
  NetworkImage questao;
  bool opcaoA;
  bool opcaoB;
  bool opcaoC;
  bool opcaoD;
  BorderRadius borderRadius;



  GridQuestionario({this.borderRadius,this.questao, this.widgetOpcaoA,this.widgetOpcaoB, this.widgetOpcaoC, this.widgetOpcaoD, this.opcaoA,this.opcaoB, this.opcaoC, this.opcaoD}){
    if(widgetOpcaoA == null){widgetOpcaoA = Image.asset('assets/jjj.bmp');}
    if(widgetOpcaoB == null){widgetOpcaoB = Image.asset('assets/jjj.bmp');}
    if(widgetOpcaoC == null){widgetOpcaoC = Image.asset('assets/jjj.bmp');}
    if(widgetOpcaoD == null){widgetOpcaoD = Image.asset('assets/jjj.bmp');}
    if(questao == null){questao = NetworkImage('https://firebasestorage.googleapis.com/v0/b/minervashort.appspot.com/o/questoes_anato%2Fquestoes_sist_resp%2Fjjj.bmp?alt=media&token=52cf43e3-47b4-4020-a1af-051d70450bbe');}
    if(borderRadius == null){borderRadius = BorderRadius.zero;}
  }

  @override
  _GridQuestionarioState createState() => _GridQuestionarioState();
}

class _GridQuestionarioState extends State<GridQuestionario> {


  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    return Base(
      tituloAppBar: Text('Questionario -- ${info.click}/${globals.pontoAle}', style: TextStyle(color: Colors.white),),
      widget: ListView(

        children: <Widget>[
          Image(
            image: widget.questao,
          ),

          ButtonBar(
            buttonPadding: EdgeInsets.all(8),
            children: <Widget>[

              BotaoQuestionario(borderRadius: widget.borderRadius, opcao: 'a)', widget: widget.widgetOpcaoA, certo: widget.opcaoA,),
              BotaoQuestionario(borderRadius: widget.borderRadius,opcao: 'b)', widget: widget.widgetOpcaoB, certo: widget.opcaoB,),
            ],
          ),

          ButtonBar(
            buttonPadding: EdgeInsets.all(8),
            children: <Widget>[
              BotaoQuestionario(borderRadius: widget.borderRadius,opcao: 'c)', widget: widget.widgetOpcaoC, certo: widget.opcaoC,),
              BotaoQuestionario(borderRadius: widget.borderRadius,opcao: 'd)', widget: widget.widgetOpcaoD, certo: widget.opcaoD,),
            ],
          ),
        ],
      ),
    );
  }
}