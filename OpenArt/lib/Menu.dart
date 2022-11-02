import 'package:flutter/material.dart';
import 'package:open_art2/Home.dart';
import 'package:open_art2/routes/routes_name.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:open_art2/providers/provider.dart';
import 'package:provider/provider.dart';
import 'components/bar.dart';
import 'components/button.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool _secureText = true;
  final emailControall = TextEditingController();
  final passwordControall = TextEditingController();
  var _passwordError;
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
              Text(
                'About OpenArt \nBlog \nHelp \nContact',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Epilogue',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: theme.appBarTheme.foregroundColor,
                    height: 1.8),
              ),
              const SizedBox(height: 50),
              //150
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(children: [
                          TextFormField(
                            // validator: (String value) {
                            //   if (value.length < 10) {
                            //     return 'Enter at least 4 character';
                            //   } else {
                            //     return null;
                            //   }
                            // },
                            controller: emailControall,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
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
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            // validator: (String value) {
                            //   if (value.length < 7) {
                            //     return 'Enter at least 4 character';
                            //   } else {
                            //     return null;
                            //   }
                            // },
                            obscureText: true,
                            controller: passwordControall,
                            decoration: InputDecoration(
                                // errorText: _passwordError,
                                suffixIcon: IconButton(
                                  color: theme.appBarTheme.foregroundColor,
                                  onPressed: () {
                                    setState(() {
                                      _secureText = !_secureText;
                                    });
                                  },
                                  icon: Icon(_secureText
                                      ? Icons.no_encryption_gmailerrorred
                                      : Icons.remove_red_eye),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                fillColor: theme.appBarTheme.backgroundColor,
                                filled: true,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: theme.appBarTheme.foregroundColor,
                                    fontFamily: 'Epilogue',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                        ]),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              colors: [Color(0xff0038F5), Color(0xff9F03FF)]),
                        ),
                        child: ElevatedButton(
                          onPressed: () async {
                            SharedPreferences sp =
                                await SharedPreferences.getInstance();
                            sp.setString(
                                'Email', emailControall.text.toString());

                            sp.setBool('isLogin', true);

                            // setState(() {
                            //   if (passwordControall.text.length < 7) {
                            //     _passwordError = 'Enter at least 4 character';
                            //   } else {
                            //     _passwordError = null;
                            //   }
                            // });
                            // ignore: use_build_context_synchronously
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Home(),
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
                          child: const Text('Login',
                              style: TextStyle(
                                  fontFamily: 'Epilogue',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFCFCFC))),
                        ),
                      ),
                    ]),
              )
            ])));
  }
}
