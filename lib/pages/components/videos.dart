import 'package:covid/blocs/transaction/transaction_bloc.dart';
import 'package:covid/logics/transaction_logic.dart';
import 'package:covid/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/transaction.dart';
import '../../routing_constants.dart';

class VideosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);

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
  List<Transaction> videosFilter = [];
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
      /*   _botones(width), */
      _lista(context, width),
    ]));
  }

  Widget _lista(BuildContext context, double width) {
    if (videosFilter.length < 1) {
      BlocProvider.of<TransactionBloc>(context)
        .add(DoGetTransactions(filter: category));
    }
    
    return BlocListener<TransactionBloc, TransactionState>(
        listener: (context, state) {
      if (state is ResponseDoGetTransactions) {
        videos = state.transactions;
        videosFilter = state.transactions;
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
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(100, 30, 20, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: screenWidth * 0.52,
                      child: Text(
                        video.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
                /* Text(video.description.substring(0,10)), */
                _buildRatingStarts(5),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    width: video.getCategory().length.toDouble() * 10,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(10.0)),
                    alignment: Alignment.center,
                    child: Text(video.getCategory()),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
        Positioned(
          left: 20.0,
          top: 25.0,
          bottom: 25.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: video.imagen != null
                ? GestureDetector(
                    onTap: () {
                      Map obj = {
                        'video': video.video,
                        'title': video.title,
                        'imagen': video.imagen,
                        'description' : video.description
                      };
                
                      Navigator.pushNamed(
                        context,
                        VideoPlayerViewRoute,
                        arguments: obj,
                      );
                    },
                    child: FadeInImage(
                      width: 110.0,
                      placeholder: AssetImage("assets/images/imagenofound.jpg"),
                      image: NetworkImage(video.imagen),
                      fit: BoxFit.cover,
                    ))
                : SizedBox(width: 0.0),
          ),
        )
      ],
    );
  }

  _cabecera(width) {
    return Stack(
      children: <Widget>[
        Container(
          height: 240,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Color(0xff21bfbd), offset: Offset(0.0, 2.0))
          ]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () => Navigator.pop(context)),
             
            ],
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Positioned(
            top: 100,
            left: width * 0.18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Videos",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  width: 25.0,
                ),
                Text("Informativos",
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ],
            )),
        Positioned(top: 150, left: width * 0.05, child: _botones(width)),
        SizedBox(
          height: 25.0,
        ),
      ],
    );
  }

  _botones(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Card(
          elevation: 3.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                  width: width * 0.7,
                 /*  height: 50, */
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(hintText: "buscar...."),
                    onChanged: (text)  { 
                      text = text.toLowerCase();
                      setState((){
                       
                        videos = videosFilter.where((video){
                        var videoTitle = video.title.toLowerCase();
                        return videoTitle.contains(text);
                        }).toList();
                    });
                    } 
                  )),
                SizedBox(
                  width: 10.0,
                ),
                GestureDetector(
                  child: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  onTap: () {},
                ),
               
              ],
            ),
          ),
        )
      ],
    );
  }

  Text _buildRatingStarts(int raiting) {
    String starts = '';
    for (int i = 0; i < raiting; i++) {
      starts += '⭐';
    }
    return Text(starts);
  }
}
