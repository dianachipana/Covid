import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class RecetaFaseCeroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RecetaFaseCeroPageState();
}

class RecetaFaseCeroPageState extends State<RecetaFaseCeroPage> {
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
              '¡Felicidades!',
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
              'No necesitas medicarte',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
            Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 15, 20),
                child: Text(
                  'Recuerda seguir tomando todas las precausiones necesarias para evitar el contagio.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 14),
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
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      color: Colors.purple[700],
                      disabledColor: Theme.of(context).disabledColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        'Listo',
                        style: TextStyle(color: Colors.white),
                      ))),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
