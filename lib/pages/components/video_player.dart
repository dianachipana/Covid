import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  final Map obj;
  VideoPlayerPage({Key key, @required this.obj}) : super(key: key);

  @override
  VideoState createState() => VideoState(obj: obj);
}

class VideoState extends State<VideoPlayerPage> {
  VideoPlayerController playerController;
  VoidCallback listener;
  Map obj;
  VideoState({this.obj});

  @override
  
  Widget build(BuildContext context) {
         
    final width = MediaQuery.of(context).size.width;
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations( [DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    
               /*   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]); */

    createVideo();
    /*   print("obj " + this.obj.toString()); */
    return Scaffold(
    /*   appBar: AppBar(
        title: Text(this.obj["title"]),
      ), */
      body: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          
          AspectRatio(
              aspectRatio: 19 / 9,
              child: Container(
                child: (playerController != null
                    ? VideoPlayer(
                        playerController,
                      )
                    : Container()),
              )),
              Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 100, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: width * 0.52,
                            child: Text(
                              this.obj["title"],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      Text(this.obj["description"]),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 20.0,
                top: 35.0,
                bottom: 35.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: this.obj["imagen"] != null
                      ? GestureDetector(
                          child: FadeInImage(
                          width: 110.0,
                          placeholder:
                              AssetImage("assets/images/imagenofound.jpg"),
                          image: NetworkImage(this.obj["imagen"]),
                          fit: BoxFit.cover,
                        ))
                      : SizedBox(width: 0.0),
                ),
              )
            ],
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          boton();
        },
        child: widgetBoton(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {
     
      });
    };
    

  }


  Widget widgetBoton() {
   
    if (playerController.value.isPlaying) {
      return Icon(Icons.pause);
    } else {
      return Icon(Icons.play_arrow);
    }
  }

  void boton() {
    print(playerController.value.isPlaying.toString() + " pla ");
    if (playerController.value.isPlaying) {
      playerController.pause();
    } else {
      playerController.play();
    }

    setState(() {});
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.network(this.obj["video"])
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
       /*  ..play() */;
      playerController.play();
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }
}
