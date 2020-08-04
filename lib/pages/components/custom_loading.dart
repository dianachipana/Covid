import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;

  const CustomLoading({Key key, this.screenWidth, this.screenHeight}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(new FocusNode());
    return Container(
      height: screenHeight,
      width: screenWidth,
      color: Color.fromRGBO(0, 0, 0, 0.4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(25),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.white,
              ),
              backgroundColor: Colors.grey[400],
              strokeWidth: 4.0,
            ),
          ),
        ],
      ),
    );
  }  
}