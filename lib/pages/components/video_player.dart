import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';



class VideoPlayerPage extends StatefulWidget {
  final Map obj ;
  VideoPlayerPage({Key key, @required this.obj}) : super(key: key);

  @override
  VideoState createState() => VideoState(obj: obj);
}

class VideoState extends State<VideoPlayerPage> {
  VideoPlayerController playerController;
  VoidCallback listener;
  Map obj ;
  
  VideoState({this.obj});
      
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown
    ]);
    /* createVideo(); */
    print("obj " + this.obj.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(this.obj["title"]),
      ),
      body: Center(
          child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                child: (playerController != null
                    ? VideoPlayer(
                        playerController,
                      )
                    : Container()),
              ))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createVideo();
          playerController.play();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void createVideo() {
    if (playerController == null) {
      playerController = VideoPlayerController.network(
          this.obj["video"])
        ..addListener(listener)
        ..setVolume(1.0)
        ..initialize()
        ..play();
    } else {
      if (playerController.value.isPlaying) {
        playerController.pause();
      } else {
        playerController.initialize();
        playerController.play();
      }
    }
  }

  @override
  void deactivate() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    super.deactivate();
  }
}
