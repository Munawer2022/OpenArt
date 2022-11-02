import 'package:flutter/material.dart';
import 'package:open_art2/components/circle_shadowbox.dart';

import '../components/activitysold_pageone.dart';
import '../components/bar.dart';
import '../components/bottom_row.dart';
import '../components/circle_rows.dart';
import '../components/rectangle_shadowbox.dart';

class SoldProductTwo extends StatefulWidget {
  const SoldProductTwo({Key? key}) : super(key: key);

  @override
  State<SoldProductTwo> createState() => _SoldProductTwoState();
}

class _SoldProductTwoState extends State<SoldProductTwo> {
  bool isFollow = true;
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
              'images/Rectangle3.png',
              height: 427,
              width: 327,
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Silent Color',
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
                height: 142,
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
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 24, bottom: 24, left: 20),
                            child: RichText(
                              text: TextSpan(
                                text: 'Sold for',
                                style: theme.textTheme.headline4,
                                children: [
                                  TextSpan(
                                    text: ' 2.00 ETH',
                                    style: theme.textTheme.headline3,
                                  ),
                                  TextSpan(
                                    text: ' \$2,683.73',
                                    style: theme.textTheme.headline6,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 7),
                          Image.asset('images/Emoji2.png', scale: 20),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Text(
                              'Owner by ',
                              style: theme.textTheme.headline4,
                            ),
                            Container(
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
                                color: theme.backgroundColor,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: const BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xff0038F5),
                                            Color(0xff9F03FF)
                                          ]),
                                          shape: BoxShape.circle),
                                      child: const Center(
                                        child: Text(
                                          'D',
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
                                      '@david',
                                      style: theme.textTheme.headline6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
            const ActivitySoldPageone(),
            const SizedBox(height: 68),
            const BottomRow(),
          ],
        ),
      ),
    );
  }
}
