import 'package:flutter/material.dart';

// Use the widget below when the field is required
class CustomFormField extends StatelessWidget {
  CustomFormField(
      {@required this.width,
      this.height,
      this.minLength,
      this.maxLength,
      this.hintText,
      this.inputType,
      this.inputAction,
      this.errorMsg,
      this.errorMsgMaxLength,
      this.errorMsgMinLength,
      //this.saveToField,
      this.controller,
      this.focus});

  final double width;
  final double height;
  final int                   minLength;
  final int                   maxLength;
  final String                errorMsgMaxLength;
  final String                errorMsgMinLength;
  final String hintText;
  final TextInputAction inputAction;
  final TextInputType inputType;
  final String errorMsg;
  //final String saveToField; //field to save to when the OnSaved() is invoked
  final TextEditingController controller;
  final bool focus;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      width: width,
      height: height,
      child: TextFormField(
          controller: controller,
          autofocus: focus,
          textInputAction: inputAction,
          keyboardType: inputType,
          style: Theme.of(context).textTheme.subtitle,
          cursorColor: Theme.of(context).colorScheme.primary,
          decoration: InputDecoration(hintText: hintText),
           
          validator: (value) {
            if (value.isEmpty) {
              return errorMsg;
            }
            return null;
          },
        
          
          ),
    );
  }
}
