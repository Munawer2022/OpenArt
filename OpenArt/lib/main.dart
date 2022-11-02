import 'package:flutter/material.dart';
import 'package:open_art2/providers/provider.dart';
import 'package:open_art2/routes/routes.dart';
import 'package:open_art2/routes/routes_name.dart';
import 'package:open_art2/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CustomTheme(),
          ),
          ChangeNotifierProvider(
            create: (_) => TimerProvider(),
          ),
        ],
        child: Builder(builder: (BuildContext context) {
          // final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            theme: CustomTheme.lightTheme,
            darkTheme: CustomTheme.darkTheme,
            themeMode: currentTheme.currentTheme,
            // themeMode: themeChanger.themeMode,
            // theme: ThemeData(
            //   brightness: Brightness.light,
            //   primarySwatch: Colors.blue,
            // ),
            // darkTheme: ThemeData(
            //   brightness: Brightness.dark
            // ),
            debugShowCheckedModeBanner: false,
            initialRoute: RouteName.splashscreen,
            onGenerateRoute: Routes.generateRoute,
            home: SplashScreen(),
          );
        }));
  }
}
