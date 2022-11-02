import 'dart:async';

import 'package:flutter/material.dart';
import 'package:open_art2/components/bottom_row.dart';
import 'package:open_art2/providers/provider.dart';

import 'package:open_art2/routes/routes_name.dart';
import 'package:provider/provider.dart';

import 'components/bar.dart';
import 'components/big_component.dart';
import 'components/button.dart';
import 'components/outline_button.dart';
import 'components/sold.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //hello

  //
  //if you wanna to display you email or password or age so, then do this
  // var hourse = '14h', minute = '30m', second = '25s';
  // int hourses = 14, minutes = 30, seconds = 25;

  //
  //if you wanna to display you email or password or age so, then do this

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   startTimer();
  // }

  // void startTimer() {
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     _startSecond();
  //   });
  // }

  // void _startSecond() {
  //   setState(() {
  //     if (seconds > 0) {
  //       seconds--;
  //       second = seconds.toString();
  //       if (second.length == 1) {
  //         second = '0' + second;
  //       }
  //     } else {
  //       _startMinute();
  //     }
  //   });
  // }

  // void _startMinute() {
  //   setState(() {
  //     if (minutes > 0) {
  //       seconds = 59;
  //       second = '59';
  //       minutes--;
  //       minute = minutes.toString();
  //       if (minute.length == 1) {
  //         minute = '0' + minute;
  //       }
  //     } else {
  //       _startHourse();
  //     }
  //   });
  // }

  // void _startHourse() {
  //   setState(() {
  //     seconds = 59;
  //     minutes = 59;
  //     second = '59';
  //     minute = '59';
  //     hourses--;
  //     hourse = hourses.toString();
  //     if (hourse.length == 1) {
  //       hourse = '0' + hourse;
  //     }
  //   });
  // }
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
    print('home');
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
        foregroundColor: theme.appBarTheme.foregroundColor,
      ),
      endDrawer: Drawer(
        backgroundColor: theme.appBarTheme.backgroundColor,
        child: Bar(),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Stack(
          children: [
            // SafeArea(
            //     child: Padding(
            //   padding: const EdgeInsets.only(left: 250),
            //   child: Image.asset('images/HomeBackgroundImage.png'),
            // )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Discover, collect, and sell',
                        style: TextStyle(
                            color: theme.appBarTheme.foregroundColor,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                        children: [
                          TextSpan(
                              text: '\nYour Digital Art',
                              style: TextStyle(
                                  height: 1.5,
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 32)),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: theme.appBarTheme.surfaceTintColor,
                        filled: true,
                        border: InputBorder.none,
                        //prefixIcon
                        prefixIcon: Icon(
                          color: theme.appBarTheme.foregroundColor,
                          Icons.search,
                          size: 20,
                        ),
                        //suffixIcon: Icon(Icons.align_vertical_bottom),
                        hintText: 'Search items, collections, and accounts',
                        hintStyle: TextStyle(
                            color: theme.appBarTheme.foregroundColor,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.placebitOne);
                  },
                  child: BigComponent(
                    image: 'images/Rectangle1.png',
                    text: 'Silent Wave',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Reserve Price',
                      style: TextStyle(
                          color: theme.appBarTheme.foregroundColor,
                          fontFamily: 'Epilogue',
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                      children: [
                        TextSpan(
                            text: ' 1.50 ETH',
                            style: TextStyle(
                                color: theme.appBarTheme.foregroundColor,
                                fontFamily: 'Epilogue',
                                fontWeight: FontWeight.w700,
                                fontSize: 24)),
                        TextSpan(
                            text: ' \$2,683.73',
                            style: TextStyle(
                                color: theme.appBarTheme.foregroundColor,
                                fontFamily: 'Epilogue',
                                fontWeight: FontWeight.w700,
                                fontSize: 16)),
                      ],
                    ),
                  ),
                ),
                //dialog
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
                            backgroundColor: theme.appBarTheme.backgroundColor,
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: 'Your bid',
                                            style: theme.textTheme.headline1,
                                            children: [
                                              TextSpan(
                                                text: '\nEnter bid',
                                                style:
                                                    theme.textTheme.headline2,
                                              ),
                                              TextSpan(
                                                text: '\nYour balance',
                                                style:
                                                    theme.textTheme.headline2,
                                              ),
                                              TextSpan(
                                                text: '\nService fee',
                                                style:
                                                    theme.textTheme.headline2,
                                              ),
                                              TextSpan(
                                                text: '\nTotal',
                                                style:
                                                    theme.textTheme.headline2,
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
                                            style: theme.textTheme.headline1,
                                          ),
                                          TextSpan(
                                            text: '\n4.568 ETH',
                                            style: theme.textTheme.headline1,
                                          ),
                                          TextSpan(
                                            text: '\n0.001 ETH',
                                            style: theme.textTheme.headline1,
                                          ),
                                          TextSpan(
                                            text: '\n0.001 ETH',
                                            style: theme.textTheme.headline1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 30),
                                    const Button(
                                      text: 'Place a bid',
                                    ),
                                    const SizedBox(height: 10),
                                    const OutlineButton(text: 'View artwork'),
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
                            MaterialStateProperty.all(const Size(330, 56)),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        // padding: MaterialStateProperty.all(
                        //     const EdgeInsets.symmetric(horizontal: 110, vertical: 18)),
                      ),
                      child: Text('Place a bid',
                          style: const TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFCFCFC))),
                    ),
                  ),
                ),
                // const Button(
                //   text: 'Place a bid',
                // ),
                const SizedBox(height: 12),
                const OutlineButton(text: 'View artwork'),
                const SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 9,
                            width: 9,
                            decoration: const BoxDecoration(
                              color: Color(0xffFD0025),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Live actions',
                            style: theme.textTheme.headline3,
                          ),
                        ],
                      ),
                      // const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // gradient: const LinearGradient(
                          //     colors: [Color(0xff0038F5), Color(0xff9F03FF)]),
                        ),
                        child: OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: Color(0xff555555))),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                              theme.appBarTheme.backgroundColor,
                            ),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 3)),
                          ),
                          child: Text('View all',
                              style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.soldproductone);
                  },
                  child: BigComponent(
                    image: 'images/Rectangle2.png',
                    text: 'Silent Color',
                  ),
                ),
                const SizedBox(height: 12),
                const Sold(),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.soldproducttwo);
                  },
                  child: BigComponent(
                    image: 'images/Rectangle3.png',
                    text: 'Grorge',
                  ),
                ),
                const SizedBox(height: 12),
                const Sold(),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.currentbitone);
                  },
                  child: BigComponent(
                    image: 'images/Rectangle4.png',
                    text: 'Mirror',
                  ),
                ),
                const SizedBox(height: 12),

                //timer
                Consumer<TimerProvider>(
                  builder: ((context, value, child) {
                    return Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 64,
                        width: 320,
                        decoration: BoxDecoration(
                          color: theme.appBarTheme.backgroundColor,
                          borderRadius: BorderRadius.circular(51),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 7,
                                    width: 7,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff009846),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Current bid',
                                      style: theme.textTheme.headline5,
                                      children: [
                                        TextSpan(
                                          text: '\n0.50 ETH',
                                          style: TextStyle(
                                            fontFamily: 'Epilogue',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: theme
                                                .appBarTheme.foregroundColor,
                                            height: 1.4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Ending in\n',
                                  style: theme.textTheme.headline5,
                                  children: [
                                    TextSpan(
                                      text:
                                          "${value.hourse}:${value.minute}:${value.second}",
                                      style: TextStyle(
                                        fontFamily: 'Epilogue',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            theme.appBarTheme.foregroundColor,
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.currentbittwo);
                  },
                  child: BigComponent(
                    image: 'images/Rectangle5.png',
                    text: 'Mirror',
                  ),
                ),
                const SizedBox(height: 12),
                //timer
                Consumer<TimerProvider>(
                  builder: ((context, value, child) {
                    return Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 64,
                        width: 320,
                        decoration: BoxDecoration(
                          color: theme.appBarTheme.backgroundColor,
                          borderRadius: BorderRadius.circular(51),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 7,
                                    width: 7,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff009846),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Current bid',
                                      style: theme.textTheme.headline5,
                                      children: [
                                        TextSpan(
                                          text: '\n0.50 ETH',
                                          style: TextStyle(
                                            fontFamily: 'Epilogue',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: theme
                                                .appBarTheme.foregroundColor,
                                            height: 1.4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Ending in\n',
                                  style: theme.textTheme.headline5,
                                  children: [
                                    TextSpan(
                                      text:
                                          "${value.hourse}:${value.minute}:${value.second}",
                                      style: TextStyle(
                                        fontFamily: 'Epilogue',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            theme.appBarTheme.foregroundColor,
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.currentbitthree);
                  },
                  child: BigComponent(
                    image: 'images/Rectangle6.png',
                    text: 'Shedd Aquarium',
                  ),
                ),
                const SizedBox(height: 12),
                //timer
                Consumer<TimerProvider>(
                  builder: ((context, value, child) {
                    return Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 64,
                        width: 320,
                        decoration: BoxDecoration(
                          color: theme.appBarTheme.backgroundColor,
                          borderRadius: BorderRadius.circular(51),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 7,
                                    width: 7,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff009846),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Current bid',
                                      style: theme.textTheme.headline5,
                                      children: [
                                        TextSpan(
                                          text: '\n0.50 ETH',
                                          style: TextStyle(
                                            fontFamily: 'Epilogue',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: theme
                                                .appBarTheme.foregroundColor,
                                            height: 1.4,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                  text: 'Ending in\n',
                                  style: theme.textTheme.headline5,
                                  children: [
                                    TextSpan(
                                      text:
                                          "${value.hourse}:${value.minute}:${value.second}",
                                      style: TextStyle(
                                        fontFamily: 'Epilogue',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            theme.appBarTheme.foregroundColor,
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 80),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/Emoji.png',
                            width: 18,
                            height: 18,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Hot bid',
                            style: theme.textTheme.headline3,
                          ),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     InkWell(
                      //       onTap: () {},
                      //       child: Icon(Icons.arrow_back),
                      //     ),
                      //     const SizedBox(width: 36),
                      //     InkWell(
                      //       onTap: () {},
                      //       child: Icon(Icons.arrow_forward),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('images/Rectangle7.png',
                                    height: 300, width: 254),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Container(
                                          margin: EdgeInsets.only(top: 225),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/Rectangle2.png')),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 225),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'images/Rectangle4.png')),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 225),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'images/Rectangle5.png')),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Inside Kings Cross',
                                      style: theme.textTheme.headline6,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 35,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(34),
                                        color:
                                            theme.appBarTheme.backgroundColor,
                                      ),
                                      child: Text(
                                        '2.3 ETH',
                                        style: theme.textTheme.headline6,
                                      ),
                                      //0xffDCDCDC
                                    ),
                                  ],
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Highest bid',
                                    style: TextStyle(
                                      fontFamily: 'Epilogue',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: theme.appBarTheme.foregroundColor,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' 1.00ETH',
                                        style: TextStyle(
                                          fontFamily: 'Epilogue',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              theme.appBarTheme.foregroundColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset('images/Rectangle5.png',
                                    height: 300, width: 254),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15),
                                        child: Container(
                                          margin: EdgeInsets.only(top: 225),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: const CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'images/Rectangle2.png')),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 225),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'images/Rectangle4.png')),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 225),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.white,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'images/Rectangle5.png')),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Inside Kings Cross',
                                      style: theme.textTheme.headline6,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 35,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(34),
                                        color:
                                            theme.appBarTheme.backgroundColor,
                                      ),
                                      child: Text(
                                        '2.3 ETH',
                                        style: theme.textTheme.headline6,
                                      ),
                                      //0xffDCDCDC
                                    ),
                                  ],
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: 'Highest bid',
                                    style: TextStyle(
                                      fontFamily: 'Epilogue',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: theme.appBarTheme.foregroundColor,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' 1.00ETH',
                                        style: TextStyle(
                                          fontFamily: 'Epilogue',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              theme.appBarTheme.foregroundColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'images/Emoji2.png',
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Hot Collection',
                        style: theme.textTheme.headline3,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 16, bottom: 16),
                          child: Image(
                            image: AssetImage('images/Rectangle8.png'),
                            height: 190,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 16, bottom: 16, right: 16),
                          child: Image(
                            image: AssetImage('images/Rectangle9.png'),
                            height: 190,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Image(
                            image: AssetImage('images/Rectangle10.png'),
                            height: 190,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 16, right: 16),
                          child: Image(
                            image: AssetImage('images/Rectangle11.png'),
                            height: 190,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Water and sunflower',
                        style: theme.textTheme.subtitle1,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 89,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34),
                          // border: Border.all(
                          //   color: Color(0xffDCDCDC),
                          // ),
                          color: theme.appBarTheme.backgroundColor,
                        ),
                        child: Text(
                          '30 items',
                          style: theme.textTheme.headline6,
                        ),
                        //0xffDCDCDC
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 36,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('images/Rectangle2.png'))),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'By Rodion Kutsaev',
                            style: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          // gradient: const LinearGradient(
                          //     colors: [Color(0xff0038F5), Color(0xff9F03FF)]),
                        ),
                        child: OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: Color(0xff555555))),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(
                                theme.appBarTheme.backgroundColor),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 5)),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: theme.appBarTheme.foregroundColor,
                              ),
                              SizedBox(width: 9),
                              Text(
                                'Follow',
                                style: theme.textTheme.headline5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const OutlineButton(text: 'View more collection'),
                const SizedBox(height: 20),
                const Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                  color: Color.fromARGB(255, 195, 195, 195),
                ),
                const SizedBox(height: 80),
                const BottomRow(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
