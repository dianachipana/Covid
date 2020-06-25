

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.



final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginPage  extends StatefulWidget {
  final String title = 'Registration';
  @override
  State<StatefulWidget> createState() => SignInPageState();
}

class SignInPageState extends State<LoginPage > {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/covid.png'))),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Ingresa con tus redes sociales',),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person), onPressed: null),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Correo'),
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.lock), onPressed: null),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Contraseña'),
                        ))),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xFF00a79B),
                  child: Text(
                    'Ingresar',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, 'Ingresar');
            },
                      child: Center(
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Ingresar',
                        style: TextStyle(
                            color: Colors.teal, fontWeight: FontWeight.bold),
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}



