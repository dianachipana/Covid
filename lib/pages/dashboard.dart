import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Container(
            padding: EdgeInsets.only(
              top: 130,
              bottom: 10,
              right: 10,
              left: 10
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.passporthealthglobal.com/wp-content/uploads/2018/08/vacunas-consejos-peru.jpg"),
                    alignment: Alignment.topCenter)),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            color: Colors.white,
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {},
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Center(
                                child: Text("Videos",
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: RaisedButton(
                            color: Colors.white,
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () {},
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Center(
                                child: Text("Modulos de Ayuda",
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
  
              ],
            ),
          ),
        ));
  }
}