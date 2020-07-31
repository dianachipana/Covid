import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'encuesta-view-cuatro.dart';

class EncuestaVistaTresPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => EncuestaViewTresPageState();
}

class EncuestaViewTresPageState extends State<EncuestaVistaTresPage> {
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
              child: Column(
                children: <Widget>[
                  Container(
                    child: Container(
                      width: 250,
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
                          Text('PREGUNTA 3',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 250,
              height: 250,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      EncuestaVistaCuatroPage()),
                            );
                          },
                          disabledColor: Theme.of(context).disabledColor,
                          shape: new RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Text(
                            'Respuesta 1',
                          ))),
                  Expanded(
                      child: (MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      EncuestaVistaCuatroPage()),
                            );
                          },
                          disabledColor: Theme.of(context).disabledColor,
                          shape: new RoundedRectangleBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Text(
                            'Respuesta 2',
                          )))),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
