import 'package:covid/blocs/question/question_bloc.dart';
import 'package:covid/logics/question_logic.dart';
import 'package:covid/models/Question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PreguntasFrecuentesVista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuestionBloc>(
        create: (_) => QuestionBloc(questionLogic: QuestionSimple()),
        child: PreguntasListViewSF());
  }
}

class PreguntasListViewSF extends StatefulWidget {
  @override
  PreguntasFrecuentesVistaState createState() =>
      PreguntasFrecuentesVistaState();
}

class PreguntasFrecuentesVistaState extends State<PreguntasListViewSF> {
  List<Question> questions = [];
  List<Question> questionsFilter = [];
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
      _lista(context, width),
    ]));
  }

  Widget _lista(BuildContext context, double width) {
    if (questionsFilter.length < 1) {
      BlocProvider.of<QuestionBloc>(context)
          .add(DoGetQuestions());
    }

    return BlocListener<QuestionBloc, QuestionState>(
        listener: (context, state) {
      if (state is ResponseDoGetQuestions) {
        questions = state.questions;
        questionsFilter = state.questions;
      }
      if (state is ErrorQuestion) {}
    }, child: BlocBuilder<QuestionBloc, QuestionState>(
            builder: (context, state) {
      if (questions.length > 0) {
        return Expanded(
            child: ListView.builder(
          itemCount: questions.length,
          itemBuilder: (context, i) => _crearItem(questions[i], width),
        ));
      } else {
        return Container();
      }
    }));
  }

  Widget _crearItem(Question question, double screenWidth) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: screenWidth * 0.7,
                      child: Text(
                        question.pregunta,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
                Text(question.respuestaResume),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _cabecera(width) {
    return Stack(
      children: <Widget>[
        Container(
          height: 240,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.indigo[900], offset: Offset(0.0, 2.0))
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
                Text("Preguntas",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  width: 25.0,
                ),
                Text("Frecuentes",
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
                        onChanged: (text) {
                          text = text.toLowerCase();
                          setState(() {
                            questions = questionsFilter.where((question) {
                              var questionTitle = question.pregunta.toLowerCase();
                              return questionTitle.contains(text);
                            }).toList();
                          });
                        })),
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


}
