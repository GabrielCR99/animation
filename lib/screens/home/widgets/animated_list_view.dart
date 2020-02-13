import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> slidePos;

  AnimatedListView({@required this.slidePos});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Com o curso da Udemy',
          imageProvider: AssetImage('images/background.jpg'),
          margin: slidePos.value,
        ),
        ListData(
          title: 'Estudar Flutter',
          subtitle: 'Com o curso da Udemy',
          imageProvider: AssetImage('images/background.jpg'),
          margin: slidePos.value * 0,
        ),
      ],
    );
  }
}
