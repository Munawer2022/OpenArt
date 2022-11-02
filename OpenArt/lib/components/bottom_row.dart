import 'package:flutter/material.dart';

import 'button.dart';
import 'outline_button.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        const Center(
          child: Image(
            image: AssetImage('images/Logo.png'),
            height: 50,
            width: 180,
          ),
        ),
        const SizedBox(height: 5),
        Center(
          child: RichText(
            text: TextSpan(
              text: 'The',
              style: TextStyle(
                fontFamily: 'Epilogue',
                fontWeight: FontWeight.w200,
                fontSize: 25,
                color: theme.appBarTheme.foregroundColor,
              ),
              children: [
                TextSpan(
                    text: ' New',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: theme.appBarTheme.foregroundColor,
                    )),
                TextSpan(
                    text: ' Creative',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: theme.appBarTheme.foregroundColor,
                    )),
                TextSpan(
                    text: ' Economy',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: theme.appBarTheme.foregroundColor,
                    )),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Button(text: 'Earn now'),
        const SizedBox(height: 12),
        const OutlineButton(text: 'Discover more'),
        const SizedBox(height: 80),
        Container(
          height: 310,
          width: 377,
          decoration: const BoxDecoration(
            color: Color(0xff222222),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Instagram',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Twitter',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Discord',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Blog',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 35, right: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'About',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Community Guidelines',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Terms of Services',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Privacy',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Careers',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Help',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF8F8F8)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Color(0xffF8F8F8),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '© 2021 Openart',
                      style: TextStyle(
                          fontFamily: 'Epilogue',
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF8F8F8)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
