import 'package:flutter/material.dart';


class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  final Function onChanged;

  TextFieldWidget({
    this.hintText,
    this.prefixIconData,
    this.suffixIconData,
    this.obscureText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {

    return TextField(
      onChanged: onChanged,
      obscureText: false,
      cursorColor: Color(0xff2a2798),
      style: TextStyle(
        color: Color(0xff2a2798),
        fontSize: 14.0,
      ),
      decoration: InputDecoration(
        labelStyle: TextStyle(color:Color(0xff2a2798)),
        focusColor: Color(0xff2a2798),
        filled: true,
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xff2a2798)),
        ),
        labelText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 18,
          color: Color(0xff2a2798),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            /* model.isVisible = !model.isVisible; */
          },
          child: Icon(
            suffixIconData,
            size: 18,
            color: Color(0xff2a2798),
          ),
        ),
      ),
    );
  }
}
