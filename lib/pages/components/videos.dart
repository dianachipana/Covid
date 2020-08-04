import 'package:covid/blocs/transaction/transaction_bloc.dart';
import 'package:covid/logics/transaction_logic.dart';
import 'package:covid/models/transaction.dart';
import 'package:covid/pages/components/video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../models/transaction.dart';
import '../../routing_constants.dart';

class VideosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TransactionBloc>(
          create: (_) => TransactionBloc(transactionLogic: TransactionSimple()),
        ),
      ],
      child: TransactionListViewSF(),
    );
  }
}

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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _cabecera(width),
            _botones(width),
            _lista(context),
          ],
        ),
      ),
    );
  }

  Widget _lista(BuildContext context) {
    BlocProvider.of<TransactionBloc>(context).add(DoGetTransactions());
    return BlocListener<TransactionBloc, TransactionState>(
        listener: (context, state) {
      if (state is ResponseDoGetTransactions) {
        videos = state.transactions;
      }
      if (state is ErrorTransaction) {}
    }, child: BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
      return Expanded(
          child: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, i) => _crearItem(videos[i]),
      ));
    }));
  }

  Widget _crearItem(Transaction video) {
    print(video.video);

    return Dismissible(
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
        )));
  }

  _cabecera(width) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/videos-portada.png'),
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
              ))
        ]);
  }

  _botones(double width) {
    //BOTONES
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        //boton 1
        Container(
            width: 110,
            child: MaterialButton(
                onPressed: () {},
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
                onPressed: () {},
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
                onPressed: () {},
                color: Colors.amber[900],
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
