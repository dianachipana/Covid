import 'package:covid/pages/protegete-al-salir.dart';
import 'package:covid/pages/sintomas-view.dart';
import 'package:covid/pages/sintomas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeFalsoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeFalsoPageState();
}

class HomeFalsoPageState extends State<HomeFalsoPage> {
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
              height: 300,
            ),
            GestureDetector(
                onTap: () {},
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SintomasPage()),
                      );
                    },
                    color: Theme.of(context).colorScheme.primary,
                    disabledColor: Theme.of(context).disabledColor,
                    child: Text(
                      'Sintomas',
                      style: TextStyle(color: Colors.white),
                    ))),
            GestureDetector(
                onTap: () {},
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProtegeteAlSalirPage()),
                      );
                    },
                    color: Theme.of(context).colorScheme.primary,
                    disabledColor: Theme.of(context).disabledColor,
                    child: Text(
                      'protégete al salir',
                      style: TextStyle(color: Colors.white),
                    ))),
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
