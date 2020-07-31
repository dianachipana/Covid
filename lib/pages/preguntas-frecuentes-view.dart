import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/textfield_widget.dart';

class PreguntasFrecuentesVista extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PreguntasFrecuentesVistaState();
}

class PreguntasFrecuentesVistaState extends State<PreguntasFrecuentesVista> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 45, 0, 0),
                    child: TextFieldWidget(
                      hintText: 'Buscar',
                      obscureText: false,
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  margin: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                  width: 350,
                  decoration: new BoxDecoration(
                    color: Colors.blue[50],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(2.0, 0.0),
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text("Aqui va la pregunta",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontSize: 16)),
                      Text("Aqui va la respuesta",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontSize: 12))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
