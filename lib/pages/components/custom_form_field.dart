import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    @required this.width,
    this.hintText,
    this.inputType,
    this.inputAction,
    this.errorMsg,
    //this.saveToField,
    this.controller,
    this.focus,
    this.focusNode
  });

  final double width;
  final String hintText;
  final TextInputAction inputAction;
  final TextInputType inputType;
  final String errorMsg;
  //final String saveToField; //field to save to when the OnSaved() is invoked
  final TextEditingController controller;
  final bool focus;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      width: width,
      child: TextFormField(
        focusNode: focusNode,
        controller: controller,
        autofocus: focus,
        textInputAction: inputAction,
        keyboardType: inputType,
        style: Theme.of(context).textTheme.subtitle,
        cursorColor: Colors.deepPurpleAccent[700],
        decoration: InputDecoration(hintText: hintText),
        validator: (value) {
          if (value.isEmpty) {
            return errorMsg;
          }
          return null;
        }
      ),
    );
  }
}
