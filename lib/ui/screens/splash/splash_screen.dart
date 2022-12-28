import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../routers/fluro_navigator.dart';
import '../../routers/router_generator.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  int _start = 6;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          NavigatorUtils.push(context, RouterGenerator.routeHome);
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return const Scaffold(
      // appBar: appBarCommonV1(context, strTitle: "Splash"),
      body: Center(
        child: FlutterLogo(
          size: 300,
          textColor: Colors.blue,
          style: FlutterLogoStyle.stacked,
        ), //Container
      ),
    );
  }
}
