import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveBuilder(
      {required this.mobile,
      required this.tablet,
      required this.desktop,
      super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 1000) {
        return desktop;
      } else if (constraints.maxWidth >= 600) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
