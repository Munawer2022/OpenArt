import 'dart:async';

import 'package:flutter/material.dart';
import 'package:open_art2/components/activitycurrent_pagethree.dart';
import 'package:open_art2/components/circle_shadowbox.dart';
import 'package:provider/provider.dart';

import '../components/bar.dart';
import '../components/bottom_row.dart';
import '../components/button.dart';
import '../components/circle_rows.dart';
import '../components/outline_button.dart';
import '../components/rectangle_shadowbox.dart';
import '../providers/provider.dart';

class CurrentBitThree extends StatefulWidget {
  const CurrentBitThree({Key? key}) : super(key: key);

  @override
  State<CurrentBitThree> createState() => _CurrentBitThreeState();
}

class _CurrentBitThreeState extends State<CurrentBitThree> {
  bool isFollow = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final timerProvider = Provider.of<TimerProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      timerProvider.startSecond();
    });
  }

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
              'images/Rectangle6.png',
              height: 427,
              width: 327,
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mirror',
                    style: theme.textTheme.headline3,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFollow = !isFollow;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
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
                            isFollow ? Icons.favorite : Icons.favorite_outline,
                            color: isFollow
                                ? theme.appBarTheme.shadowColor
                                : theme.appBarTheme.foregroundColor,
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      CircleShadowBox(
                          height: 40, widht: 40, icon: Icons.download),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 40,
                width: 147,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: theme.shadowColor,
                        spreadRadius: 1,
                        blurRadius: 15,
                        offset: const Offset(0, 10))
                  ],
                  color: theme.appBarTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xffFF9C00), Color(0xffFFDB03)]),
                            shape: BoxShape.circle),
                        child: const Center(
                          child: Text(
                            'H',
                            style: TextStyle(
                              color: Color(0xffFCFCFC),
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '@openart',
                        style: theme.textTheme.headline6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Text(
                'Together with my design team, we designed this futuristic Cyberyacht concept artwork. We wanted to create something that has not been created yet, so we started to collect ideas of how we imagine the Cyberyacht could look like in the future.',
                style: TextStyle(
                  color: theme.appBarTheme.foregroundColor,
                  fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  height: 1.5,
                ),
              ),
            ),
            const CircleRows(),
            SizedBox(height: 10),
            const RectangleShadowBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Container(
                height: 292,
                width: 327,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: theme.shadowColor,
                        spreadRadius: 5,
                        blurRadius: 25,
                        offset: const Offset(0, 0))
                  ],
                  color: theme.appBarTheme.backgroundColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer<TimerProvider>(builder: ((context, value, child) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: 24, bottom: 24, left: 20, right: 20),
                        child: RichText(
                          text: TextSpan(
                            text: 'Current Bid',
                            style: theme.textTheme.headline4,
                            children: [
                              TextSpan(
                                  text: '\n0.50 ETH',
                                  style: TextStyle(
                                      color: theme.appBarTheme.foregroundColor,
                                      fontFamily: 'Epilogue',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                      height: 1.7)),
                              TextSpan(
                                text: ' \$2,683.73',
                                style: theme.textTheme.headline6,
                              ),
                              TextSpan(
                                  text: '\n\nAuction ending in\n',
                                  style: theme.textTheme.headline4),
                              TextSpan(
                                text:
                                    "${value.hourse}    :    ${value.minute}     :   ${value.second}",
                                style: TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: theme.appBarTheme.foregroundColor,
                                  height: 1.6,
                                ),
                              ),
                              TextSpan(
                                  text:
                                      '\nhours             minutes         seconds',
                                  style: TextStyle(
                                    color: theme.appBarTheme.foregroundColor,
                                    fontFamily: 'Epilogue',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    //height: 1.6
                                  )),
                            ],
                          ),
                        ),
                      );
                    })),
                    const SizedBox(height: 15),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              colors: [Color(0xff0038F5), Color(0xff9F03FF)]),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                backgroundColor:
                                    theme.appBarTheme.backgroundColor,
                                title: Text(
                                  'Place a bid',
                                  style: TextStyle(
                                    color: theme.appBarTheme.foregroundColor,
                                  ),
                                ),
                                content: Text(
                                  'You must bid at least 0.825 ETH',
                                  style: TextStyle(
                                    color: theme.appBarTheme.foregroundColor,
                                  ),
                                ),
                                actions: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                text: 'Your bid',
                                                style:
                                                    theme.textTheme.headline1,
                                                children: [
                                                  TextSpan(
                                                    text: '\nEnter bid',
                                                    style: theme
                                                        .textTheme.headline2,
                                                  ),
                                                  TextSpan(
                                                    text: '\nYour balance',
                                                    style: theme
                                                        .textTheme.headline2,
                                                  ),
                                                  TextSpan(
                                                    text: '\nService fee',
                                                    style: theme
                                                        .textTheme.headline2,
                                                  ),
                                                  TextSpan(
                                                    text: '\nTotal',
                                                    style: theme
                                                        .textTheme.headline2,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        RichText(
                                          textAlign: TextAlign.end,
                                          text: TextSpan(
                                            text: '',
                                            style: TextStyle(
                                              fontFamily: 'Epilogue',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff222222),
                                              height: 2,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '\nETH',
                                                style:
                                                    theme.textTheme.headline1,
                                              ),
                                              TextSpan(
                                                text: '\n4.568 ETH',
                                                style:
                                                    theme.textTheme.headline1,
                                              ),
                                              TextSpan(
                                                text: '\n0.001 ETH',
                                                style:
                                                    theme.textTheme.headline1,
                                              ),
                                              TextSpan(
                                                text: '\n0.001 ETH',
                                                style:
                                                    theme.textTheme.headline1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 30),
                                        const Button(
                                          text: 'Place a bid',
                                        ),
                                        const SizedBox(height: 10),
                                        const OutlineButton(
                                            text: 'View artwork'),
                                        const SizedBox(height: 30),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(const Size(285, 40)),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            // padding: MaterialStateProperty.all(
                            //     const EdgeInsets.symmetric(horizontal: 110, vertical: 18)),
                          ),
                          child: const Text('Place a bid',
                              style: TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFCFCFC))),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, right: 16, left: 16),
              child: Text(
                'Activity',
                style: theme.textTheme.headline4,
              ),
            ),
            SizedBox(height: 20),
            const ActivityCurrentPageThree(),
            const SizedBox(height: 80),
            const BottomRow(),
          ],
        ),
      ),
    );
  }
}
