import 'package:flutter/material.dart';

import 'ui/routers/router_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App management 12312313 3612837821737127 12312313',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "OpenSan",
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: RouterGenerator.routeSplash,
        onGenerateRoute: RouterGenerator.generateRoute);
  }
}
