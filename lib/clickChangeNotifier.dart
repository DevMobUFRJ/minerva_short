import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Info with ChangeNotifier{

  bool dark = false;

  ThemeData _tema = ThemeData(
      primaryColor: Colors.teal[400],
      accentColor: Colors.black,
      canvasColor: Colors.white,
      cursorColor: Colors.teal[800],
  );

  ThemeData _temaDark = ThemeData(
    brightness: Brightness.dark,
    accentColor: Colors.white,
    cursorColor: Colors.grey[800],
  );

  ThemeData _temaAtual = ThemeData(
      primaryColor: Colors.teal[400],
      accentColor: Colors.black,
      cursorColor: Colors.teal[800]
  );

  qualTema(){

    if(dark)
    {
      _temaAtual = _temaDark;
      notifyListeners();
    }

    else
    {
      _temaAtual = _tema;
      notifyListeners();
    }

  }

  ThemeData get tema => _temaAtual;

  int _click = 0;

  int get click => _click;

  void incrementClick(){
    _click++;
    notifyListeners();
  }

  void decrementClick(){
    if(_click > 0)
      _click--;
    notifyListeners();
  }

  void zeraClick(){
    _click = 0;
    notifyListeners();
  }
}