

import 'package:covid/pages/components/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/custom_form_field.dart';


class RegisterPage  extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage > {
  TextEditingController namesController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController motherLastNameController = new TextEditingController();
  TextEditingController mobileController = new TextEditingController();
  TextEditingController dvController = new TextEditingController();
  TextEditingController dniController = new TextEditingController();
 @override
  Widget build(BuildContext context) {

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
                
                  
                     SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Image.asset('assets/images/banner.png',width: 90.0,height: 90.0,),
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
                              hintText: 'Apellido paterno',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                              errorMsg: 'Ingresar apellido paterno.',
                              controller: lastNameController,
                              focus: false,
                            ),
                            CustomFormField(
                              width: 225,
                              hintText: 'Apellido materno',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                              errorMsg: 'Ingresar apellido materno.',
                              controller: motherLastNameController,
                              focus: false,
                            ),
                            CustomFormField(
                              width: 225,
                              hintText: 'Correo electrónico',
                              inputType: TextInputType.phone,
                              inputAction: TextInputAction.next,
                              errorMsg: 'Ingresar celular.',
                              controller: mobileController,
                              focus: false,
                            ),
                            CustomFormField(
                              width: 225,
                              hintText: 'Contraseña',
                              inputType: TextInputType.phone,
                              inputAction: TextInputAction.next,
                              errorMsg: 'Ingresar celular.',
                              controller: mobileController,
                              focus: false,
                            ),
                            CustomFormField(
                              width: 225,
                              hintText: 'Confirmar contraseña',
                              inputType: TextInputType.phone,
                              inputAction: TextInputAction.next,
                              errorMsg: 'Ingresar celular.',
                              controller: mobileController,
                              focus: false,
                            ),
                           
                            
                          // ),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16.0),
                              child: MaterialButton(
                                  onPressed: (){},
                                  color: Theme.of(context).colorScheme.primary,
                                  disabledColor: Theme.of(context).disabledColor,
                                  child: Text(
                                    'Crear cuenta',
                                    style: TextStyle(color:Colors.white),
                                  ))),
                         
                        ]),
                        
                  ),
                  ],
              ),
            ),
           /*  BlocListener<SignupBloc, SignupState>(
              listener: (context, state){
                if(state is ResponseDoSignup){
                  Map obj = { 
                    'dniLogin': dniController.text + dvController.text,
                    'numberPhoneLogin': mobileController.text,
                    'flowType': 'register'
                  };
                  Navigator.pushNamed(context, CheckCellViewRoute, arguments: obj);
                }else if(state is ErrorSignup){
                  _dialogInfo(message: state.message, isError: true);
                }
              },
              child: BlocBuilder<SignupBloc, SignupState>(
                builder: (context, state){
                  return Container();
                }
              ),
            ) */
          ],
        ),
      ),
    )
    );
  }

  
}




