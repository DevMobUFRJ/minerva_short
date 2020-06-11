//Base de todas as telas que serão criadas
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../clickChangeNotifier.dart';

class Base extends StatefulWidget{
  final Widget widget;
  final Widget tituloAppBar;
  final Widget leading;
  FloatingActionButton floatingActionButton;
  Base({this.widget, this.tituloAppBar,this.leading, this.floatingActionButton});

  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> {

  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    return Scaffold(

      appBar: AppBar(
        leading: widget.leading,
        title: widget.tituloAppBar,
        //backgroundColor: Colors.deepPurple.shade600,
      ),
      body: widget.widget,
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
