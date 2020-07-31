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
                  padding: EdgeInsets.only(top: 360, left: 20),
                  child: _sintomas(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 360, left: 20),
                  child: _cuidados(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 360, left: 20),
                  child: _salir(),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 460, left: 30),
              child: _autoevaluacion2(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 560, left: 30),
              child: _preguntas(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 660, left: 30),
              child: _receta(),
            )
          ],
        ),
      ),
    );
  }

  _autoevaluacion() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AutoevaluacionViewRoute);
      },
      child: Container(
        height: 100.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.remove_red_eye,
              color: Colors.black,
              size: 50.0,
            ),
            Container(
              width: 200,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text('Autoevaluación COVID-19 ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16)),
                Text(
                    'Herramienta de autoevaluación para ayudar a determinar si debe hacerse la prueba de COVID-19. ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ]),
            ),
            Icon(
              Icons.navigate_next,
              color: Colors.black,
              size: 30.0,
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
        padding: EdgeInsets.only(top: 10),
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
          color: Color(0xff6c63ff),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.hearing,
              color: Colors.white,
              size: 40.0,
            ),
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
        padding: EdgeInsets.only(top: 10),
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
          color: Color(0xffff505d),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.home,
              color: Colors.white,
              size: 40.0,
            ),
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
        padding: EdgeInsets.only(top: 10),
        height: 90.0,
        width: 90.0,
        decoration: BoxDecoration(
          color: Color(0xffffc140),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              Icons.person_pin_circle,
              color: Colors.white,
              size: 40.0,
            ),
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
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.videocam,
                color: Colors.black,
                size: 50.0,
              ),
            ),
            Container(
              width: 200,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Text(
                    'En esta sección encontrarás más información sobre el COVID-19. ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ]),
            ),
            Icon(
              Icons.navigate_next,
              color: Colors.black,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }

  _preguntas() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PreguntasFrecuentesViewRoute);
      },
      child: Container(
        padding: EdgeInsets.only(left: 5),
        height: 90.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.question_answer,
              color: Colors.black,
              size: 50.0,
            ),
            Container(
              width: 200,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Text(
                    'Preguntas Frecuentes, en esta sección aclararemos tus dudas sobre el COVID-19 ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ]),
            ),
            Icon(
              Icons.navigate_next,
              color: Colors.black,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }

  _receta() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RecetaViewRoute);
      },
      child: Container(
        padding: EdgeInsets.only(left: 5),
        height: 90.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.blue[50],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.healing,
              color: Colors.black,
              size: 50.0,
            ),
            Container(
              width: 200,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 12,
                ),
                Text(
                    'Averigua qué medicamentos te podrían ayudar combatir el COVID-19.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14)),
              ]),
            ),
            Icon(
              Icons.navigate_next,
              color: Colors.black,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
