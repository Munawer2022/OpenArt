import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  const OutlineButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(330, 56)),
          side:
              MaterialStateProperty.all(BorderSide(color: theme.primaryColor)),
          elevation: MaterialStateProperty.all(0),
          backgroundColor:
              MaterialStateProperty.all(theme.appBarTheme.backgroundColor),
          // padding: MaterialStateProperty.all(
          //     const EdgeInsets.symmetric(horizontal: 100, vertical: 18)),
        ),
        child: Text(
          text,
          style: theme.textTheme.subtitle1,
        ),
      ),
    );
  }
}
