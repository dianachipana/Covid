import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => VideosPageState();
}

class VideosPageState extends State<VideosPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/videos-portada.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text(
                  "Vídeos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff2a2798),
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                )),

            //BOTONES
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                //boton 1
                Container(
                    width: 110,
                    child: MaterialButton(
                        onPressed: () {
                          /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SintomasVista()),
                      );*/
                        },
                        color: Colors.indigo[400],
                        disabledColor: Theme.of(context).disabledColor,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text(
                          'Mitos',
                          style: TextStyle(color: Colors.white),
                        ))),

                //boton 2
                Container(
                    width: 110,
                    child: MaterialButton(
                        onPressed: () {
                          /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SintomasVista()),
                      );*/
                        },
                        color: Colors.red[400],
                        disabledColor: Theme.of(context).disabledColor,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text(
                          'Cuidados en casa',
                          style: TextStyle(color: Colors.white),
                        ))),

                //boton 2
                Container(
                    width: 110,
                    child: MaterialButton(
                        onPressed: () {
                          /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SintomasVista()),
                      );*/
                        },
                        color: Colors.amber[900],
                        disabledColor: Theme.of(context).disabledColor,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                        child: Text(
                          'Cuidados al salir',
                          style: TextStyle(color: Colors.white),
                        ))),
              ],
            ),
            //container de videos
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  //imagen del video
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/videos-portada.png'),
                            fit: BoxFit.fill)),
                  ),
                  Column(
                    children: <Widget>[
                      Text('Cuidados en casa',
                          style: TextStyle(color: Colors.black)),
                      Text('Subtítulo del video',
                          style: TextStyle(color: Colors.black))
                    ],
                  ),

                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/videos-portada.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
