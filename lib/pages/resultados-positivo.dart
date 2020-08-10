import 'package:covid/pages/home.dart';
import 'package:covid/routing_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultadosPositivoPage extends StatefulWidget {
  final Map obj;
  ResultadosPositivoPage({Key key, @required this.obj}) : super(key: key);
  @override
  State<StatefulWidget> createState() => ResultadosPositivoPageState(obj: obj);
}

class ResultadosPositivoPageState extends State<ResultadosPositivoPage> {
  Map obj;
  ResultadosPositivoPageState({this.obj});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return 
      Scaffold(
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
              "Resultado de autoevaluación",
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
              (int.parse(this.obj['punto']) <= 2)
                      ? 'Podria ser estrés, tome sus preucaciones y observe'
                      : (int.parse(this.obj['punto']) <= 5)
                          ? 'Hidrátese, conserve  medidas de higíene, observe  y reeválue en 2 dias'
                          : (int.parse(this.obj['punto']) <= 1)
                              ? 'Comuníquese a los teléfonos del Call Center DISAN FAP: 999666'
                              : 'Lláme al 113 para realizar pruebas de detección para COVID 19',
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
                              builder: (context) => HomePage()),
                        );
                      },
                      color: Colors.indigo[900],
                      disabledColor: Theme.of(context).disabledColor,
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      child: Text(
                        'Ok',
                        style: TextStyle(color: Colors.white),
                      ))),
            )
          ],
        ),
      ),
    );

    /* Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.fromLTRB(20, 70, 0, 50),
                child: Text(
                  "Resultados",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 30),
                )),
            Center(
                child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  (int.parse(this.obj['punto']) <= 2)
                      ? 'Podria ser estrés, tome sus preucaciones y observe'
                      : (int.parse(this.obj['punto']) <= 5)
                          ? 'Hidrátese, conserve  medidas de higíene, observe  y reeválue en 2 dias'
                          : (int.parse(this.obj['punto']) <= 1)
                              ? 'Comuníquese a los teléfonos del Call Center DISAN FAP: 999666'
                              : 'Lláme al 113 para realizar pruebas de detección para COVID 19',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            )),
            Center( child:
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HomeViewRoute);
              },
              child: Container(
                padding: EdgeInsets.only(top: 10),
                height: 90.0,
                width: width * 0.5,
                decoration: BoxDecoration(
                  color: Color(0xff6c63ff),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    Text(
                      'Regresar al home',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    ); */
  }

  /*@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }*/
}
