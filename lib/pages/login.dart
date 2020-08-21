import 'package:covid/blocs/prelogin/prelogin_bloc.dart';
import 'package:covid/logics/authentication_logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../routing_constants.dart';
import 'components/custom_form_field.dart';
import 'components/custom_input_buscar.dart';
import 'components/custom_loading.dart';
// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
enum Answers { OK }
class LoginPage extends StatelessWidget  {

   @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
    return BlocProvider(
      create: (_)=>PreloginBloc(authenticationLogic: AuthenticationSimple()),
      child: PreloginViewFS()
    );
  }
}

class PreloginViewFS extends StatefulWidget {
  @override
  _PreloginViewState createState() => _PreloginViewState();
}

class _PreloginViewState extends State<PreloginViewFS> {
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Stack(
             children: <Widget>[
             Column(
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
                  "InformatePe COVID",
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
                        height: 20,
                      ),
                      Column(
                        children: <Widget>[
                          Center(
                            child: Text(
                              "---- ó ----",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:  Color(0xff2a2798),
                                fontWeight: FontWeight.w400,
                                fontSize: 18
                              ),
                              ),
                            
                          ) ,
                          SizedBox(
                            height: 20,
                          ),
                          CustomFormField(
                            width: width*0.9,
                            hintText: 'Usuario',
                            inputType: TextInputType.text,
                            inputAction: TextInputAction.next,
                            controller: usuarioController,
                            focus             : false
                           ),
                          SizedBox(
                            height: 15,
                          ),
                          CustomInputFielPassword(
                                   isHardcorePassword: false,
                                   isConfirmPassword: false,
                                   minLength         : 8,
                                   maxLength         : 100,
                                   borderColor       : Colors.transparent,
                                   width             : width*0.9,
                                   heightFont        : 1.2,
                                   hintText          : 'Contraseña',
                                   inputType         : TextInputType.text,
                                   errorMsgRequired  : '',
                                   errorMsgMaxLength : '♥ máximo 100 digitos',
                                   errorMsgMinLength : '♥ minimo 8 digitos',
                                   controller        : passwordController,
                                   /* currentNode       : _passwordNode, */
                                    nextNode          : null,
                                   isLastInput       : true,
                                   focus             : false,
                                ),
                          SizedBox(
                            height: 10,
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
                                   /*  final form = _formKey.currentState; */
                            if (usuarioController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                             BlocProvider.of<PreloginBloc>(context).add(DoPreloginEvent(username: usuarioController.text, password: passwordController.text));
                             }else{
                            _alert(context);

                          }    
                             /*  Navigator.pushNamed(context, HomeViewRoute); */
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
                BlocListener<PreloginBloc, PreloginState>(
                  listener: (context, state){
                     if (state is LoadingPreLogin) {
                            isLoading = true;
                          } else {
                            isLoading = false;
                          }
                    if(state is ResponseDoPrelogin){
                      Map obj = {
                        'username': usuarioController.text,
                        'password': passwordController.text,
                      };
                      Navigator.pushNamed(
                        context,
                        HomeViewRoute,
                        arguments: obj,
                      );
                    }else if(state is ErrorPrelogin){
                      _dialogInfo(context);
                    }
                  },
                  child: BlocBuilder<PreloginBloc, PreloginState>(
                    builder: (context, state){
                        return (isLoading)
                              ? Center(
                                  child: CustomLoading(
                                      screenHeight: screenHeight,
                                      screenWidth: screenWidth),
                                )
                              : Container();
                   }
                  ),
                )
             ]
        ),
      ),
    );
  }
Future<void> _alert(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))
          ),
        title: Text('Error'),
        content: const Text('Debe completar todos los campos'),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Future<void> _dialogInfo(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.0))
          ),
        title: Text('Error'),
        content: const Text('El usuario no existe'),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
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
