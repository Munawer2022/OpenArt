import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_art2/components/bottom_row.dart';
import 'package:open_art2/routes/routes_name.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'components/bar.dart';
import 'components/outline_button.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameData();
    usernameData();
  }

  String Name = '';
  nameData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    Name = sp.getString('Name') ?? '';
    setState(() {});
  }

  String UserName = '';
  usernameData() async {
    SharedPreferences username = await SharedPreferences.getInstance();
    UserName = username.getString('UserName') ?? '';
    setState(() {});
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
        foregroundColor: theme.appBarTheme.foregroundColor,
      ),
      endDrawer: Drawer(
        backgroundColor: theme.appBarTheme.backgroundColor,
        child: Bar(),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Image.asset(
                'images/Cover.png',
                height: 160,
                width: 375,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(40, 40)),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(CircleBorder()),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffFCFCFC)),
                      ),
                      child: Icon(
                        Icons.more_horiz,
                        size: 20,
                        color: Color(0xff333333),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(40, 40)),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(CircleBorder()),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffFCFCFC)),
                      ),
                      child: Icon(
                        Icons.upload,
                        size: 20,
                        color: Color(0xff333333),
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                left: 120,
                bottom: -50,
                child: CircleAvatar(
                  // backgroundImage: AssetImage('images/Rectangle 425.png'),
                  radius: 60,
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60),
                    Center(
                      child: Text(
                        Name.toString(),
                        style: TextStyle(
                          color: theme.appBarTheme.foregroundColor,
                          fontFamily: 'Epilogue',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Center(
                      child: Text(UserName.toString(),
                          style: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w500,
                              fontSize: 13)),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(
                            text: '0',
                            style: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                            ),
                            children: [
                              TextSpan(
                                text: '\nFollowing',
                                style: theme.textTheme.headline6,
                              ),
                            ],
                          )),
                          RichText(
                              text: TextSpan(
                            text: '0',
                            style: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                            ),
                            children: [
                              TextSpan(
                                text: '\nFollowers',
                                style: theme.textTheme.headline6,
                              ),
                            ],
                          )),
                          Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: theme.shadowColor,
                                      spreadRadius: 5,
                                      blurRadius: 20,
                                      offset: const Offset(0, 5))
                                ],
                                color: theme.appBarTheme.backgroundColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // if (value.followbutton.contains(index)) {
                                  //   value.removeItem(index);
                                  // } else {
                                  //   value.addItem(index);
                                  // }

                                  // setState(() {});
                                  Navigator.pushNamed(
                                      context, RouteName.myprofileedit);
                                },
                                style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(
                                      const Size(77, 40)),
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(
                                    theme.appBarTheme.backgroundColor,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: FaIcon(
                                    Icons.mode_edit_outline_outlined,
                                    size: 24,
                                    color: theme.appBarTheme.foregroundColor,
                                  ),
                                ),
                              ))
                        ]),
                  ),
                  Text(
                    'Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…',
                    style: TextStyle(
                      color: theme.appBarTheme.foregroundColor,
                      fontFamily: 'Epilogue',
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    textAlign: TextAlign.start,
                    'Member since  2022',
                    style: theme.textTheme.headline5,
                  ),
                  const SizedBox(height: 70),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Your collection is empty.',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                        'Start building your collection by placing bids on artwork.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.4,
                            color: theme.appBarTheme.foregroundColor,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w400,
                            fontSize: 16)),
                  ),
                  const SizedBox(height: 50),
                  const OutlineButton(text: 'Explore OpenArt'),
                  const SizedBox(height: 140),
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
