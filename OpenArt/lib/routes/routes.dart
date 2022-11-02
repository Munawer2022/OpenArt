import 'package:flutter/material.dart';
import 'package:open_art2/products/currentbit_one.dart';
import 'package:open_art2/products/soldproduct_one.dart';
import 'package:open_art2/products/soldproduct_two.dart';

import '../Home.dart';
import '../Menu.dart';
import '../about.dart';
import '../discover_creator.dart';
import '../faq.dart';
import '../favorite.dart';
import '../join_community.dart';
import '../my_profile.dart';
import '../myprofile_edit.dart';
import '../process.dart';
import '../products/currentbit_three.dart';
import '../products/currentbit_two.dart';
import '../products/placebit_one.dart';
import '../products/user_profile2.dart';
import '../products/user_profile3.dart';
import '../set_price.dart';
import '../splash_screen.dart';
import '../uploard_artwork.dart';
import '../products/user_profile1.dart';
import 'routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.menu:
        return MaterialPageRoute(builder: (Context) => Menu());

      case RouteName.home:
        return MaterialPageRoute(builder: (Context) => Home());

      case RouteName.soldproductone:
        return MaterialPageRoute(builder: (Context) => SoldProductOne());

      case RouteName.soldproducttwo:
        return MaterialPageRoute(builder: (Context) => SoldProductTwo());

      case RouteName.placebitOne:
        return MaterialPageRoute(builder: (Context) => PlaceBitOne());

      case RouteName.currentbitone:
        return MaterialPageRoute(builder: (Context) => CurrentBitOne());

      case RouteName.currentbittwo:
        return MaterialPageRoute(builder: (Context) => CurrentBitTwo());

      case RouteName.currentbitthree:
        return MaterialPageRoute(builder: (Context) => CurrentBitThree());

      case RouteName.myprofileedit:
        return MaterialPageRoute(builder: (Context) => MyProfileEdit());

      case RouteName.myprofile:
        return MaterialPageRoute(builder: (Context) => MyProfile());

      case RouteName.discovercreator:
        return MaterialPageRoute(builder: (Context) => DiscoverCreator());

        case RouteName.splashscreen:
        return MaterialPageRoute(builder: (Context) => SplashScreen());

        case RouteName.favorite:
        return MaterialPageRoute(builder: (Context) => Favorite());

        case RouteName.joincommunity:
        return MaterialPageRoute(builder: (Context) => JoinCommunity());

        case RouteName.about:
        return MaterialPageRoute(builder: (Context) => About());

        case RouteName.faq:
        return MaterialPageRoute(builder: (Context) => FAQ());

        case RouteName.userprofile:
        return MaterialPageRoute(builder: (Context) => UserProfile());

        case RouteName.uploardartwork:
        return MaterialPageRoute(builder: (Context) => UploardArtWork());

        case RouteName.setprice:
        return MaterialPageRoute(builder: (Context) => SetPrice());

        case RouteName.process:
        return MaterialPageRoute(builder: (Context) => Process());

        case RouteName.userprofile2:
        return MaterialPageRoute(builder: (Context) => UserProfile2());

        case RouteName.userprofile3:
        return MaterialPageRoute(builder: (Context) => UserProfile3());

      default:
        return MaterialPageRoute(
          builder: (Context) {
            return const Scaffold(
              body: Center(child: Text('NO ROUTE DEFINE')),
            );
          },
        );
    }
    ;
  }
}
