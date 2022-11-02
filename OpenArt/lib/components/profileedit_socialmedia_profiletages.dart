import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileEditSocialMediaProfileTages extends StatefulWidget {
  const ProfileEditSocialMediaProfileTages({Key? key}) : super(key: key);

  @override
  State<ProfileEditSocialMediaProfileTages> createState() =>
      _ProfileEditSocialMediaProfileTagesState();
}

class _ProfileEditSocialMediaProfileTagesState
    extends State<ProfileEditSocialMediaProfileTages> {
  @override
  Widget build(BuildContext context) {
    final List<String> name = <String>[
      'Website',
      'Discord',
      'Instagram',
      'Youtube Channel',
      'Facebook',
      'Tiktok',
    ];
    final List<dynamic> icon = <dynamic>[
      FontAwesomeIcons.link,
      FontAwesomeIcons.discord,
      FontAwesomeIcons.instagram,
      FontAwesomeIcons.youtube,
      FontAwesomeIcons.facebook,
      FontAwesomeIcons.tiktok,
    ];
    final theme = Theme.of(context);
    return Container(
      height: 460,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: theme.appBarTheme.backgroundColor,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(340, 56)),
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    // padding: MaterialStateProperty.all(
                    //     const EdgeInsets.symmetric(horizontal: 110, vertical: 18)),
                  ),
                  child: Row(
                    children: [
                      FaIcon(
                        icon[index],
                        size: 20,
                        color: theme.appBarTheme.foregroundColor,
                      ),
                      const SizedBox(width: 15),
                      Text(
                        name[index],
                        style: TextStyle(
                          fontFamily: 'Epilogue',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: theme.appBarTheme.foregroundColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
