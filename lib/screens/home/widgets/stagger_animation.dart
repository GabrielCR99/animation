import 'package:flutter/material.dart';

import 'animated_list_view.dart';
import 'fade_container.dart';
import 'home_top.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;
  final Animation<double> growContainer;
  final Animation<EdgeInsets> listSlidePos;
  final Animation<Color> fadeAnim;

  StaggerAnimation({@required this.controller})
      : growContainer = CurvedAnimation(parent: controller, curve: Curves.ease),
        listSlidePos = EdgeInsetsTween(
                begin: EdgeInsets.only(bottom: 0),
                end: EdgeInsets.only(bottom: 80))
            .animate(CurvedAnimation(
                parent: controller,
                curve: Interval(0.325, 0.8, curve: Curves.ease))),
        fadeAnim = ColorTween(
                begin: const Color.fromRGBO(247, 64, 106, 1.0),
                end: const Color.fromRGBO(247, 64, 106, 0.0))
            .animate(CurvedAnimation(
                parent: controller, curve: Curves.easeInOutCubic));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Stack(
      children: <Widget>[
        ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            HomeTop(
              containerGrow: growContainer,
            ),
            AnimatedListView(
              slidePos: listSlidePos,
            ),
          ],
        ),
        IgnorePointer(
          child: FadeContainer(
            fadeAnim: fadeAnim,
          ),
        ),
      ],
    );
  }
}
