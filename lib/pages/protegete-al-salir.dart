import 'package:covid/pages/protegete-al-salir-view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProtegeteAlSalirPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProtegeteAlSalirPageState();
}

class ProtegeteAlSalirPageState extends State<ProtegeteAlSalirPage> {
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
                    height: 450,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/protegete-al-salir-portada.png'),
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
              "¿Quieres saber cómo?",
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
              "En esta sección te indicaremos algunas medidas que puedes tomar al salir y evitar el contagio.",
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
                              builder: (context) => ProtegeteAlSalirVista()),
                        );
                      },
                      color: Colors.indigo[900],
                      disabledColor: Theme.of(context).disabledColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        'Ver cómo',
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
