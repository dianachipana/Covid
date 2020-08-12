import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class RecetaFaseUnoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RecetaFaseUnoPageState();
}

class RecetaFaseUnoPageState extends State<RecetaFaseUnoPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 770,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 330,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/medicamentos-portada.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 300),
                    child: _medicamentos(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _medicamentos() {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(40.0),
            topRight: const Radius.circular(40.0)),
        color: Colors.deepPurpleAccent[400],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Medicamentos",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w800, fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 15, 10),
            child: Column(
              children: <Widget>[
                Text(
                  "Según su respuesta, lo más probable es que se encuentre en la FASE 1 de la enfermedad.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Aquí te mostramos algunos medicamentos que pueden ayudarte a combatir el virus.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 15, 10),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //MEDICAMENTO 1
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 20.0,
                    ),
                    Text(
                      "Paracetamol",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
              decoration: new BoxDecoration(
                color: Colors.deepPurple[900],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.warning,
                    color: Colors.yellowAccent[700],
                    size: 10.0,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                        "Recuerda consultar a tu médico y tomar estos medicamentos con su aprobación. Estos medicamentos pueden tener efectos secundarios graves.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            color: Colors.yellowAccent[700],
                            fontWeight: FontWeight.w400,
                            fontSize: 10)),
                  )
                ],
              )),
          SizedBox(
            height: 35,
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
          )
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
