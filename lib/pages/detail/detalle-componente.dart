import 'package:covid/pages/constant/constat.dart';
import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  final  Map obj;

  const DetailPage({Key key, this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // SizedBox(height: 300),
                          Text(
                            this.obj['pregunta'],
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 35,
                              color: primaryTextColor,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),

                          Divider(color: Colors.black38),
                          SizedBox(height: 32),
                          Text(
                            this.obj['respuesta'] ?? '',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 20,
                              color: contentTextColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 32),
                          Divider(color: Colors.black38),
                        ],
                      ),
                    ),
    
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}