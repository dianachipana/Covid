import 'package:covid/pages/encuesta-medicamentos-uno.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/textfield_widget.dart';

class MedicamentosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MedicamentosPageState();
}

class MedicamentosPageState extends State<MedicamentosPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[700],
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
              'Para poder brindarte un mejor diagnóstico, responde a las siguientes preguntas',
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
                              builder: (context) =>
                                  EncuestaMedicamentosUnoPage()),
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
}
