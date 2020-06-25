import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatefulWidget {
  CustomInputField({
    @required this.isRequired,
    this.readOnly,
    @required this.inputTypeInfo,
    this.inputTypeFormat,
    this.minLength,
    this.maxLength,
    @required this.width,
    this.heightFont,
    this.borderColor,
    this.hintText,
    this.inputType,
    this.errorMsgRequired,
    this.errorMsgMinLength,
    this.errorMsgMaxLength,
    this.errorMsgInputType,
    this.currentNode,
    this.nextNode,
    this.controller,
    @required this.isLastInput,
    this.focus
  });

  final bool                  isRequired;
  final bool                  readOnly;
  final String                inputTypeInfo;
  final String                inputTypeFormat;
  final int                   minLength;
  final int                   maxLength;
  final double                width;
  final double                heightFont;
  final Color                 borderColor;
  final String                hintText;
  final TextInputType         inputType;
  final String                errorMsgRequired;
  final String                errorMsgMinLength;
  final String                errorMsgMaxLength;
  final String                errorMsgInputType;
  final TextEditingController controller;
  final FocusNode             currentNode;
  final FocusNode             nextNode;
  final bool                  isLastInput;
  final bool                  focus;

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: widget.width,
        child: TextFormField(
            readOnly: (widget.readOnly==null||widget.readOnly==false)?false:true,
            inputFormatters:[
              LengthLimitingTextInputFormatter(widget.maxLength),
            ],
            style: TextStyle(
              fontSize: 15,
              height  : widget.heightFont,
              color   : Colors.black                  
            ),
            autofocus       : widget.focus,
            textInputAction: (widget.isLastInput) ? TextInputAction.done:TextInputAction.next,
            focusNode       : widget.currentNode,
            onFieldSubmitted: (term){
              if(!widget.isLastInput){
                _fieldFocusChange(context, widget.currentNode, widget.nextNode);
              }
            },
            onChanged: (text){
              if(widget.maxLength!=null){
                _fieldFocusChangeML(context, text, widget.currentNode, widget.nextNode, widget.maxLength);
              }
            },
            keyboardType  : widget.inputType,
            controller    : widget.controller,
            decoration    : InputDecoration(  
              errorStyle: TextStyle(fontSize: 12.0),           
              fillColor   : (widget.readOnly==null||widget.readOnly==false)?Colors.white:Colors.grey[300],
              filled        : true,
              hintText      : widget.hintText,
              hintStyle     : TextStyle(fontSize: 15, color: Color.fromRGBO(189, 189, 189, 1),),
              border        : OutlineInputBorder(
                borderSide    : BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.0),
                borderRadius  : BorderRadius.circular(5.0)
              ),
              enabledBorder : OutlineInputBorder(
                borderSide    : BorderSide(color: Colors.white, width: 1.0),
                borderRadius  : BorderRadius.circular(5.0)
              ),
              focusedBorder : OutlineInputBorder(
                borderSide    : BorderSide(color:Theme.of(context).colorScheme.primary, width: 1.0),
                borderRadius  : BorderRadius.circular(5.0)
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.5),
            ),
            validator: (value) {
              if (widget.isRequired && value.isEmpty) {
                return widget.errorMsgRequired;
              }
              if(widget.readOnly!=null && widget.readOnly==true){
                return null;
              }
              if(widget.inputTypeInfo=='onlyText' || widget.inputTypeInfo=='onlyNumber'){
                if(_validateInputType(value, widget.errorMsgInputType, widget.inputTypeInfo) != null){
                  return _validateInputType(value, widget.errorMsgInputType, widget.inputTypeInfo);
                }
              }
              if(widget.minLength!=null && widget.maxLength!=null){
                if(_validateLength(value, widget.minLength, widget.maxLength, widget.errorMsgMaxLength, widget.errorMsgMinLength) !=null ){
                  return _validateLength(value, widget.minLength, widget.maxLength, widget.errorMsgMaxLength, widget.errorMsgMinLength);
                }
              }
              if(widget.inputTypeInfo=='email'){
                return _validateEmail(value, widget.errorMsgInputType);
              }
              return null;
            },
            onSaved: (val) {
           }));
  }
}
class CustomInputFieldOptional extends StatelessWidget {
  CustomInputFieldOptional({
    @required this.width,
    this.heightFont,
    this.borderColor,
    this.hintText,
    this.inputType,
    this.controller,   
    this.currentNode,
    this.nextNode,
    this.focus
  });
  final double                width;
  final double                heightFont;
  final Color                 borderColor;
  final String                hintText;
  final TextInputType         inputType;
  final TextEditingController controller;
  final FocusNode             currentNode;
  final FocusNode             nextNode;
  final bool                  focus;  

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: width,
        child: TextFormField(
            style: TextStyle(
             fontSize: 15,
              height: heightFont,
              color: Colors.black                  
            ),
            autofocus: focus,
            textInputAction: TextInputAction.next,
            keyboardType: inputType,
            controller: controller,
            focusNode: currentNode,
            onFieldSubmitted: (term){
              _fieldFocusChange(context, currentNode, nextNode);
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 15, color: Color.fromRGBO(189, 189, 189, 1)),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor, width: 1.0),
                borderRadius: BorderRadius.circular(5.0)
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor, width: 1.0),
                borderRadius: BorderRadius.circular(5.0)
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor, width: 1.0),
                borderRadius: BorderRadius.circular(5.0)
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.5),
            ),
            validator: (value) {
              return null; 
            },
            onSaved: (val) {
            }
        ),
    );
  }
}

