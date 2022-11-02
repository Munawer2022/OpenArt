import 'dart:async';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'Home.dart';
import 'Menu.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(const Duration(seconds: 5), () {
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => const Menu(),
    //       ));
    // });
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false;

    if (isLogin) {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ));
      });
    } else {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Menu(),
            ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2A2A2E),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'images/Logo2.png',
                    scale: 4,
                  ),
                  const Text(
                    'Free NFTs UI Kit',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: 'Epilogue',
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(
                strokeWidth: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
