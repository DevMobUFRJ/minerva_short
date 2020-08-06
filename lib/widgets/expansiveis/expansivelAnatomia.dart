import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoDoExpansivel.dart';
import 'package:minervaShort/telas/telaTeste.dart';

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
          titulo: 'Sistema articular',
          telaQuestionario: TelaTeste(),
        ),
        Divider(color: Colors.grey[399],thickness: 1, height: 2,),
        BotaoDoExpansivel(
          titulo: 'Sistema ciculatório',
        ),
        Divider(color: Colors.grey[399],thickness: 1, height: 2,),
        BotaoDoExpansivel(
          titulo: 'Sistema digestório',
        ),
        Divider(color: Colors.grey[399],thickness: 1, height: 2,),
        BotaoDoExpansivel(
          titulo: 'Sistema muscular',
        ),
        Divider(color: Colors.grey[399],thickness: 1, height: 2,),
        BotaoDoExpansivel(
          titulo: 'Sistema respiratório',
        ),
      ],
    );
  }
}
