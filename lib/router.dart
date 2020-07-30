import 'package:covid/pages/autoevaluacion-view.dart';
import 'package:covid/pages/autoevaluacion.dart';
import 'package:covid/pages/components/videos.dart';
import 'package:covid/pages/home.dart';
import 'package:covid/pages/loading.dart';
import 'package:covid/pages/login.dart';
import 'package:covid/pages/preguntas-frecuentes-view.dart';
import 'package:covid/pages/preguntas-frecuentes.dart';
import 'package:covid/pages/protegete-al-salir-view.dart';
import 'package:covid/pages/protegete-al-salir.dart';
import 'package:covid/pages/protegete-en-casa-view.dart';
import 'package:covid/pages/protegete-en-casa.dart';
import 'package:covid/pages/register.dart';
import 'package:covid/pages/sintomas-view.dart';
import 'package:covid/pages/sintomas.dart';
import 'package:covid/routing_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/undefined.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  Map obj;
  switch (settings.name) {
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());

    case RegisterViewRoute:
      return MaterialPageRoute(builder: (context) => RegisterPage());

    case ProtegeteAlSalirViewRoute:
      return MaterialPageRoute(builder: (context) => ProtegeteAlSalirPage());

    case ProtegeteAlSalirVistaViewRoute:
      return MaterialPageRoute(builder: (context) => ProtegeteAlSalirVista());

    case SintomasViewRoute:
      return MaterialPageRoute(builder: (context) => SintomasPage());

    case SintomasVistaViewRoute:
      return MaterialPageRoute(builder: (context) => SintomasVista());

    case ProtegeteEnCasaViewRoute:
      return MaterialPageRoute(builder: (context) => ProtegeteEnCasaPage());

    case ProtegeteEnCasaVistaViewRoute:
      return MaterialPageRoute(builder: (context) => ProtegeteEnCasaVista());

    case VideosViewRoute:
      return MaterialPageRoute(builder: (context) => VideosPage());

    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());

    case PreguntasFrecuentesViewRoute:
      return MaterialPageRoute(builder: (context) => PreguntasFrecuentesPage());

    case PreguntasFrecuentesVistaViewRoute:
      return MaterialPageRoute(
          builder: (context) => PreguntasFrecuentesVista());

    case LoadingViewRoute:
      return MaterialPageRoute(builder: (context) => LoadingPage());

    case AutoevaluacionViewRoute:
      return MaterialPageRoute(builder: (context) => AutoevaluacionPage());

    case AutoevaluacionVistaViewRoute:
      return MaterialPageRoute(builder: (context) => AutoevalacionVista());

    default:
      return MaterialPageRoute(builder: (context) => UndefinedView());
  }
}
