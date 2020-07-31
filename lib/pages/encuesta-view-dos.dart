import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'encuesta-view-tres.dart';

class EncuestaVistaDosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EncuestaViewDosPageState();
}

class EncuestaViewDosPageState extends State<EncuestaVistaDosPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 135, 0, 0),
                  child: Container(
                    width: 330,
                    height: 50,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0)),
                      color: Colors.indigo,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2.0, 0.0),
                          blurRadius: 5.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('PREGUNTA 2',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            )),
                      ],
                    ),
                  ),
                ),

                //segundo elemento
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: 330,
                  height: 200,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.circular(40.0),
                        bottomRight: const Radius.circular(40.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2.0, 0.0),
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        EncuestaVistaTresPage()),
                              );
                            },
                            disabledColor: Theme.of(context).disabledColor,
                            child: Icon(
                              Icons.sentiment_very_dissatisfied,
                              color: Colors.red,
                              size: 30.0,
                            ),
                          ),
                          Text("Muy insatisfecho",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12))
                        ],
                      )),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EncuestaVistaTresPage()),
                                );
                              },
                              disabledColor: Theme.of(context).disabledColor,
                              child: Icon(
                                Icons.sentiment_dissatisfied,
                                color: Colors.orange[900],
                                size: 30.0,
                              ),
                            ),
                            Text("Insatisfecho",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff2a2798),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12))
                          ])),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EncuestaVistaTresPage()),
                                );
                              },
                              disabledColor: Theme.of(context).disabledColor,
                              child: Icon(
                                Icons.sentiment_neutral,
                                color: Colors.yellow[900],
                                size: 30.0,
                              ),
                            ),
                            Text("Neutral",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff2a2798),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12))
                          ])),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EncuestaVistaTresPage()),
                                );
                              },
                              disabledColor: Theme.of(context).disabledColor,
                              child: Icon(
                                Icons.sentiment_satisfied,
                                color: Colors.green,
                                size: 30.0,
                              ),
                            ),
                            Text("Satisfecho",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff2a2798),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12))
                          ])),
                      Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EncuestaVistaTresPage()),
                                );
                              },
                              disabledColor: Theme.of(context).disabledColor,
                              child: Icon(
                                Icons.sentiment_very_satisfied,
                                color: Colors.greenAccent[700],
                                size: 30.0,
                              ),
                            ),
                            Text("Muy satisfecho",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff2a2798),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12))
                          ])),
                    ],
                  ),
                )
              ],
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
