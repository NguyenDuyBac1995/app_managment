import 'package:flutter/material.dart';
import 'package:managment/model/data_bundle.dart';
import 'package:managment/ui/screens/home/SecondScreen.dart';
import '../screens/home/ThirdScreen.dart';
import '../screens/home/home_screen.dart';
import '../screens/splash/splash_screen.dart';
import '404.dart';

class RouterGenerator {
  //* Routing list
  static const routeHome = "/home";
  static const routeSplash = "/splash";
  static const routeScreenTwo = "/SecondScreen";
  static const routeScreenThree = "/ThirdScreen";


  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case routeSplash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case routeHome:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case routeScreenThree:
        return MaterialPageRoute(builder: (_) =>  thirdScreen());
      case routeScreenTwo:
        if(args is DataBundle){
          return MaterialPageRoute(builder: (_) =>  SecondScreen(
            test: args.test,
            test2 : args.test2,
            test3 : args.test3,
            // test4 : args.test4,
            // test5 : args.test5
          ));
        }
        break;
      default:
        break;
    }
    return MaterialPageRoute(builder: (_) => WidgetNotFound());
  }
}
