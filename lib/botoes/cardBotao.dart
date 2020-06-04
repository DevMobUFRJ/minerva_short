//Card que pode ser precionado. É utilizado na tela das materias para indicar assuntos
import 'package:flutter/material.dart';

class CardBotao extends StatelessWidget{
  final String titulo;
  final String subtitulo;
  final Widget proximaTela;

  CardBotao({@required this.titulo, @required this.subtitulo, this.proximaTela});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[600],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.blueGrey[600],
        onPressed: (){
          if(proximaTela!=null){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context){
                      return proximaTela;
                    }
                )
            );
          }
        },
        child: ListTile(
          title: Text('$titulo',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text('$subtitulo',
            style: TextStyle(color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}

