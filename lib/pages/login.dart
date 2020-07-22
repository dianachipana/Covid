import 'package:covid/pages/components/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routing_constants.dart';
// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class LoginPage extends StatefulWidget {
  final String title = 'Registration';
  @override
  State<StatefulWidget> createState() => SignInPageState();
}

class SignInPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 330,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/banner.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            Center(
                child: Text(
              "Ingresa con tus redes sociales",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff2a2798),
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      _btnFacebook(),
                      SizedBox(
                        width: 12,
                      ),
                      _btnInstagram(),
                      SizedBox(
                        width: 12,
                      ),
                      _btnGoogle()
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      Center(
                          child: Text(
                        "----- ó -----",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff2a2798),
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      TextFieldWidget(
                        hintText: 'Correo',
                        obscureText: true,
                        prefixIconData: Icons.mail_outline,
                        suffixIconData: Icons.check,
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFieldWidget(
                        hintText: 'Contraseña',
                        obscureText: false,
                        prefixIconData: Icons.lock_outline,
                        suffixIconData: Icons.visibility_off,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Olvidaste tu contraseña?",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Color(0xff2a2798)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, HomeViewRoute);
                        },
                        child: Container(
                          height: 50,
                          width: 150,
                          margin:
                              const EdgeInsets.only(right: 30.0, left: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff2a2798),
                          ),
                          child: Center(
                            child: Text(
                              "INGRESAR",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, RegisterViewRoute);
                          },
                          child: Text(
                            "REGÍSTRATE",
                            textAlign: TextAlign.right,
                            style: TextStyle(color: Color(0xff2a2798)),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _btnFacebook() {
    return GestureDetector(
      onTap: () {
        /*    Navigator.pushNamed(context, ReceiveViewRoute); */
      },
      child: Container(
        height: 35.0,
        padding: EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                blurRadius: 0.0, // has the effect of softening the shadow
                spreadRadius: 2.0, // has the effect of extending the shadow
                offset: Offset(
                  0.0, // horizontal, move right 10
                  2.0, // vertical, move down 10
                ),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Facebook',
              style: TextStyle(
                  color: Color(0xff2a2798), fontWeight: FontWeight.w400),
            ),
            Image.asset(
              'assets/images/facebook.png',
              height: 10.0,
              width: 15.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _btnInstagram() {
    return GestureDetector(
      onTap: () {
        /*    Navigator.pushNamed(context, ReceiveViewRoute); */
      },
      child: Container(
        height: 35.0,
        padding: EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                blurRadius: 0.0, // has the effect of softening the shadow
                spreadRadius: 2.0, // has the effect of extending the shadow
                offset: Offset(
                  0.0, // horizontal, move right 10
                  2.0, // vertical, move down 10
                ),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Instagram',
              style: TextStyle(
                  color: Color(0xff2a2798), fontWeight: FontWeight.w400),
            ),
            Image.asset(
              'assets/images/instagram.png',
              height: 10.0,
              width: 20.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget _btnGoogle() {
    return GestureDetector(
      onTap: () {
        /*    Navigator.pushNamed(context, ReceiveViewRoute); */
      },
      child: Container(
        height: 35.0,
        padding: EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200],
                blurRadius: 0.0, // has the effect of softening the shadow
                spreadRadius: 2.0, // has the effect of extending the shadow
                offset: Offset(
                  0.0, // horizontal, move right 10
                  2.0, // vertical, move down 10
                ),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Google',
              style: TextStyle(
                  color: Color(0xff2a2798), fontWeight: FontWeight.w400),
            ),
            Image.asset(
              'assets/images/google.png',
              height: 10.0,
              width: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
