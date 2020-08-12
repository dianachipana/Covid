import 'package:covid/pages/encuesta-medicamentos-dos.dart';
import 'package:covid/pages/receta-fase-cero.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'encuesta-view-siete.dart';

class EncuestaMedicamentosUnoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EncuestaMedicamentosUnoPageState();
}

class EncuestaMedicamentosUnoPageState
    extends State<EncuestaMedicamentosUnoPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent[400],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: Column(children: <Widget>[
                Center(
                  child: Container(
                    height: screenHeight * 0.35,
                    width: screenWidth * 0.80,
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.all(
                          Radius.circular(30.0),
                        )),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Text('Pregunta 1 de 2',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.purple[700])),
                          Padding(
                              padding:
                                  EdgeInsets.only(right: 20, left: 20, top: 20),
                              child: Text(
                                  '¿Está presentando alguno de estos síntomas?',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black))),
                          Padding(
                              padding:
                                  EdgeInsets.only(right: 20, left: 20, top: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                    Text('Fiebre')
                                  ]),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                    Text('Tos seca')
                                  ]),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                    Text('Dificultad para respirar')
                                  ]),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                    Text('Dolor de garganta')
                                  ]),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                    Text('Pérdida del sentido del olfato')
                                  ]),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.radio_button_unchecked,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                    Text('Dolores musculares')
                                  ]),
                                ],
                              )),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 100, 30, 0),
                  child: Row(
                    children: <Widget>[
                      MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      EncuestaMedicamentosDosPage()),
                            );
                          },
                          disabledColor: Theme.of(context).disabledColor,
                          color: Colors.white,
                          minWidth: 100,
                          height: 40,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Text(
                            'Si',
                          )),
                      SizedBox(width: 30),
                      MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RecetaFaseCeroPage()),
                            );
                          },
                          disabledColor: Theme.of(context).disabledColor,
                          color: Colors.white,
                          minWidth: 100,
                          height: 40,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Text(
                            'No',
                          )),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
