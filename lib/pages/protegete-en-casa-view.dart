import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProtegeteEnCasaVista extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProtegeteEnCasaVistaState();
}

class ProtegeteEnCasaVistaState extends State<ProtegeteEnCasaVista> {
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
                            image: AssetImage(
                                'assets/images/prevencion-en-casa-portada.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            //imagen 1
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
              width: width,
              decoration: new BoxDecoration(color: Colors.orange[100]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/cuidados-en-casa-1.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: width,
                          child: Text("Distancia",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            )),

            //imagen 2
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/cuidados-en-casa-2.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: width,
                          child: Text("Realiza tus operaciones desde casa",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            )),

            //imagen 3
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
              width: width,
              decoration: new BoxDecoration(color: Colors.orange[100]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/cuidados-en-casa-3.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: width,
                          child: Text(
                              "Limpia objetos frecuentemente utilizados",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            )),

            //imagen 4
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/cuidados-en-casa-4.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: width,
                          child: Text("Cuida a los mayores",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: width,
                          child: Text(
                              "Las personas mayores y las personas con enfermedades subyacientes tienen mayor riesgo de desarrollar enfermedades graves por la COVID-19 que pueden requerir hospitalización.",
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

//imagen 5
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
              width: width,
              decoration: new BoxDecoration(color: Colors.orange[100]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/cuidados-en-casa-5.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: width,
                          child: Text("Revisa tu temperatura",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: width,
                          child: Text(
                              "En la mayoria de los casos, la enfermedad empieza con fiebre.",
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

            //imagen 6
            Center(
                child: Container(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    height: 180,
                    width: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/cuidados-en-casa-6.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                          width: width,
                          child: Text(
                              "Definfecta todos los espacios de tu casa",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2a2798),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18))),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            )),

            //div fina
            Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                decoration: new BoxDecoration(color: Colors.orange[100]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Cuando vuelvas a casa",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.orange[900],
                            fontWeight: FontWeight.w900,
                            fontSize: 18))
                  ],
                )),
            //div1
            Container(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
              decoration: new BoxDecoration(color: Colors.orange[100]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cuidados-div-1.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 110,
                              child: Text("Deja tus zapatos afuera.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cuidados-div-2.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 110,
                              child: Text(
                                  "Tira a la basura tus guantes y mascarilla.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12))),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cuidados-div-3.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 110,
                              child: Text("Coloca tu ropa en una cesta.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //div2
            Container(
              decoration: new BoxDecoration(color: Colors.orange[100]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cuidados-div-4.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 110,
                              child: Text("Lava tu ropa lo más rápido posible.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cuidados-div-5.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 110,
                              child: Text("No toques a nadie.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cuidados-div-6.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 110,
                              child: Text("Lava tus manos inmediatamente.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //div3
            Container(
              decoration: new BoxDecoration(color: Colors.orange[100]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cuidados-div-7.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 110,
                              child: Text("Dúchate inmediatamente.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cuidados-div-8.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 110,
                              child: Text("Desinfecta todas las perillas.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14))),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/cuidados-div-9.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 110,
                              child: Text(
                                  "Desinfecta todo lo que traigas en tu bolso/mochila.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12))),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
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
