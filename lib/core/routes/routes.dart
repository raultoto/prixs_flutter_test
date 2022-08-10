import 'package:flutter/material.dart';


class Routes {
  Routes._();
  static const String home = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String bookDetail = '/bookDetail';

  static final routes = <String, WidgetBuilder>{
    // bookDetail: (context) => BookDetail(),
  };
}