import 'package:covid/blocs/signup/signup_bloc.dart';
import 'package:covid/logics/authentication_logic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../routing_constants.dart';
import 'components/custom_form_field.dart';
import 'components/custom_input_buscar.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>SignupBloc(authenticationLogic: AuthenticationSimple()),
      child: SignUpViewSF()
    );
  }
}

class SignUpViewSF extends StatefulWidget { 
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpViewSF> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController namesController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController dateController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController password2Controller = new TextEditingController();
  TextEditingController userController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
     var _onPressed;
      _onPressed = () {
  
        if (namesController.text.isNotEmpty && 
            lastNameController.text.isNotEmpty && 
            userController.text.isNotEmpty && 
            phoneController.text.isNotEmpty &&
            passwordController.text.isNotEmpty && passwordController.text.isNotEmpty) {
          // _user.save();
          if(passwordController.text==password2Controller.text){ 
          BlocProvider.of<SignupBloc>(context).add(DoSignupEvent(
            name: namesController.text,
            lastName: lastNameController.text,
            password: passwordController.text,
            username: userController.text,
            cellphone: phoneController.text,
          ));
          }else{
            _password(context);
          }
        }else{
          _form(context);
        }
      };
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Form(
                     key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Image.asset(
                                'assets/images/banner.png',
                                width: 90.0,
                                height: 90.0,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Text('REGÍSTRATE:'),
                            ),
                            CustomFormField(
                              width: 225,
                              hintText: 'Nombres',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                              errorMsg: 'Ingresar nombres.',
                              controller: namesController,
                              focus: true,
                            ),
                            CustomFormField(
                              width: 225,
                              hintText: 'Apellidos',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                              errorMsg: 'Ingresar apellido paterno.',
                              controller: lastNameController,
                              focus: false,
                            ),
                            CustomFormField(
                              width: 225,
                              hintText: 'Celular',
                              inputType: TextInputType.phone,
                              inputAction: TextInputAction.next,
                              errorMsg: 'Ingresar celular.',
                              controller: phoneController,
                              focus: false,
                            ),
                            CustomFormField(
                              width: 225,
                              hintText: 'Usuario',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                              errorMsg: 'Ingresar correo.',
                              controller: userController,
                              focus: false,
                            ),
                            CustomInputFielPassword(
                               isHardcorePassword: false,
                               isConfirmPassword: false,
                               minLength         : 8,
                               maxLength         : 100,
                               borderColor       : Colors.transparent,
                               width             : 225.0,
                               heightFont        : 1.2,
                               hintText          : 'Contraseña',
                               inputType         : TextInputType.text,
                               errorMsgRequired  : '',
                               errorMsgMaxLength : 'Ingresar máximo 100 digitos',
                               errorMsgMinLength : 'Ingresar minimo 8 digitos',
                               controller        : passwordController,
                               /* currentNode       : _passwordNode, */
                                nextNode          : null,
                               isLastInput       : true,
                               focus             : false,
                            ),
                             CustomInputFielPassword(
                              isHardcorePassword: false,
                               isConfirmPassword: false,
                               minLength         : 8,
                               maxLength         : 100,
                               borderColor       : Colors.transparent,
                               width             : 225.0,
                               heightFont        : 1.2,
                               hintText          : 'Confirmar contraseña',
                               inputType         : TextInputType.text,
                               errorMsgRequired  : '',
                               errorMsgMaxLength : 'Ingresar máximo 100 digitos',
                               errorMsgMinLength : 'Ingresar minimo 8 digitos',
                               controller        : password2Controller,
                               /* currentNode       : _passwordNode, */
                               nextNode          : null,
                               isLastInput       : true,
                               focus             : false,
                            ),
 
                            // ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16.0),
                            ),

                            GestureDetector(
                                onTap: () {},
                                child: MaterialButton(
                                     onPressed: _onPressed, /* {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()),
                                      );
                                    }, */
                                    color: Theme.of(context).colorScheme.primary,
                                    disabledColor:
                                        Theme.of(context).disabledColor,
                                    child: Text(
                                      'Crear cuenta',
                                      style: TextStyle(color: Colors.white),
                                    ))),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
              BlocListener<SignupBloc, SignupState>(
              listener: (context, state){
                if(state is ResponseDoSignup){
                  Navigator.pushNamed(context, LoginViewRoute);
                }else if(state is ErrorSignup){
                  _dialogInfo(context);
                }
              },
              child: BlocBuilder<SignupBloc, SignupState>(
                builder: (context, state){
                  return Container();
                }
              ),
            )
          ],
        ),
      ),
    ));
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
        content: const Text('Ocurrio un error'),
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
 Future<void> _password(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.0))
          ),
        title: Text('Error'),
        content: const Text('Contraseña no coincide'),
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
Future<void> _ok(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.0))
          ),
        title: Text('Error'),
        content: const Text('Registro exitoso'),
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
 Future<void> _form(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.0))
          ),
        title: Text('Error'),
        content: const Text('Completar todos los campos'),
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
  
}
