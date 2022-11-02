import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_art2/components/bottom_row.dart';
import 'package:open_art2/components/outline_button.dart';

import 'components/bar.dart';
import 'components/big_component.dart';

class ProfileCreator extends StatefulWidget {
  const ProfileCreator({Key? key}) : super(key: key);

  @override
  State<ProfileCreator> createState() => _ProfileCreatorState();
}

class _ProfileCreatorState extends State<ProfileCreator> {
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
          const SizedBox(height: 50),
          Stack(clipBehavior: Clip.none, children: [
            Image.asset(
              'images/Cover.png',
              height: 160,
              width: 375,
            ),
            const Positioned(
              left: 120,
              bottom: -50,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/Rectangle7.png'),
                radius: 60,
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 60),
              Center(
                child: RichText(
                    text: const TextSpan(
                  text: 'Gift Habeshaw',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontFamily: 'Epilogue',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                        text: '\n52fs5ge5g45sov45a',
                        style: TextStyle(
                            color: Color(0xff555555),
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ],
                )),
              ),
              const SizedBox(height: 20),
              Container(
                height: 292,
                width: 327,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(32),
                  //shape: BoxShape.circle,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const FaIcon(Icons.mail_outlined, size: 20),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            'Contact@OpenArt.design',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(const Size(48, 48)),
                              elevation: MaterialStateProperty.all(0),
                              shape: MaterialStateProperty.all(
                                  const CircleBorder()),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffF8F8F8)),
                            ),
                            child: const Icon(
                              Icons.mode_edit_outline_outlined,
                              size: 24,
                              color: Color(0xff555555),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: const [
                          FaIcon(Icons.link, size: 20),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Linked',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xff333333),
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          FaIcon(Icons.phone, size: 20),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            '(+60) 264 859 62',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          FaIcon(Icons.web_stories, size: 20),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'OpenArt.design',
                            style: TextStyle(
                              color: Color(0xff333333),
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all(
                                    const Size(130, 36)),
                                side: MaterialStateProperty.all(
                                    const BorderSide(color: Color(0xff333333))),
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                // padding: MaterialStateProperty.all(
                                //     const EdgeInsets.symmetric(horizontal: 100, vertical: 18)),
                              ),
                              child: Row(
                                children: const [
                                  FaIcon(
                                    Icons.favorite_border,
                                    size: 24,
                                    color: Color(0xff333333),
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  Text('Follow',
                                      style: TextStyle(
                                          color: Color(0xff222222),
                                          fontFamily: 'Epilogue',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Row(
                                children: [
                                  OutlinedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(40, 40)),
                                      side: MaterialStateProperty.all(
                                          const BorderSide(
                                              color: Color(0xff333333))),
                                      elevation: MaterialStateProperty.all(0),
                                      shape: MaterialStateProperty.all(
                                          const CircleBorder()),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                    ),
                                    child: const Icon(
                                      Icons.more_horiz,
                                      size: 20,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                  OutlinedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      minimumSize: MaterialStateProperty.all(
                                          const Size(40, 40)),
                                      side: MaterialStateProperty.all(
                                          const BorderSide(
                                              color: Color(0xff333333))),
                                      elevation: MaterialStateProperty.all(0),
                                      shape: MaterialStateProperty.all(
                                          const CircleBorder()),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                    ),
                                    child: const Icon(
                                      Icons.upload,
                                      size: 20,
                                      color: Color(0xff333333),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      const Text(
                        'Member since  2021',
                        style: TextStyle(
                          color: Color(0xff555555),
                          fontFamily: 'Epilogue',
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              const Text(
                'My Items',
                style: TextStyle(
                  color: Color(0xff222222),
                  fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 26),
              const BigComponent(
                image: 'images/Rectangle6.png',
                text: 'Shedd Aquarium',
              ),
              const SizedBox(height: 12),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 64,
                  width: 320,
                  decoration: BoxDecoration(
                    color: const Color(0xffFCFCFC),
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
                              text: const TextSpan(
                                text: 'Current bid',
                                style: TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff555555),
                                ),
                                children: [
                                  TextSpan(
                                    text: '\n0.50 ETH',
                                    style: TextStyle(
                                      fontFamily: 'Epilogue',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff222222),
                                      height: 1.4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Ending in',
                            style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff555555),
                            ),
                            children: [
                              TextSpan(
                                text: '\n12h 30m 25s',
                                style: TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff222222),
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
              ),
              const SizedBox(height: 40),
              const BigComponent(
                image: 'images/Rectangle5.png',
                text: 'Shedd Aquarium',
              ),
              const SizedBox(height: 12),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 64,
                  width: 320,
                  decoration: BoxDecoration(
                    color: const Color(0xffFCFCFC),
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
                              text: const TextSpan(
                                text: 'Current bid',
                                style: TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff555555),
                                ),
                                children: [
                                  TextSpan(
                                    text: '\n0.50 ETH',
                                    style: TextStyle(
                                      fontFamily: 'Epilogue',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff222222),
                                      height: 1.4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Ending in',
                            style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff555555),
                            ),
                            children: [
                              TextSpan(
                                text: '\n12h 30m 25s',
                                style: TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff222222),
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
              ),
              const SizedBox(height: 40),
              const BigComponent(
                image: 'images/Rectangle3.png',
                text: 'Shedd Aquarium',
              ),
              const SizedBox(height: 12),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 64,
                  width: 320,
                  decoration: BoxDecoration(
                    color: const Color(0xffFCFCFC),
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
                              text: const TextSpan(
                                text: 'Current bid',
                                style: TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff555555),
                                ),
                                children: [
                                  TextSpan(
                                    text: '\n0.50 ETH',
                                    style: TextStyle(
                                      fontFamily: 'Epilogue',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff222222),
                                      height: 1.4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        RichText(
                          text: const TextSpan(
                            text: 'Ending in',
                            style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff555555),
                            ),
                            children: [
                              TextSpan(
                                text: '\n12h 30m 25s',
                                style: TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff222222),
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
              ),
              const SizedBox(height: 40),
              const SizedBox(height: 50),
              const OutlineButton(text: 'Load more'),
              const SizedBox(height: 120),
            ]),
          ),
          const BottomRow(),
        ]),
      ),
    );
  }
}
