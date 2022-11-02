import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bar.dart';
import '../components/big_component.dart';
import '../components/bottom_row.dart';

import '../components/outline_button.dart';
import '../components/socialmedia_tages.dart';
import '../components/sold.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
            Stack(clipBehavior: Clip.none, children: [
              Hero(
                tag: 'tag1',
                child: Image.asset(
                  'images/Rectangle 421.png',
                  height: 160,
                  width: 375,
                ),
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
                  backgroundImage: AssetImage('images/Rectangle 422.png'),
                  radius: 60,
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  Center(
                    child: RichText(
                        text: TextSpan(
                      text: 'Kennedy Yanko',
                      style: TextStyle(
                        color: theme.appBarTheme.foregroundColor,
                        fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                            text: '\n52fs5ge5g45sov45a',
                            style: TextStyle(
                                color: theme.appBarTheme.foregroundColor,
                                fontFamily: 'Epilogue',
                                fontWeight: FontWeight.w500,
                                fontSize: 13)),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(
                            text: '23',
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
                            text: '23',
                            style: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                            ),
                            children: [
                              TextSpan(
                                  text: '\nFollowers',
                                  style: theme.textTheme.headline6),
                            ],
                          )),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isFollow = !isFollow;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              height: 40,
                              width: 112,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: theme.shadowColor,
                                      spreadRadius: 5,
                                      blurRadius: 20,
                                      offset: const Offset(0, 5))
                                ],
                                color: isFollow
                                    ? theme.appBarTheme.backgroundColor
                                    : const Color(0xff0038F5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  isFollow ? 'Follow' : 'Unfollow',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: isFollow
                                        ? theme.appBarTheme.foregroundColor
                                        : const Color(0xffFCFCFC),
                                    fontFamily: 'Epilogue',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Text(
                    'Followed by',
                    style: theme.textTheme.headline4,
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    clipBehavior: Clip.none,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Color(0xffFFFFFF),
                        radius: 15,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundImage: AssetImage('images/Emoji.png'),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffFFFFFF),
                          radius: 15,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundImage:
                                AssetImage('images/Rectangle6.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffFFFFFF),
                          radius: 15,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundImage: AssetImage('images/Emoji2.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 75,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffFFFFFF),
                          radius: 15,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundImage:
                                AssetImage('images/Rectangle10.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffFFFFFF),
                          radius: 15,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundImage:
                                AssetImage('images/Rectangle3.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 28),
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
                  const SizedBox(height: 20),
                  Text(
                    'Member since  2021',
                    style: theme.textTheme.headline5,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      SocialMediaTages(
                        height: 40,
                        widht: 128,
                        icon: FontAwesomeIcons.twitter,
                        text: '@openart',
                      ),
                      SizedBox(width: 7),
                      SocialMediaTages(
                        height: 40,
                        widht: 193,
                        icon: FontAwesomeIcons.instagram,
                        text: '@openart.design',
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const SocialMediaTages(
                    height: 40,
                    widht: 193,
                    icon: FontAwesomeIcons.link,
                    text: 'Openart.design',
                  ),
                  const SizedBox(height: 40),
                  RichText(
                      text: TextSpan(
                    text: 'Created',
                    style: theme.textTheme.headline3,
                    children: [
                      TextSpan(
                        text: '     Collected',
                        style: theme.textTheme.headline3,
                      ),
                    ],
                  )),
                  const SizedBox(height: 24),
                  const BigComponent(
                    image: 'images/Rectangle3.png',
                    text: 'Silent',
                  ),
                  const Sold(),
                  const SizedBox(height: 24),
                  const BigComponent(
                    image: 'images/Rectangle1.png',
                    text: 'George',
                  ),
                  const Sold(),
                  const SizedBox(height: 24),
                  const BigComponent(
                    image: 'images/Rectangle5.png',
                    text: 'Ocean',
                  ),
                  const Sold(),
                  const SizedBox(height: 30),
                  const OutlineButton(
                    text: '+ Load more',
                  ),
                  const SizedBox(height: 100),
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
