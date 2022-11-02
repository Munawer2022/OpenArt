import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Sold extends StatelessWidget {
  const Sold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Container(
          alignment: Alignment.center,
          height: 64,
          width: 320,
          decoration: BoxDecoration(
            color: theme.appBarTheme.backgroundColor,
            borderRadius: BorderRadius.circular(51),
          ),
          child: RichText(
            text: TextSpan(
              text: 'Sold For',
              style: theme.textTheme.headline4,
              children: [
                TextSpan(
                  text: ' 2.00 ETH',
                  style: theme.textTheme.headline3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
