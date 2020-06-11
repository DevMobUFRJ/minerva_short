import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoDoExpansivel.dart';
import 'package:minervaShort/telas/telaQuestionarioAle.dart';

class ExpansivelAnatomia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: SizedBox(
        height: 40,
        child: Image.asset('assets/anatomy.png')),
      title: Text('Anatomia'),
      children: <Widget>[
        Divider(color: Colors.grey[399],thickness: 1, height: 2,),
        BotaoDoExpansivel(
          titulo: Text('Sistema articular'),
          telaQuestionario: TelaQuestionarioAle(),
        ),
        Divider(color: Colors.grey[399],thickness: 1, height: 2,),
        BotaoDoExpansivel(
          titulo: Text('Sistema ciculatório'),
        ),
        Divider(color: Colors.grey[399],thickness: 1, height: 2,),
        BotaoDoExpansivel(
          titulo: Text('Sistema digestório'),
        ),
        Divider(color: Colors.grey[399],thickness: 1, height: 2,),
        BotaoDoExpansivel(
          titulo: Text('Sistema muscular'),
        ),
        Divider(color: Colors.grey[399],thickness: 1, height: 2,),
        BotaoDoExpansivel(
          titulo: Text('Sistema respiratório'),
        ),

      ],
    );
  }
}
