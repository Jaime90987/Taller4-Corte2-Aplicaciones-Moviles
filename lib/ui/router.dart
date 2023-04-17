import 'package:flutter/material.dart';
import 'package:login_app/ui/pages/login/login_page.dart';
import 'package:login_app/ui/pages/info/info_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const LoginPage(),
  '/info': (context) => const InfoPage(),
};
