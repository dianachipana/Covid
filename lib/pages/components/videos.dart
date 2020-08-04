import 'package:covid/blocs/transaction/transaction_bloc.dart';
import 'package:covid/logics/transaction_logic.dart';
import 'package:covid/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/transaction.dart';
import '../../routing_constants.dart';

class VideosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TransactionBloc>(
        create: (_) => TransactionBloc(transactionLogic: TransactionSimple()),
        child: TransactionListViewSF());
  }
}

class TransactionListViewSF extends StatefulWidget {
  @override
  _TransactionListViewState createState() => _TransactionListViewState();
}

class _TransactionListViewState extends State<TransactionListViewSF> {
  List<Transaction> videos = [];
  int category = 0;
  final swatch_1 = Colors.indigo[400];
  final swatch_2 = Colors.red[400];
  final swatch_3 = Colors.amber[900];
  final swatch_4 = Color(0xff545c6b);
  final swatch_5 = Color(0xff363cb0);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Stack(children: <Widget>[
      Container(
        width: double.infinity,
        color: Colors.white.withOpacity(1),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _cabecera(width),
            _botones(width),
            _lista(context, width),
          ],
        ),
      )
    ]);
  }

  Widget _lista(BuildContext context, double width) {
    BlocProvider.of<TransactionBloc>(context)
        .add(DoGetTransactions(filter: category));
    return BlocListener<TransactionBloc, TransactionState>(
        listener: (context, state) {
      if (state is ResponseDoGetTransactions) {
        videos = state.transactions;
      }
      if (state is ErrorTransaction) {}
    }, child: BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
      if (videos.length > 0) {
        return Expanded(
            child: ListView.builder(
          itemCount: videos.length,
          itemBuilder: (context, i) => _crearItem(videos[i], width),
        ));
      } else {
        return Container();
      }
    }));
  }

  Widget _crearItem(Transaction video, double screenWidth) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
     
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               /*  mainAxisAlignment: MainAxisAlignment.spaceBetween, */
                children: <Widget>[
                    Row(
                    children: <Widget>[
                      Container(
                        width: 42.0,
                        height: 42.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21.0),
                          color: video.category == 1
                          ? swatch_1
                          : (video.category == 2 ? swatch_2 : swatch_3),
                        ),
                        child: Center(
                          child: Text(video.getCategory()[0],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(video.getCategory(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  
        

                  Text(
                    video.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    video.description,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xff545c6b),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 16.0),
            video.imagen != null
                ? GestureDetector(
                  onTap: () {
                  Map obj = {
                    'video': video.video,
                    'title': video.title,
                  };
                  Navigator.pushNamed(
                    context,
                    VideoPlayerViewRoute,
                    arguments: obj,
                  );
                },
                  child: Container(
                    width: screenWidth*0.2,
                    height: 120,
                    child: FadeInImage(
                      placeholder: AssetImage("assets/images/imagenofound.jpg"),
                      image: NetworkImage(video.imagen),
                      fit: BoxFit.cover,
                    ),
                  ))
                : SizedBox(width: 0.0)
                
          ],
        ),
      
    );
    /*    Dismissible(
        key: UniqueKey(),
        background: Container(color: Colors.red),
        child: Card(
            child: Column(
          children: <Widget>[
            GestureDetector(
              child: ListTile(
                leading: FadeInImage(
                    image: NetworkImage(video.imagen),
                    placeholder: AssetImage("assets/images/imagenofound.jpg")),
                title: Text(video.title),
                subtitle: Text(video.description),
                onTap: () {
                  Map obj = {
                    'video': video.video,
                    'title': video.title,
                  };
                  Navigator.pushNamed(
                    context,
                    VideoPlayerViewRoute,
                    arguments: obj,
                  );
                },
              ),
            ),
          ],
        ))); */
  }

  _cabecera(width) {
    return Row(children: <Widget>[
      Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 300,
              width: width * 0.82,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/videos-portada.png'),
                      fit: BoxFit.fill)),
            ),
          ],
        ),
      ),
    ]);
  }

  _botones(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
            width: width * 0.26,
            child: MaterialButton(
                onPressed: () {
                  this.category = 1;
                  BlocProvider.of<TransactionBloc>(context)
                      .add(DoGetTransactions(filter: category));
                },
                color: swatch_1,
                disabledColor: Theme.of(context).disabledColor,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text(
                  'Mitos',
                  style: TextStyle(color: Colors.white),
                ))),
        Container(
            width: width * 0.26,
            child: MaterialButton(
                onPressed: () {
                  this.category = 2;
                  BlocProvider.of<TransactionBloc>(context)
                      .add(DoGetTransactions(filter: category));
                },
                color: swatch_2,
                disabledColor: Theme.of(context).disabledColor,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text(
                  'Cuidados en casa',
                  style: TextStyle(color: Colors.white),
                ))),
        Container(
            width: width * 0.26,
            child: MaterialButton(
                onPressed: () {
                  this.category = 3;
                  BlocProvider.of<TransactionBloc>(context)
                      .add(DoGetTransactions(filter: category));
                },
                color: swatch_3,
                disabledColor: Theme.of(context).disabledColor,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text(
                  'Cuidados al salir',
                  style: TextStyle(color: Colors.white),
                ))),
      ],
    );
  }
}
