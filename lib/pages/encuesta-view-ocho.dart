
import 'package:covid/routing_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class EncuestaVistaOchoPage extends StatefulWidget {
  final Map obj;
  EncuestaVistaOchoPage({Key key, @required this.obj}) : super(key: key);
  @override
  State<StatefulWidget> createState() => EncuestaViewOchoPageState(obj: obj);
}

class EncuestaViewOchoPageState extends State<EncuestaVistaOchoPage> {
  Map obj;
  EncuestaViewOchoPageState({this.obj});
  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

   return Scaffold(
        backgroundColor: Colors.deepPurpleAccent[400],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: Column(children: <Widget>[
                Center(
                  child: Container(
                    height: screenHeight * 0.35,
                    width: screenWidth * 0.80,
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.all(
                          Radius.circular(30.0),
                        )),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15.0,
                          ),
                          Text('Pregunta 8',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.purple[700])),
                          SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20,left: 20),
                              child: Text('¿Ha salido de su hogar, sin hacer uso de la mascarilla?',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.black)),
                          ),
                          Container(
                            height: 90,
                            width: 180,
                            /*  padding: EdgeInsets.only(right:30,left: 45), */
                            child: Image.asset('assets/images/mascarilla.jpg'),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 100, 30, 0),
                  child: Row(
                    children: <Widget>[
                      MaterialButton(
                           onPressed: () {
                            Map obj2 = {
                            'punto':  (int.parse(this.obj['punto']) + 3).toString(),
                            
                            };
                            Navigator.pushNamed(
                              context,
                              EncuestaVistaNueveViewRoute,
                              arguments: obj2,
                            );
                          },
                          disabledColor: Theme.of(context).disabledColor,
                          color: Colors.white,
                          minWidth: 100,
                          height: 40,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Text(
                            'Si',
                          )),
                      SizedBox(width: 30),
                      MaterialButton(
                           onPressed: () {
                            Map obj2 = {
                            'punto':  (int.parse(this.obj['punto']) + 0).toString(),
                            
                            };
                            Navigator.pushNamed(
                              context,
                              EncuestaVistaNueveViewRoute,
                              arguments: obj2,
                            );
                          },
                          disabledColor: Theme.of(context).disabledColor,
                          color: Colors.white,
                          minWidth: 100,
                          height: 40,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.grey, width: 1)),
                          child: Text(
                            'No',
                          )),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