class CustomInputFieldOneDigit extends StatelessWidget {
  CustomInputFieldOneDigit({
    this.inputType,
    @required this.width,
    this.height,
    this.borderColor,
    this.hintText,  
    this.errorMsg,
    this.controller,
    this.currentNode,
    this.nextNode,
    @required this.isLastInput,
    this.focus,
  });

  final TextInputType         inputType;
  final double                width;
  final double                height;
  final String                hintText;
  final String                errorMsg;
  final Color                 borderColor;
  final TextEditingController controller;
  final FocusNode             currentNode;
  final FocusNode             nextNode;
  final bool                  isLastInput;
  final bool                  focus;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: width,
          child: TextFormField(
              textAlign : TextAlign.center,
              inputFormatters:[
                LengthLimitingTextInputFormatter(1),
              ],
              style: TextStyle(
                fontSize: 15,
                height  : 1.5,
                color   : Colors.black                  
              ),
              autofocus: focus,
              textInputAction: (isLastInput) ? TextInputAction.done:TextInputAction.next,
              keyboardType: inputType,
              controller: controller,
              focusNode: currentNode,
              onFieldSubmitted: (term){
                _fieldFocusChange(context, currentNode, nextNode);
              },
              onChanged: (text){
                _fieldFocusChangeOD(context, text, currentNode, nextNode);
              },
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: hintText,
               hintStyle: TextStyle(fontSize: 15, color: Color.fromRGBO(189, 189, 189, 1)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.0),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.0),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1.0),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0),
              ),
              validator: (value) {
                Pattern pattern = r'[0-9]+';
                RegExp regExp   = new RegExp(pattern);
                if ( regExp.hasMatch( value ) ) {
                  return null;
                } else {
                  return '';
                }
              },
              onSaved: (val) {
                return errorMsg;
              }
          ),
    );
  }
}

class CustomInputFielPassword extends StatefulWidget {
  CustomInputFielPassword({
      @required this.isConfirmPassword,
      this.minLength,
      this.maxLength,
      @required 
      this.isHardcorePassword,
      @required 
      this.width,
      this.heightFont,
      this.borderColor,
      this.hintText,
      this.inputType,
      this.errorMsgRequired,
      this.errorMsgMaxLength,
      this.errorMsgMinLength,
      this.errorMsgHardcorePwd,
      this.controller,
      this.passwordControllerForMatch,
      this.focus,
      this.currentNode,
      this.nextNode,
      @required this.isLastInput
  });

  final int                   minLength;
  final int                   maxLength;
  final bool                  isConfirmPassword;
  final bool                  isHardcorePassword;
  final double                width;
  final double                heightFont;
  final Color                 borderColor;

  final String                hintText; 
  final TextInputType         inputType;
  final String                errorMsgRequired;
  final String                errorMsgMaxLength;
  final String                errorMsgMinLength;
  final String                errorMsgHardcorePwd;
  final TextEditingController controller;  
  final TextEditingController passwordControllerForMatch;
  final FocusNode             currentNode;
  final FocusNode             nextNode;
  final bool                  isLastInput;
  final bool                  focus;
  @override
  _CustomInputFielPasswordState createState() => _CustomInputFielPasswordState();
}

