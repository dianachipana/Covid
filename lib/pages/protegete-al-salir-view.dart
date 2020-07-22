import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProtegeteAlSalirVista extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProtegeteAlSalirVistaState();
}

class ProtegeteAlSalirVistaState extends State<ProtegeteAlSalirVista> {
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
                                'assets/images/precausiones-portada.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),

            //imagen 1
            Center(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10.0),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/precausiones-al-salir-1.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Text(
                          "Usa mascarilla",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff2a2798),
                              fontWeight: FontWeight.w800,
                              fontSize: 18),
                        )
                      ],
                    ))),

            //imagen 2
            Center(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 20, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                                width: 90,
                                child: Text("Cúbrete al toser o estornudar",
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
                                    "Utiliza la cara interna del codo para toser o estornudar o usa pañuelos deshechables.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff2a2798),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))),
                          ],
                        ),
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/precausiones-al-salir-2.png'),
                                  fit: BoxFit.fill)),
                        )
                      ],
                    ))),

            //imagen 3
            Center(
              child: Container(
                  width: width,
                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  decoration: new BoxDecoration(color: Colors.blueGrey[50]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/precausiones-al-salir-3.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                              width: 90,
                              child: Text("Distancia",
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
                                  "Evita el contacto con personas contagiadas o que presenten síntomas.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color(0xff2a2798),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14))),
                        ],
                      ),
                    ],
                  )),
            ),
            //IMAGENES 4 Y 5
            Center(
              child: Container(
                  width: width,
                  decoration: new BoxDecoration(color: Colors.blueGrey[50]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/precausiones-al-salir-4.png'),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Mantén como mínimo 1 metro de distancia",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff2a2798),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/precausiones-al-salir-5.png'),
                                      fit: BoxFit.fill)),
                            ),
                            SizedBox(
                              width: 150,
                              child: Text(
                                "Evita aglomeraciones de gente.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xff2a2798),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            //imagen 6
            Center(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/precausiones-al-salir-6.png'),
                                  fit: BoxFit.fill)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                                width: 150,
                                child: Text("De ser posible, quédate en casa",
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
                    ))),

            //imagen 7
            Center(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                                width: 150,
                                child: Text(
                                    "Busca lugares donde puedas lavarte las manos",
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
                                    "Lava tus manos de forma frecuente con agua y jabón o soluciones alcohólicas. Recuerda que debe ser durante 20 segundos.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color(0xff2a2798),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14))),
                          ],
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/precausiones-al-salir-7.png'),
                                  fit: BoxFit.fill)),
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
