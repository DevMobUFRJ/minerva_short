import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../clickChangeNotifier.dart';

class BottomSettingsContainer extends StatefulWidget {

  @override
  _BottomSettingsContainerState createState() => _BottomSettingsContainerState();
}

class _BottomSettingsContainerState extends State<BottomSettingsContainer> {
  bool valor = false;

  @override
  Widget build(BuildContext context) {
    var info = Provider.of<Info>(context);
    return Container(
        height: 200,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            border: Border.all(color: Theme.of(context).primaryColor, width: 2.0),
            borderRadius: BorderRadius.circular(8.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Modo escuro'),
                Switch(
                  activeColor: Theme.of(context).primaryColor,
                  value: info.dark,
                  onChanged: (verdadeiro){
                    if(info.dark == false)
                      {
                        setState(() {
                          info.dark = true;
                        });
                      }
                    else
                    {
                      setState(() {
                        info.dark = false;
                      });
                    }
                    info.qualTema();
                  }
                )
              ],
            ),
          ],
        )
    );
  }
}
