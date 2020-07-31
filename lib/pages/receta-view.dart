import 'package:covid/pages/protegete-al-salir-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecetaPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RecetaPageState();
}

class RecetaPageState extends State<RecetaPage> {
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
              height: 800,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Medicamentos",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w800, fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.remove_circle,
                color: Colors.black,
                size: 20.0,
              ),
              Text(
                "FASE 1",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 16),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 10, 15, 10),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: new BoxDecoration(
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //MEDICAMENTO 1
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                      size: 20.0,
                    ),
                    Text(
                      "Azitromicina",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                //MEDICAMENTO 2
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                      size: 20.0,
                    ),
                    Text(
                      "Fluimicil",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                //MEDICAMENTO 3
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                      size: 20.0,
                    ),
                    Text(
                      "Deflazacort 30mg",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                //MEDICAMENTO 4
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                      size: 20.0,
                    ),
                    Text(
                      "Dextrometorfano",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                //MEDICAMENTO 5
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                      size: 20.0,
                    ),
                    Text(
                      "Omeprazol 20mg",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                //MEDICAMENTO 6
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black,
                      size: 20.0,
                    ),
                    Text(
                      "Cefaclor 50mg",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.warning,
                color: Colors.red[900],
                size: 10.0,
              ),
              Container(
                width: 300,
                child: Text(
                    "No intentes tomar estos medicamentos sin receta y sin la aprobación de tu médico. Estos medicamentos pueden tener efectos secundarios graves.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.red[900],
                        fontWeight: FontWeight.w400,
                        fontSize: 10)),
              )
            ],
          ))
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
