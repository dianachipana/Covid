import 'package:covid/pages/preguntas-frecuentes-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PreguntasFrecuentesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PreguntasFrecuentesPageState();
}

class PreguntasFrecuentesPageState extends State<PreguntasFrecuentesPage> {
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
              height: 450,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                    height: 400,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/preguntas-frecuentes-view.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                height: 20,
              ),
            ),
            Center(
                child: Text(
              "Preguntas Frecuentes",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff2a2798),
                  fontWeight: FontWeight.w800,
                  fontSize: 18),
            )),
            Center(
              child: SizedBox(
                height: 10,
              ),
            ),
            Center(
                child: Text(
              "Ayude a controlar la propagación de rumores y esté atento a los mecanismos de fraude.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff2a2798),
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            )),
            Center(
              child: SizedBox(
                height: 40,
              ),
            ),
            Center(
              child: GestureDetector(
                  onTap: () {},
                  child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PreguntasFrecuentesVista()),
                        );
                      },
                      color: Colors.indigo[900],
                      disabledColor: Theme.of(context).disabledColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        'Ver más',
                        style: TextStyle(color: Colors.white),
                      ))),
            )
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
