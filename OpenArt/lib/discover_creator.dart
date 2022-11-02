import 'package:flutter/material.dart';
import 'package:open_art2/routes/routes_name.dart';

import 'components/bar.dart';
import 'components/bottom_row.dart';
import 'components/discover_components.dart';

import 'components/outline_button.dart';


class DiscoverCreator extends StatefulWidget {
  const DiscoverCreator({Key? key}) : super(key: key);

  @override
  State<DiscoverCreator> createState() => _DiscoverCreatorState();
}

class _DiscoverCreatorState extends State<DiscoverCreator> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    print('discover creator');
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
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: RichText(
                  textAlign: TextAlign.center,
                  text:  TextSpan(
                    text: 'Discover Creator',
                    style: theme.textTheme.subtitle1,
                    children: [
                      TextSpan(
                          text:
                              '\n\nFollow at least five creators\nto build your feed…',
                          style: TextStyle(
                              height: 1.3,
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w400,
                              fontSize: 16)),
                    ],
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.userprofile);
              },
              child: const DiscoverComponent(
                coverimage: 'images/Rectangle 421.png',
                dpimage: 'images/Rectangle 422.png',
                follow: '23',
                tag: 'tag1',
                subtitletext:
                    'Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…',
                titletext: 'Kennedy Yanko',
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.userprofile2);
              },
              child: const DiscoverComponent(
                coverimage: 'images/Rectangle 424.png',
                dpimage: 'images/Rectangle 423.png',
                follow: '234',
                subtitletext:
                    'Addie Wagenknecht and Aiala Hernando. Documentation of the End of the Worlds.',
                titletext: 'Holly Herndon',
                tag: 'tag2',
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.userprofile3);
              },
              child: const DiscoverComponent(
                coverimage: 'images/Rectangle 425.png',
                dpimage: 'images/Rectangle10.png',
                follow: '56',
                subtitletext:
                    'Audio Composer, Choreographer,Vocalist + Scientist ~ Sigh of My Hand (1/3) is.',
                titletext: 'Addie Wagenknecht',
                tag: 'tag3',
              ),
            ),
            const SizedBox(height: 30),
            const OutlineButton(text: '+ Load more'),
            const SizedBox(height: 120),
            const BottomRow(),
          ],
        ),
      ),
    );
  }
}
