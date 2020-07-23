import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/textfield_widget.dart';

class AutoevalacionVista extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AutoevalacionVistaState();
}

class AutoevalacionVistaState extends State<AutoevalacionVista> {
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
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.blue[50]),
                  child: Column(
                    children: <Widget>[
                      Text("Aqui va la pregunta",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Color(0xff2a2798),
                              fontWeight: FontWeight.w400,
                              fontSize: 14)),
                      Text("Aqui va la respuesta",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff2a2798),
                              fontWeight: FontWeight.w400,
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
