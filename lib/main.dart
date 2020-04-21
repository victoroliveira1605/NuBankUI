import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Nubank/pages/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.purple[600],
    ),
  );

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nubank UI',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.purple,
        ),
        home: SplashPage());
  }
}
