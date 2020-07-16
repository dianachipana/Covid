import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SintomasVista extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SintomasViewState();
}

class SintomasViewState extends State<SintomasVista> {
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
              height: 450,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 450,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/sintoma-vistas.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            //imagen 1
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(10, 15, 10, 5),
              width: 350,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.blue[50]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/sintomas-1.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: 150,
                          child: Text("Dolor de cabeza",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: 150,
                          child: Text(
                              "Permanece en casa el mayor tiempo posible para evitar exponerte al virus.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14))),
                    ],
                  ),
                ],
              ),
            )),

            //imagen 2
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              width: 350,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.blue[50]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/sintomas-2.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: 150,
                          child: Text("Dolor de garganta",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: 150,
                          child: Text(
                              "Incluidos el dolor de garganta, de cabeza o muscular y escalofríos.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14))),
                    ],
                  )
                ],
              ),
            )),

            //imagen 3
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              width: 350,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.blue[50]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/sintomas-3.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: 150,
                          child: Text("Fiebre alta",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: 150,
                          child: Text(
                              "En la mayoría de los casos, la enfermedad empieza con fiebre.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14))),
                    ],
                  ),
                ],
              ),
            )),

            //imagen 4
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              width: 350,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.blue[50]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/sintomas-4.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: 150,
                          child: Text("Tos",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: 150,
                          child: Text(
                              "La OMS especifica principalmente tos seca.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14))),
                    ],
                  ),
                ],
              ),
            )),
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
