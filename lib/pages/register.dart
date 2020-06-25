import 'package:flutter/material.dart';
import 'components/custom_form_field.dart';

enum Answers { OK }

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
  }
}

class SignUpViewSF extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpViewSF> {
  final _formKey = GlobalKey<FormState>();
    
  FocusNode             _mobileNode;
  FocusNode             _idNode;
  FocusNode             _dvNode;
  FocusNode             _namesNode;
   FocusNode             _lastNamesNode;
  //text controllers to keep track of user input
  TextEditingController namesController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController motherLastNameController = new TextEditingController();
  TextEditingController mobileController = new TextEditingController();
  TextEditingController dvController = new TextEditingController();
  TextEditingController dniController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Logic to enable button only if user agrees to terms and conditions
    var _onPressed;
    

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
                              child: Image.asset('assets/images/logo.png'),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Text('Ingrese sus datos:'),
                            ),
                            CustomInputField(
                            isRequired        : true,
                            inputTypeInfo     : 'onlyText',
                            width             : 225,
                            heightFont        : 1.2,
                            borderColor       : Colors.transparent,
                            hintText          : 'Nombres',
                            inputType         : TextInputType.text,
                            errorMsgRequired  : 'Ingresar Nombres.',
                            errorMsgInputType : 'Ingresar solo texto',
                            controller        : namesController,
                            currentNode       : _namesNode,
                            nextNode          :_lastNamesNode ,
                            isLastInput       : false,
                            focus             : false,
                            
                           ),
                            CustomInputField(
                            isRequired        : true,
                            inputTypeInfo     : 'onlyText',
                            width             : 225,
                            heightFont        : 1.2,
                            borderColor       : Colors.transparent,
                            hintText          : 'Apellido paterno',
                            inputType         : TextInputType.text,
                            errorMsgRequired  : 'Ingresar apellido paterno.',
                            errorMsgInputType : 'Ingresar solo texto',
                            controller        : lastNameController,
                            currentNode       : _lastNamesNode,
                            nextNode           : _mobileNode ,
                            isLastInput       : false,
                            focus              : false,
                            
                           ),
                           CustomInputField(
                            isRequired        : true,
                            inputTypeInfo     : 'onlyText',
                            width             : 225,
                            heightFont        : 1.2,
                            borderColor       : Colors.transparent,
                            hintText          : 'Apellido materno',
                            inputType         : TextInputType.text,
                            errorMsgRequired  : 'Ingresar apellido materno',
                            errorMsgInputType : 'Ingresar solo texto',
                            controller        : motherLastNameController,
                            currentNode       : _lastNamesNode,
                            nextNode           : _mobileNode ,
                            isLastInput       : false,
                            focus              : false,
                            
                           ),
                            CustomInputField(
                            isRequired        : true,
                            inputTypeInfo     : 'onlyNumber',
                            minLength         : 9,
                            maxLength         : 9,
                            width             : 225,
                            heightFont        : 1.2,
                            borderColor       : Colors.transparent,
                            hintText          : 'Celular',
                            inputType         : TextInputType.phone,
                            errorMsgRequired  : 'Ingresar celular.',
                            errorMsgMinLength : 'El celular debe tener mínimo 9 dígitos.',
                            errorMsgMaxLength : 'El celular debe tener máximo 9 dígitos.',
                            errorMsgInputType : 'Ingresar solo numeros',
                            controller        : mobileController,
                            currentNode       : _mobileNode,
                            nextNode          : _idNode,
                            isLastInput       : false,
                            focus             : false,
                            
                           /*  focusNode         : _mobileNode, */
                         ),
                            Row(
                              children: <Widget>[ 
                              SizedBox(
                                width: 46.0,
                              ),
                               CustomInputField(
                            isRequired        : true,
                            inputTypeInfo     : 'onlyNumber',
                            minLength         : 8,
                            maxLength         : 8,
                            width             : 145,
                            heightFont        : 1.2,
                            borderColor       : Colors.transparent,
                            hintText          : 'DNI',
                            inputType         : TextInputType.number,
                            errorMsgRequired  : 'Ingresar DNI.',
                            errorMsgMinLength : 'El DNI debe tener mínimo 9 dígitos.',
                            errorMsgMaxLength : 'El DNI debe tener máximo 9 dígitos.',
                            errorMsgInputType : 'Ingresar solo numeros',
                            controller        : dniController,
                            currentNode       : _idNode,
                            nextNode          : _dvNode,
                            isLastInput       : false,
                            focus             : false,
                            
                           ),
                              Text(' - '),
                            CustomInputField(
                            isRequired        : true,
                            inputTypeInfo     : 'onlyNumber',
                            minLength         : 1,
                            maxLength         : 1,
                            width             : 65,
                            heightFont        : 1.2,
                            borderColor       : Colors.transparent,
                            hintText          : 'D.V',
                            inputType         : TextInputType.number,
                            errorMsgRequired  : 'Ingresar D.V.',
                            errorMsgMinLength : 'El D.V debe tener mínimo 1 dígitos.',
                            errorMsgMaxLength : 'El D.V debe tener máximo 1 dígitos.',
                            errorMsgInputType : 'Ingresar solo numeros',
                            controller        : dvController,
                            isLastInput       : true,
                            currentNode       : _dvNode,
                            nextNode          : _dvNode,
                            focus             : false
                           ),
                              Container(
                              alignment: Alignment.centerRight,
                              child:IconButton(
                              icon: Image.asset(
                                'assets/images/icon_ayuda.png'
                                ),
                              onPressed: () {
                         /*          Navigator.pushNamed(context,HelpDniViewRoute); */
                              },
                            ),
                            ) 
                            ]),
                          // ),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16.0),
                              child: MaterialButton(
                                  onPressed: _onPressed,
                                  color: Theme.of(context).colorScheme.primary,
                                  disabledColor: Theme.of(context).disabledColor,
                                  child: Text(
                                    'Crear cuenta',
                                    style: Theme.of(context).textTheme.button,
                                  ))),
                          Container(
                              alignment: Alignment.centerRight,
                              child:IconButton(
                              icon: Icon(
                              Icons.help_outline,
                              color: Theme.of(context).colorScheme.secondary,   
                              size: 26.0,
                              ),
                                onPressed: () {
            
                            },
                          ),
                          ), 
                          Text(
                            'Ayuda'
                          )
                        ]),
                        
                  ),
                  )],
              ),
            ),
     
          ],
        ),
      ),
    )
    );
  }

  Future _dialogInfo({String message}) async {
    switch (await showDialog(
        context: this.context,
        builder: (context) {
          return SimpleDialog(
            //title: Text('Elija una alternativa'),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4),
                child: Text('Error', style: Theme.of(context).textTheme.subhead),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(message, style: Theme.of(context).textTheme.subtitle),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context, Answers.OK);
                  },
                  minWidth: 120.0,
                  color: Theme.of(context).colorScheme.primary,
                  child: Text(
                    'OK',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
            ],
          );
        })) {
      case Answers.OK:
        break;
    }
  }

}
