library my_globals.dart;

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'clickChangeNotifier.dart';

void EmBreveFlushBar(BuildContext context){
  var info = Provider.of<Info>(context, listen: false);
  Color cor = Colors.grey[850];

  if(info.dark)
    {
      cor = Colors.grey[900];
    }

  Flushbar(
    backgroundColor: cor,
    dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    margin: EdgeInsets.all(8),
    borderRadius: 8,
    title: 'Opa! Ainda não',
    message:'Em breve esta opção estará pronta para você',
    //leftBarIndicatorColor: Colors.lightBlue[400],
    duration: Duration(seconds: 3),
    icon: Icon(
      Icons.block,
      color: Colors.red,
    ),
  ).show(context);
}
int pontoAle = 0;