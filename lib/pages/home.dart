import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 25),
                child: Image(
                    width: width, image: AssetImage('assets/images/home.png'))),
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 230),
                child: _container(width),
              ),
            ),
            Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: _autoevaluacion(width)),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 360, left: 20),
                  child: _sintomas(width),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 360, left: 20),
                  child: _cuidados(width),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 360, left: 20),
                  child: _salir(width),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 460, left: width * 0.05),
              child: _autoevaluacion2(width),
            ),
            Padding(
              padding: EdgeInsets.only(top: 560, left: width * 0.05),
              child: _preguntas(width),
            ),
            Padding(
              padding: EdgeInsets.only(top: 660, left: width * 0.05),
              child: _receta(width),
            )
          ],
        ),
      ),
    );
  }

  _container(width) {
    return Container(
        height: 500,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0)),
          color: Colors.white,
        ));
  }

  _autoevaluacion(width) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AutoevaluacionViewRoute);
      },
      child: Container(
        height: 100.0,
        width: width * 0.9,
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.remove_red_eye,
                  color: Colors.black,
                  size: 50.0,
                )),
            Container(
              width: 200,
              child: Column(children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text('Autoevaluación COVID-19 ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                Text(
                    'Herramienta de autoevaluación para ayudar a determinar si debe hacerse la prueba de COVID-19. ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.black)),
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

  _sintomas(width) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SintomasViewRoute);
      },
      child: Container(
        padding: EdgeInsets.only(top: 10),
        height: 90.0,
        width: width * 0.265,
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

  _cuidados(width) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProtegeteEnCasaViewRoute);
      },
      child: Container(
        padding: EdgeInsets.only(top: 10),
        height: 90.0,
        width: width * 0.265,
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

  _salir(width) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProtegeteAlSalirViewRoute);
      },
      child: Container(
        padding: EdgeInsets.only(top: 10),
        height: 90.0,
        width: width * 0.265,
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

  _autoevaluacion2(width) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, VideosViewRoute);
      },
      child: Container(
        height: 90.0,
        width: width * 0.9,
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 15),
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
                    style: TextStyle(fontSize: 14, color: Colors.black)),
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

  _preguntas(width) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PreguntasFrecuentesViewRoute);
      },
      child: Container(
        padding: EdgeInsets.only(left: 5),
        height: 90.0,
        width: width * 0.9,
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.question_answer,
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
                    'Preguntas Frecuentes, en esta sección aclararemos tus dudas sobre el COVID-19 ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.black)),
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

  _receta(width) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, MedicamentosViewRoute);
      },
      child: Container(
        padding: EdgeInsets.only(left: 5),
        height: 90.0,
        width: width * 0.9,
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.location_searching,
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
                    'Averigua qué medicamentos te podrían ayudar combatir el COVID-19.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.black)),
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
