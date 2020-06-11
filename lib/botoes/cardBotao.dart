//Card que pode ser precionado. É utilizado na tela das materias para indicar assuntos
import 'package:flutter/material.dart';

class CardBotao extends StatelessWidget{
  final String titulo;
  final String subtitulo;
  final Widget proximaTela;

  CardBotao({@required this.titulo, @required this.subtitulo, this.proximaTela});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
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

      child: Card(
        //color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text('$titulo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text('$subtitulo'),
          ),
        ),
      );
  }
}

