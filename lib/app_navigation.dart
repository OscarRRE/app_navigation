import 'package:app_navigation/error_page.dart';
import 'package:app_navigation/home_page.dart';
import 'package:app_navigation/profile_page.dart';
import 'package:app_navigation/services_page.dart';
import 'package:app_navigation/team_page.dart';
import 'package:flutter/material.dart';

class AppNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'profile': (BuildContext context) => ProfilePage(),
        'services': (BuildContext context) => ServicesPage(),
        'team': (BuildContext context) => TeamPage(),
        'home': (BuildContext context) => HomePage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext builder) => ErrorPage());
      },
    );
  }
}