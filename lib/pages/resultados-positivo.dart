import 'package:covid/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultadosPositivoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ResultadosPositivoPageState();
}

class ResultadosPositivoPageState extends State<ResultadosPositivoPage> {
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
              "POSITIVO",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.red[900],
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
                  "Usted presenta síntomas de COVID-19, es necesario realizarse el test de laboratorio. ",
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
                  "Le brindamos los ubicación de los establecimientos más cercanos:",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ],
            )),

            //container 01
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 5),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 330,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                  color: Colors.blueGrey[50],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Centro 01',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16)),
                    Text('Lugar',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Text('(01) 123456',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Text('Abierto ahora',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12))
                  ],
                ),
              ),
            ),

            //container 2
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 330,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                  color: Colors.blueGrey[50],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Centro 02',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16)),
                    Text('Lugar',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Text('(01) 123456',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Row(
                      children: <Widget>[
                        Text('Cierra pronto:',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.orange)),
                        Text('12: 00 hrs.',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12))
                      ],
                    )
                  ],
                ),
              ),
            ),

            //container 3
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 330,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                  color: Colors.blueGrey[50],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Centro 03',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16)),
                    Text('Lugar',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Text('(01) 123456',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Row(
                      children: <Widget>[
                        Text('Cerrado ',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.red)),
                        Text('Horario de apertura: lunes 08: 00 hrs.',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12))
                      ],
                    )
                  ],
                ),
              ),
            ),

            //container 04
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 330,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                  color: Colors.blueGrey[50],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Centro 04',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16)),
                    Text('Lugar',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Text('(01) 123456',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Text('Abierto ahora',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 12))
                  ],
                ),
              ),
            ),

            //container 5
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 330,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                  color: Colors.blueGrey[50],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Centro 05',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16)),
                    Text('Lugar',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Text('(01) 123456',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Row(
                      children: <Widget>[
                        Text('Cierra pronto:',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.orange)),
                        Text('12: 00 hrs.',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12))
                      ],
                    )
                  ],
                ),
              ),
            ),

            //container 6
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                width: 330,
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                  color: Colors.blueGrey[50],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Centro 06',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 16)),
                    Text('Lugar',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Text('(01) 123456',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                    Row(
                      children: <Widget>[
                        Text('Cerrado ',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.red)),
                        Text('Horario de apertura: lunes 08: 00 hrs.',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 12))
                      ],
                    )
                  ],
                ),
              ),
            ),

            Center(
              child: SizedBox(
                height: 20,
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
