import 'package:flutter/material.dart';

class ExpansivelEmbriologia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: SizedBox(
          height: 40,
          child: Image.asset('assets/embriologia.png')),
      title: Text('Embriologia'),
    );
  }
}
