import 'package:covid/pages/components/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routing_constants.dart';
// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class HomePage extends StatefulWidget {
  final String title = 'Registration';
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          /*  crossAxisAlignment: CrossAxisAlignment.start, */
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset('assets/images/home.png')),
            Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 250), child: _autoevaluacion()),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 380, left: 20),
                  child: _sintomas(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 380, left: 20),
                  child: _cuidados(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 380, left: 20),
                  child: _salir(),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 490, left: 30),
              child: _autoevaluacion2(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 590, left: 30),
              child: _preguntas(),
            ),
          ],
        ),
      ),
    );
  }

  _autoevaluacion() {
    return GestureDetector(
      /* onTap: () {
        Navigator.pushNamed(context, OtherOperationsViewRoute);
      }, */
      child: Container(
        height: 100.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/mas.png',
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
            Container(
              width: 200,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text('Autoevaluación COVID-19 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16)),
                Text(
                    'Herramienta de autoevaluación para ayudar a determinar si debe hacerse la prueba de COVID-19. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14)),
              ]),
            ),
            Image.asset(
              'assets/images/siguiente.png',
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  _sintomas() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SintomasViewRoute);
      },
      child: Container(
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
          color: Color(0xff6c63ff),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/sintomas.png',
                height: 50.0, width: 50.0),
            Text(
              'Síntomas',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  _cuidados() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProtegeteEnCasaViewRoute);
      },
      child: Container(
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
          color: Color(0xffff505d),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/cuidados.png',
                height: 50.0, width: 50.0),
            Text(
              'Cuidados en',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Casa',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  _salir() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProtegeteAlSalirViewRoute);
      },
      child: Container(
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
          color: Color(0xffffc140),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/salir.png', height: 50.0, width: 50.0),
            Text(
              'Cuidados al',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Salir',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }

  _autoevaluacion2() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, VideosViewRoute);
      },
      child: Container(
        height: 90.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Container(
                child: Image.asset(
              'assets/images/camera.png',
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            )),
            Container(
              width: 200,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Text(
                    'En esta sección encontrarás más información sobre el COVID-19. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14)),
              ]),
            ),
            Image.asset(
              'assets/images/siguiente.png',
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  _preguntas() {
    return GestureDetector(
      /* onTap: () {
        Navigator.pushNamed(context, OtherOperationsViewRoute);
      }, */
      child: Container(
        height: 90.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/cel.png',
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
            Container(
              width: 200,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Text(
                    'Preguntas Frecuentes, en esta sección aclararemos tus dudas sobre el COVID-19 ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14)),
              ]),
            ),
            Image.asset(
              'assets/images/siguiente.png',
              height: 50.0,
              width: 50.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
