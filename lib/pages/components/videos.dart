import 'package:covid/blocs/transaction/transaction_bloc.dart';
import 'package:covid/logics/transaction_logic.dart';
import 'package:covid/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideosPage extends StatelessWidget  {
 
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider<TransactionBloc>(
           create: (_)=>TransactionBloc(transactionLogic: TransactionSimple()),
         ),
      ],
      child: TransactionListViewSF(),
    );
  }
}
  /* @override
  State<StatefulWidget> createState() => VideosPageState(); */
  class TransactionListViewSF extends StatefulWidget {
  @override
  _TransactionListViewState createState() => _TransactionListViewState();
}


class _TransactionListViewState extends State<TransactionListViewSF> {
   List<Transaction> videos = [];
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
                                     _crearLista(context),
                                    //imagen del video
                                   /*  Container(
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
                              ), */
                            ],
                          ),
                        ),
                      
                     )          
                    }
                  
                    Widget _crearLista(BuildContext context) {
                      BlocProvider.of<TransactionBloc>(context).add(DoGetTransactions());

                      return  BlocListener<TransactionBloc, TransactionState>(
                       listener: (context, state){
                             if(state is ResponseDoGetTransactions){
                                 videos = state.transactions;
                              }
                              if( state is ErrorTransaction ){
                               
                              }
                        },
                        child: BlocBuilder<TransactionBloc, TransactionState>(
                          builder: (context, state){
                          return ListView.builder(
                                  itemCount: videos.length,
                                  itemBuilder: (context , i ) => _crearItem(videos[i]),
                                );
                         })
                      );
                    }
                     Widget _crearItem(Transaction video  ) {
                       return ListTile(
                         title:  Text(video.title),
                         subtitle:  Text(video.description),
                       );
                     }

  /* @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  } */
}
