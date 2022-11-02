import 'dart:async';

import 'package:flutter/material.dart';
import 'package:open_art2/components/big_component.dart';
import 'package:open_art2/components/bottom_row.dart';
import 'package:open_art2/process_two.dart';

import 'components/bar.dart';

class Process extends StatefulWidget {
  const Process({Key? key}) : super(key: key);

  @override
  State<Process> createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 10), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProcessTwo(),
          ));
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
            child: Column(children: [
              Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        'images/server.png',
                        scale: 3,
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Your NFT is being minted...',
                          style: TextStyle(
                            fontFamily: 'Epilogue',
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: theme.appBarTheme.foregroundColor,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  '\n\nOre you MIT is minted on the Ethereum\nblockchain, you will not be abile to edit ',
                              style: TextStyle(
                                fontFamily: 'Epilogue',
                                height: 1.3,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: theme.appBarTheme.foregroundColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const BigComponent(
                        image: 'images/Rectangle3.png',
                        text: 'Silent Color',
                      ),
                      const SizedBox(height: 12),
                      Center(
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
                              text: 'Reserve price',
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
                      const SizedBox(height: 150),
                      const BottomRow()
                    ]),
              ),
            ])));
  }
}
