library glowstone;

import 'package:flutter/material.dart';

class Glowstone extends StatefulWidget {
  ///Something that will be glowing.
  final Widget child;

  ///Glow color
  final Color color;

  ///Speed of glowing
  final int velocity;

  ///Radius of glowing
  final double radius;

  ///Beginning Radius of glowing
  final double beginRadius;

  ///Radius of Blur
  final double blurRadius;

  ///Box Shape of the glow
  final BoxShape boxShape;

  const Glowstone({
    Key? key,
    required this.child,
    this.color = Colors.yellow,
    this.velocity = 2,
    this.radius = 20.0,
    this.beginRadius = 0.0,
    this.blurRadius = 150.0,
    this.boxShape = BoxShape.circle,
  }) : super(key: key);

  @override
  _GlowstoneState createState() => _GlowstoneState();
}

class _GlowstoneState extends State<Glowstone> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation _animation;

  @override
  void initState() {
    int duration = 5000 ~/ widget.velocity;
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: duration));
    _animation = Tween(begin: widget.beginRadius, end: widget.radius).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((state) {
        if (state == AnimationStatus.completed) _controller.reverse();
        if (state == AnimationStatus.dismissed) _controller.forward();
      });

    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
              child: widget.child,
              decoration: BoxDecoration(
                shape: widget.boxShape,
                boxShadow: [
                  BoxShadow(
                    color: widget.color,
                    blurRadius: widget.blurRadius,
                    spreadRadius: _animation.value,
                  )
                ],
              ));
        });
  }
}
