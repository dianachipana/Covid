import 'package:covid/routing_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  /* final String username;
  final String password; */
 /*  const LoadingPage({Key key, this.username, this.password}) : super(key: key); */
  @override
  State<StatefulWidget> createState() => LoadingPageState();
}
  
class LoadingPageState extends State<LoadingPage> {

   @override
    void initState() { 
      super.initState();
    
     
    }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150,
            ),
            Text(
              '¡Bienvenido,',
              style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            text(),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              height: 350,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/loading.png'),
                            fit: BoxFit.fill)),
                  ),
                ],
              ),
            ),
            Text(
              'cargando...',
              style: TextStyle(color: Colors.indigo[900], fontSize: 16),
            ),
              
          ],
        ),
      ),
    );
  }
  text({String username}){
    return Text('DIANA',style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),);
  }
}