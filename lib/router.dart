
import 'package:covid/pages/home.dart';
import 'package:covid/pages/login.dart';
import 'package:covid/pages/register.dart';
import 'package:covid/routing_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/undefined.dart';

Route<dynamic> generateRoute(RouteSettings settings) {

  switch (settings.name) {
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
  case RegisterViewRoute:
      return MaterialPageRoute(builder: (context) => RegisterPage());
  case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    default:
      return MaterialPageRoute(builder: (context) => UndefinedView());
  }
 }
