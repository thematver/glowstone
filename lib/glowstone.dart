library glowstone;

import 'package:flutter/material.dart';

class Glowstone extends StatefulWidget {
  ///Something that will be glowing.
  final Widget child;

  const Glowstone({Key? key, required this.child}) : super(key: key);

  @override
  _GlowstoneState createState() => _GlowstoneState();
}

class _GlowstoneState extends State<Glowstone> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
