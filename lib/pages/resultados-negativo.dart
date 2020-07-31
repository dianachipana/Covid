import 'package:covid/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultadosNegativoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ResultadosNegativoPageState();
}

class ResultadosNegativoPageState extends State<ResultadosNegativoPage> {
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
                margin: const EdgeInsets.fromLTRB(20, 70, 0, 50),
                child: Text(
                  "Resultados",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30),
                )),
            Center(
                child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    width: 330,
                    height: 120,
                    decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0),
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.pie_chart,
                              color: Colors.orange,
                              size: 60.0,
                            ),
                            Text(
                              "90%",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.pie_chart,
                              color: Colors.blue[600],
                              size: 60.0,
                            ),
                            Text(
                              "75%",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.pie_chart,
                              color: Colors.greenAccent[400],
                              size: 60.0,
                            ),
                            Text(
                              "92%",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.pie_chart,
                              color: Colors.cyan[300],
                              size: 60.0,
                            ),
                            Text(
                              "55%",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ))),
            Center(
                child: Text(
              "NEGATIVO",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff2a2798),
                  fontWeight: FontWeight.w800,
                  fontSize: 24),
            )),
            Center(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Como actualmente usted no presenta síntomas de COVID-19, usted no requiere realizarse el test de laboratorio. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Sin embargo es importante mantener los cuidados de higiene y evitar aglomeraciones.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: new BoxDecoration(
                      color: Colors.blueGrey[100],
                    ),
                    child: Text(
                      "Si desarrollas algún síntoma de COVID-19, vuelva a realizar esta autoevaluación.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ))
              ],
            )),
            Center(
              child: SizedBox(
                height: 40,
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
                      color: Colors.indigo[900],
                      disabledColor: Theme.of(context).disabledColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: Text(
                        'Listo',
                        style: TextStyle(color: Colors.white),
                      ))),
            )
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
