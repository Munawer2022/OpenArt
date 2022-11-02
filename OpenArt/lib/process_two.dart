import 'package:flutter/material.dart';
import 'package:open_art2/components/big_component.dart';
import 'package:open_art2/components/bottom_row.dart';
import 'package:open_art2/components/outline_button.dart';

import 'Home.dart';
import 'components/bar.dart';

class ProcessTwo extends StatefulWidget {
  const ProcessTwo({Key? key}) : super(key: key);

  @override
  State<ProcessTwo> createState() => _ProcessTwo();
}

class _ProcessTwo extends State<ProcessTwo> {
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
                        'images/security.png',
                        scale: 3,
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Your NFT\nhas been listed!',
                          style: TextStyle(
                            fontFamily: 'Epilogue',
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: theme.appBarTheme.foregroundColor,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  '\n\nYour NFT has been successfully listed\non our marketplace.',
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
                      const SizedBox(height: 40),
                      const OutlineButton(text: 'Share'),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Home(),
                                  ));
                            },
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  const Size(330, 56)),
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              // padding: MaterialStateProperty.all(
                              //     const EdgeInsets.symmetric(horizontal: 110, vertical: 18)),
                            ),
                            child: const Text('Go Home',
                                style: TextStyle(
                                    fontFamily: 'Epilogue',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFCFCFC))),
                          ),
                        ),
                      ),
                      const SizedBox(height: 150),
                      const BottomRow(),
                    ]),
              ),
            ])));
  }
}
