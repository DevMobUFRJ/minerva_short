import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:minervaShort/botoes/botaoDoGrid.dart';
import 'package:minervaShort/telas/telaHome.dart';
import 'package:minervaShort/widgets/bottomSettingsContainer.dart';
import 'package:minervaShort/widgets/decoracao.dart';
import 'package:minervaShort/widgets/grid.dart';

class TelaDashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings, color: Theme.of(context).cursorColor,),
            onPressed: (){
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(),
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder:(context){
                    return BottomSettingsContainer();
                  }
              );
            },
          )
        ],
        title: Center(child: Text('Minerva Anki')),
        elevation: 0.0,
      ),

      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            child: Stack(
              children: <Widget>[
              ClipPath(
                clipper: ArcClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  height: 200,
                ),
            ),
                Grid(
                  filhos: <Widget>[
                    BotaoDoGrid(caminhoImagem: 'assets/saude.png', nome: 'Area da saúde', proximaTela: TelaHome(),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
