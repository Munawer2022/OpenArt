import 'package:flutter/material.dart';

class CircleShadowBox extends StatelessWidget {
  final double height;
  final double widht;
  final dynamic icon;
  const CircleShadowBox(
      {Key? key, required this.height, required this.widht, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: height,
      width: widht,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: theme.shadowColor,
              spreadRadius: 1,
              blurRadius: 15,
              offset: const Offset(0, 10))
        ],
        color: theme.appBarTheme.backgroundColor,
        //borderRadius: BorderRadius.circular(32),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: theme.appBarTheme.foregroundColor,
      ),
    );
  }
}
