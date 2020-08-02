import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {

  @override
  VideoState createState() => VideoState();

}


class VideoState extends State<VideoPlayerPage> {
   VideoPlayerController playerController;
   VoidCallback listener; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Example'),
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
        "https://s3.amazonaws.com/dev-covid-unac/video/que_es_covid.mp4")
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