import 'package:flutter/material.dart';
import 'package:open_art2/components/bottom_row.dart';
import 'package:open_art2/components/button.dart';

import 'components/bar.dart';

class JoinCommunity extends StatefulWidget {
  const JoinCommunity({Key? key}) : super(key: key);

  @override
  State<JoinCommunity> createState() => _JoinCommunityState();
}

class _JoinCommunityState extends State<JoinCommunity> {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            'Join the Community Upvote\nto access creator tools.',
                        style: TextStyle(
                          fontFamily: 'Epilogue',
                          fontSize: 20,
                          height: 1.5,
                          fontWeight: FontWeight.w700,
                          color: theme.appBarTheme.foregroundColor,
                        ),
                        children: [
                          TextSpan(
                            text:
                                '\n\nWith the Community Upvote, artists are encouraged to support other artists and to set the stage for a model of community-led curation that puts power in the hands of creators.',
                            style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: theme.appBarTheme.foregroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Button(text: 'Join Community Upvote'),
                  Image.asset(
                    'images/globe.png',
                    scale: 3,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          'Current number of profiles on the\nCommunity Upvote:',
                      style: TextStyle(
                        fontFamily: 'Epilogue',
                        fontSize: 16,
                        height: 1.4,
                        fontWeight: FontWeight.w400,
                        color: theme.appBarTheme.foregroundColor,
                      ),
                      children: [
                        TextSpan(
                          text: '\n52.000',
                          style: theme.textTheme.headline3,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
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
