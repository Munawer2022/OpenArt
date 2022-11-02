import 'package:flutter/material.dart';
import 'package:open_art2/components/bottom_row.dart';

import 'components/bar.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          theme.brightness == Brightness.light
              ? 'images/Logo.png'
              : 'images/Logo3.png',
          width: 120,
          height: 120,
        ),
        
      ),
      
      body: SingleChildScrollView(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Frequently asked questions',
                      style: theme.textTheme.subtitle1,
                      children: [
                        TextSpan(
                          text:
                              '\n\nJoin our community now to get free updates and also alot of freebies are waiting for you or',
                          style: TextStyle(
                            fontFamily: 'Epilogue',
                            fontSize: 16,
                            height: 1.4,
                            fontWeight: FontWeight.w400,
                            color: theme.appBarTheme.foregroundColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
            const BottomRow(),
          ],
        ),
      ),
    );
  }
}