class _CustomInputFielPasswordState extends State<CustomInputFielPassword> {
  bool isObscurePassword = true;
  bool isPasswordRequired = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: widget.width,
        child: Column(
          children: <Widget>[
            TextFormField(
                style: TextStyle(
                  fontSize: 15.0,
                  height: widget.heightFont,
                  color: Colors.black                  
                ),
                inputFormatters:[
                  LengthLimitingTextInputFormatter(widget.maxLength),
                ],
                obscureText: isObscurePassword,
                autofocus: widget.focus,
                textInputAction: (widget.isLastInput) ? TextInputAction.done:TextInputAction.next,
                focusNode: widget.currentNode,
                onFieldSubmitted: (term){
                  if(!widget.isLastInput){
                    _fieldFocusChange(context, widget.currentNode, widget.nextNode);
                  }
                },
                keyboardType: widget.inputType,
                controller: widget.controller,
                decoration: InputDecoration(
                  errorStyle: TextStyle(fontSize: (widget.controller.text=="")?0:16.0),
                  suffixIcon: IconButton(
                    alignment: Alignment.centerRight,
                    icon: (isObscurePassword) ? Icon(Icons.visibility): Icon(Icons.visibility_off),
                    onPressed: (){
                      setState(() {
                        isObscurePassword = (isObscurePassword) ? false: true;
                      });
                    },
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: widget.hintText,
                  hintStyle: TextStyle(fontSize: 15.0, color: Color.fromRGBO(189, 189, 189, 1)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: widget.borderColor, width: 1.0),
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: widget.borderColor, width: 1.0),
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: widget.borderColor, width: 1.0),
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.5),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return widget.errorMsgRequired;
                  }
                  if(widget.minLength!=null && widget.maxLength!=null){
                    if(_validateLength(value, widget.minLength, widget.maxLength, widget.errorMsgMaxLength, widget.errorMsgMinLength) !=null ){
                      return _validateLength(value, widget.minLength, widget.maxLength, widget.errorMsgMaxLength, widget.errorMsgMinLength);
                    }
                  }
                  if(widget.isConfirmPassword){
                    if(value == widget.passwordControllerForMatch.text){
                      return null;
                    }else{
                      return "";
                    }
                  }
                  if(widget.isHardcorePassword){
                    return _validateHardcorePassword(value, widget.errorMsgHardcorePwd);
                  }
                  return null;
                },
                onSaved: (val) {}
            ),
          ],
        ),
    );
  }
}

dynamic _validateHardcorePassword(value, errorMsgHardcorePwd) {
  String  pattern = r'^(?=.{8,})(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@!#$%^&+=]).*$';
  RegExp regExp = new RegExp(pattern);
  if(regExp.hasMatch(value)){
    bool a =regExp.hasMatch(value) ;
    print(a);
    return null;
  }else{
    bool a =regExp.hasMatch(value) ;
    print(a);
    return errorMsgHardcorePwd;
  }
}

dynamic _validateEmail(value, errorMsgEmail){
  String pattern = r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$';
  RegExp regExp = new RegExp(pattern);
  if(regExp.hasMatch(value)){
    return null;
  }else{
    return errorMsgEmail;
  }
}

void _fieldFocusChange(BuildContext context, FocusNode currentNode, FocusNode nextNode){
  currentNode.unfocus();
  FocusScope.of(context).requestFocus(nextNode);
}
void _fieldFocusChangeOD(BuildContext context, String text, FocusNode currentNode, FocusNode nextNode){
  if(text.length>=1){
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }
}

void _fieldFocusChangeML(BuildContext context, String text, FocusNode currentNode, FocusNode nextNode, int maxLength){
  if(text.length>=maxLength){
    currentNode.unfocus();
    FocusScope.of(context).requestFocus(nextNode);
  }
}

dynamic _validateInputType(String value, String errorMsgInputType, String inputTypeInfo) {
    Pattern pattern = r'[0-9]+';
    RegExp regExp   = new RegExp(pattern);
    if ( inputTypeInfo=='onlyNumber' && !regExp.hasMatch( value ) ) {
      return errorMsgInputType;
    }else if( inputTypeInfo=='onlyNumber' && (value.contains("*") || value.contains("-") || value.contains(",") || value.contains(".")) ){
      return errorMsgInputType;
    }else if ( inputTypeInfo=='onlyText' && regExp.hasMatch( value ) ) {
      return errorMsgInputType;
    }else{
      return null;
    }
}

dynamic _validateLength(String value, int minLength, int maxLength, String errorMsgMaxLength, String errorMsgMinLength) {
  if(value.length > maxLength){
    return errorMsgMaxLength;
  }else if(value.length < minLength){
    return errorMsgMinLength;
  }else{
    return null;
  }
}

