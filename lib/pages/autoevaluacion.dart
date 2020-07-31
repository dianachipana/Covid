import 'package:covid/pages/autoevaluacion-view.dart';
import 'package:covid/pages/encuesta-view-uno.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AutoevaluacionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AutoevaluacionPageState();
}

class AutoevaluacionPageState extends State<AutoevaluacionPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Text(
              '¡Nos preocupamos por tu salud!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Text(
              'Si deseas saber si te encuentras en riesgo, responde estas preguntas',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),
              height: 330,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/autoevaluacion-portada-min.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            Center(
              child: GestureDetector(
                  onTap: () {},
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EncuestaVistaUnoPage()),
                        );
                      },
                      color: Colors.purple[700],
                      disabledColor: Theme.of(context).disabledColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        '¡Comenzar!',
                        style: TextStyle(color: Colors.white),
                      ))),
            )
            /*LinearProgressIndicator(
            valueColor: AlwaysStoppedAnimation
          )*/
          ],
        ),
      ),
    );
  }

  /*@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }*/
}
