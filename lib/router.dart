import 'package:covid/pages/autoevaluacion-view.dart';
import 'package:covid/pages/autoevaluacion.dart';
import 'package:covid/pages/components/video_player.dart';
import 'package:covid/pages/components/videos.dart';
import 'package:covid/pages/encuesta-view-cinco.dart';
import 'package:covid/pages/encuesta-view-cuatro.dart';
import 'package:covid/pages/encuesta-view-dies.dart';
import 'package:covid/pages/encuesta-view-dos.dart';
import 'package:covid/pages/encuesta-view-nueve.dart';
import 'package:covid/pages/encuesta-view-ocho.dart';
import 'package:covid/pages/encuesta-view-seis.dart';
import 'package:covid/pages/encuesta-view-siete.dart';
import 'package:covid/pages/encuesta-view-tres.dart';
import 'package:covid/pages/encuesta-view-uno.dart';
import 'package:covid/pages/home.dart';
import 'package:covid/pages/loading.dart';
import 'package:covid/pages/login.dart';
import 'package:covid/pages/preguntas-frecuentes-view.dart';
import 'package:covid/pages/preguntas-frecuentes.dart';
import 'package:covid/pages/protegete-al-salir-view.dart';
import 'package:covid/pages/protegete-al-salir.dart';
import 'package:covid/pages/protegete-en-casa-view.dart';
import 'package:covid/pages/protegete-en-casa.dart';
import 'package:covid/pages/receta-view.dart';
import 'package:covid/pages/register.dart';
import 'package:covid/pages/resultados-positivo.dart';
import 'package:covid/pages/sintomas-view.dart';
import 'package:covid/pages/sintomas.dart';
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

  
    case EncuestaVistaDosViewRoute:
      return MaterialPageRoute( builder: (context) => EncuestaVistaDosPage(obj: settings.arguments));

    case EncuestaVistaTresViewRoute:
      return MaterialPageRoute(builder: (context) => EncuestaVistaTresPage(obj: settings.arguments));

    case EncuestaVistaCuatroViewRoute:
      return MaterialPageRoute(builder: (context) => EncuestaVistaCuatroPage(obj: settings.arguments));

    case EncuestaVistaCincoViewRoute:
      return MaterialPageRoute(builder: (context) => EncuestaVistaCincoPage(obj: settings.arguments));

    case EncuestaVistaSeisViewRoute:
      return MaterialPageRoute(builder: (context) => EncuestaVistaSeisPage(obj: settings.arguments));
    case EncuestaVistaSieteViewRoute:
      return MaterialPageRoute(builder: (context) => EncuestaVistaSietePage(obj: settings.arguments));
    case EncuestaVistaOchoViewRoute:
      return MaterialPageRoute(builder: (context) => EncuestaVistaOchoPage(obj: settings.arguments));
    case EncuestaVistaNueveViewRoute:
      return MaterialPageRoute(builder: (context) => EncuestaVistaNuevePage(obj: settings.arguments));
    case EncuestaVistaDiesViewRoute:
      return MaterialPageRoute(builder: (context) => EncuestaVistaDiesPage(obj: settings.arguments));

    case ResultadosPositivoViewRoute:
      return MaterialPageRoute(builder: (context) => ResultadosPositivoPage(obj: settings.arguments));
    case VideoPlayerViewRoute:
      return MaterialPageRoute(
          builder: (context) => VideoPlayerPage(obj: settings.arguments));
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

    case EncuestaVistaUnoViewRoute:
      return MaterialPageRoute(builder: (context) => EncuestaVistaUnoPage());

    

    case RecetaViewRoute:
      return MaterialPageRoute(builder: (context) => RecetaPage());

    default:
      return MaterialPageRoute(builder: (context) => UndefinedView());
  }
}
