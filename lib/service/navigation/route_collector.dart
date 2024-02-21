import 'package:flutter/material.dart';

class RouteCollector {
  static const String sign_in = '/sign_in';
  static const String sign_up = '/sign_up';
  static const String main = '/main';
  static const String about = '/about';
  static const Set<String> simpleRoutes = {
    sign_in,
    sign_up,
    about,
  };
  static const Set<String> specialRoutes = {
    main,
  };
  static Map<String, WidgetBuilder> simpleRouteMap = {
    '/sign_in': (context) => Center(),
    // '/sign_up': (context) => const SignUpPage(),
  };
}