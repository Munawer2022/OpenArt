import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_art2/Home.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Menu.dart';
import '../about.dart';
import '../discover_creator.dart';
import '../faq.dart';
import '../favorite.dart';
import '../join_community.dart';
import '../my_profile.dart';
import '../providers/provider.dart';
import '../uploard_artwork.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  bool switchvalue = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loardData();
    nameData();
  }

  String Email = '';
  loardData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    Email = sp.getString('Email') ?? '';
    setState(() {});
  }

  String Name = '';
  nameData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    Name = sp.getString('Name') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // final themeChanger = Provider.of<ThemeChanger>(context);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 40,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  Name.toString(),
                  style: theme.textTheme.subtitle1,
                ),
                Text(Email.toString(),
                    style: TextStyle(
                        height: 1.8,
                        color: theme.appBarTheme.foregroundColor,
                        fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w400,
                        fontSize: 14)),
              ],
            ),
          ),
          const Divider(
            indent: 20,
            endIndent: 20,
            thickness: 0.5,
            color: Color.fromARGB(255, 195, 195, 195),
          ),
          ListTile(
            leading: FaIcon(color: theme.dividerColor, Icons.manage_accounts),
            title: Text(
              'Profile',
              style: TextStyle(
                color: theme.appBarTheme.foregroundColor,
              ),
            ),
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProfile(),
                  ));
            },
          ),
          ListTile(
            leading: FaIcon(color: theme.dividerColor, Icons.home),
            title: Text(
              'Home',
              style: TextStyle(
                color: theme.appBarTheme.foregroundColor,
              ),
            ),
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ));
            },
          ),
          ListTile(
            leading: FaIcon(color: theme.dividerColor, Icons.search),
            title: Text(
              'Discover Creator',
              style: TextStyle(
                color: theme.appBarTheme.foregroundColor,
              ),
            ),
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DiscoverCreator(),
                  ));
            },
          ),
          ListTile(
            leading: FaIcon(color: theme.dividerColor, Icons.upload),
            title: Text(
              'Uploard ArtWork',
              style: TextStyle(
                color: theme.appBarTheme.foregroundColor,
              ),
            ),
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UploardArtWork(),
                  ));
            },
          ),
          ListTile(
            leading: FaIcon(color: theme.dividerColor, Icons.dark_mode),
            title: Text(
              'Dark Mode',
              style: TextStyle(
                color: theme.appBarTheme.foregroundColor,
              ),
            ),
            trailing: Switch(
                value: switchvalue,
                onChanged: (newvalue) {
                  setState(() {
                    switchvalue = newvalue;
                    currentTheme.toggleTheme();
                  });
                }),
            // onTap: () async {
            //   SharedPreferences sp = await SharedPreferences.getInstance();

            //   // Navigator.push(
            //   //     context,
            //   //     MaterialPageRoute(
            //   //       builder: (context) => const Menu(),
            //   //     ));
            // },
          ),
          // ListTile(
          //   leading: FaIcon(Icons.favorite, color: Color(0xff0038F5)),
          //   title: Text('Favorite'),
          //   onTap: () async {
          //     SharedPreferences sp = await SharedPreferences.getInstance();

          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => const Favorite(),
          //         ));
          //   },
          // ),
          ListTile(
            leading: FaIcon(
              Icons.logout,
              color: theme.dividerColor,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                color: theme.appBarTheme.foregroundColor,
              ),
            ),
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Menu(),
                  ));
            },
          ),
          const Divider(
            indent: 20,
            endIndent: 20,
            thickness: 0.5,
            color: Color.fromARGB(255, 195, 195, 195),
          ),
          ListTile(
            leading: FaIcon(
              Icons.group,
              color: theme.dividerColor,
            ),
            title: Text(
              'Join Community',
              style: TextStyle(
                color: theme.appBarTheme.foregroundColor,
              ),
            ),
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const JoinCommunity(),
                  ));
            },
          ),
          ListTile(
            leading: FaIcon(
              Icons.album_outlined,
              color: theme.dividerColor,
            ),
            title: Text(
              'About',
              style: TextStyle(
                color: theme.appBarTheme.foregroundColor,
              ),
            ),
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const About(),
                  ));
            },
          ),
          ListTile(
            leading: FaIcon(
              Icons.question_answer,
              color: theme.dividerColor,
            ),
            title: Text(
              'FQA',
              style: TextStyle(
                color: theme.appBarTheme.foregroundColor,
              ),
            ),
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FAQ(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
