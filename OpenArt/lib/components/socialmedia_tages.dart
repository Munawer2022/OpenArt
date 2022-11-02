import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaTages extends StatelessWidget {
  final double height;
  final double widht;
  final dynamic icon;
  final dynamic text;
  const SocialMediaTages(
      {Key? key,
      required this.height,
      required this.widht,
      required this.icon,
      required this.text})
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
        borderRadius: BorderRadius.circular(33),
        //shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            FaIcon(
              icon,
              size: 20,
              color: theme.appBarTheme.foregroundColor,
            ),
            SizedBox(width: 5),
            Text(
              text,
              style: theme.textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
