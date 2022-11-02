import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/bar.dart';
import 'components/bottom_row.dart';

import 'components/profileedit_socialmedia_profiletages.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../my_profile.dart';

class MyProfileEdit extends StatefulWidget {
  const MyProfileEdit({Key? key}) : super(key: key);

  @override
  State<MyProfileEdit> createState() => _MyProfileEditState();
}

class _MyProfileEditState extends State<MyProfileEdit> {
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

  final nameControall = TextEditingController();
  final usernameControall = TextEditingController();
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
                horizontal: 16,
              ),
              child: Center(
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
                    const SizedBox(height: 40),
                    Text(
                      'Enter your details',
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: nameControall,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0)),
                          fillColor: theme.appBarTheme.backgroundColor,
                          filled: true,
                          hintText: 'Name',
                          hintStyle: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: usernameControall,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0)),
                          fillColor: theme.appBarTheme.backgroundColor,
                          filled: true,
                          hintText: 'User Name',
                          hintStyle: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Enter your email',
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0)),
                          fillColor: theme.appBarTheme.backgroundColor,
                          filled: true,
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Add your email address to receive notifications about your activity on Foundation. This will not be shown on your profile.',
                      style: TextStyle(
                        color: theme.appBarTheme.foregroundColor,
                        fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Enter your bio',
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      minLines: 1,
                      maxLines: 7,
                      decoration: InputDecoration(
                          hintMaxLines: 4,
                          //contentPadding: const EdgeInsets.only(bottom: 155),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8.0)),
                          fillColor: theme.appBarTheme.backgroundColor,
                          filled: true,
                          hintText: 'Enter tour bio here',
                          hintStyle: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Upload a profile image.',
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 168,
                      width: 343,
                      decoration: BoxDecoration(
                          color: theme.appBarTheme.backgroundColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              color: theme.appBarTheme.foregroundColor,
                              Icons.image_outlined,
                              size: 24,
                            ),
                            const SizedBox(height: 20),
                            RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'Drop and drop or',
                                  style: theme.textTheme.headline6,
                                  children: [
                                    TextSpan(
                                        text: ' browse',
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Color(0xff555555),
                                            color: theme
                                                .appBarTheme.foregroundColor,
                                            fontFamily: 'Epilogue',
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16)),
                                    TextSpan(
                                      text: ' a file',
                                      style: theme.textTheme.headline6,
                                    ),
                                    TextSpan(
                                        text:
                                            '\n\nRecommended size: JPG, PNG, GIF\n(1500x1500px, Max 10mb)',
                                        style: TextStyle(
                                            color: theme
                                                .appBarTheme.foregroundColor,
                                            fontFamily: 'Epilogue',
                                            fontWeight: FontWeight.w500,
                                            height: 1.5,
                                            fontSize: 13)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Verify your profile',
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Show the Foundation community that your profile is authentic.',
                      style: TextStyle(
                        color: theme.appBarTheme.foregroundColor,
                        fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(330, 56)),
                          side: MaterialStateProperty.all(
                              BorderSide(color: theme.primaryColor)),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                            theme.appBarTheme.backgroundColor,
                          ),
                          // padding: MaterialStateProperty.all(
                          //     const EdgeInsets.symmetric(horizontal: 100, vertical: 18)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.twitter),
                              SizedBox(width: 10),
                              Text(
                                'Verify via Twitter',
                                style: theme.textTheme.subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(330, 56)),
                          side: MaterialStateProperty.all(
                              BorderSide(color: theme.primaryColor)),
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(
                              theme.appBarTheme.backgroundColor),
                          // padding: MaterialStateProperty.all(
                          //     const EdgeInsets.symmetric(horizontal: 100, vertical: 18)),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.instagram,
                                color: Color(0xff8a3ab9),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Verify via Instagram',
                                style: theme.textTheme.subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Add links to your social\nmedia profiles.',
                      style: TextStyle(
                        color: theme.appBarTheme.foregroundColor,
                        height: 1.4,
                        fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const ProfileEditSocialMediaProfileTages(),
                    const SizedBox(height: 25),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              colors: [Color(0xff0038F5), Color(0xff9F03FF)]),
                        ),
                        child: ElevatedButton(
                          onPressed: () async {
                            SharedPreferences sp =
                                await SharedPreferences.getInstance();
                            sp.setString('Name', nameControall.text.toString());

                            SharedPreferences username =
                                await SharedPreferences.getInstance();
                            sp.setString(
                                'UserName', usernameControall.text.toString());

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyProfile(),
                                ));
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
                          child: Text('Save',
                              style: const TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFCFCFC))),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                      color: Color.fromARGB(255, 195, 195, 195),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
            const BottomRow(),
          ],
        ),
      ),
    );
  }
}
