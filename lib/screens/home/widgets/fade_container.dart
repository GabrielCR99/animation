import 'package:flutter/material.dart';

class FadeContainer extends StatelessWidget {
  final Animation<Color> fadeAnim;

  FadeContainer({this.fadeAnim});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'fadeTag',
      child: Container(
        decoration: BoxDecoration(color: fadeAnim.value),
      ),
    );
  }
}
