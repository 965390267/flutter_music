import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
   final FijkPlayer player = FijkPlayer();

   @override
   void initState(){
     super.initState();
     player.setDataSource('rtmp://202.69.69.180:443/webcast/bshdlive-pc',autoPlay: true);
   }

    @override
  void dispose() {
    super.dispose();
    player.release();
  }

  @override
  Widget build(BuildContext context) {
    return 
      Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: FijkView(player: player),
      );
 
  }
}

 