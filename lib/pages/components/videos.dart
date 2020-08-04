import 'package:covid/blocs/transaction/transaction_bloc.dart';
import 'package:covid/logics/transaction_logic.dart';
import 'package:covid/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

    return Scaffold(
        body: Column(children: <Widget>[
      _cabecera(width),
      _botones(width),
      _lista(context, width),
    ]));
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
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(40.0, 5, 20, 5),
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
            color : Colors.white,
            borderRadius:  BorderRadius.circular(20.0)
          ),
        )
       /*  Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             
              Text(
                video.title,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              Text(
                video.description,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 12.0,
                  color: Color(0xff545c6b),
                ),
              )
            ],
          ),
        ),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  width: screenWidth * 0.3,
                  height: 120,
                  child: FadeInImage(
                    placeholder: AssetImage("assets/images/imagenofound.jpg"),
                    image: NetworkImage(video.imagen),
                    fit: BoxFit.cover,
                  ),
                ))
            : SizedBox(width: 0.0) */
      ],
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
    return Stack(
      children: <Widget>[
        Container(
            height: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(color: Colors.black26, offset: Offset(0.0, 2.0))
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image(
                  image: AssetImage('assets/images/videos-portada.png'),
                  fit: BoxFit.cover),
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 30,
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context)),
              IconButton(
                  icon: Icon(Icons.search),
                  iconSize: 30,
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context))
            ],
          ),
        ),
      ],
    );
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
