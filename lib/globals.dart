library my_globals.dart;

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void EmBreveFlushBar(BuildContext context){
  Flushbar(
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