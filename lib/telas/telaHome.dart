//tela inicial
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minervaShort/botoes/botaoDoGrid.dart';
import 'package:minervaShort/telas/telaMed.dart';
import 'package:minervaShort/telas/telaQuest.dart';
import 'package:minervaShort/telas/telaTeoria.dart';
import 'package:minervaShort/widgets/base.dart';
import 'package:minervaShort/widgets/bottomSettingsContainer.dart';
import 'package:minervaShort/widgets/decoracao.dart';
import 'package:minervaShort/widgets/grid.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';
import '../clickChangeNotifier.dart';

class TelaHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    String imagemQuestoes = 'assets/questoes.png' ;
    String imagemTeoria = 'assets/estudo.png';
    String imagemEstatistica = 'assets/estatistica.png';
    if(info.dark)
    {
      imagemQuestoes = 'assets/questoesDark.png';
      imagemTeoria = 'assets/estudoDark.png';
      imagemEstatistica = 'assets/estatisticaDark.png';
    }
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
        title: Center(child: Text('Saúde')),
        elevation: 0.0,
      ),

      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            child: Stack(
              children: <Widget>[
                Decoracao(),
                Grid(
                  filhos: <Widget>[
                    BotaoDoGrid(nome: 'Questões',caminhoImagem: imagemQuestoes , proximaTela: TelaQuest(),),
                    const SizedBox(),
                    const SizedBox(),
                    BotaoDoGrid(nome: 'Teorias',caminhoImagem: imagemTeoria, proximaTela: TelaTeoria(),),
                    BotaoDoGrid(nome: 'Estatistica',caminhoImagem: imagemEstatistica,)
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