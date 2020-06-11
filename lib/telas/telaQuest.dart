
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:minervaShort/widgets/base.dart';
import 'dart:math' as math;

import 'file:///D:/Desktop/Programacao/Flutter/minervaShort/lib/widgets/expansiveis/expansivelAnatomia.dart';
import 'package:minervaShort/widgets/expansiveis/expansivelEmbriologia.dart';

class _SliverDelegate extends SliverPersistentHeaderDelegate {

  _SliverDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

    return SizedBox.expand(child: child,);
  }

  @override

  double get maxExtent => math.max(maxHeight, minHeight);

  @override

  double get minExtent => minHeight;

  @override
  bool shouldRebuild(_SliverDelegate oldDelegate) {    
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}



class TelaQuest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    bool expanded = false;
    return Base(
        tituloAppBar: Text('Questoes'),
        widget: ListView(
          children: <Widget>[
            ExpansivelAnatomia(),
            ExpansivelEmbriologia(),
          ],
        )
    );
  }
}
