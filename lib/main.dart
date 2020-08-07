import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return videoPlayerApp(context);
  }
}

videoPlayerApp(BuildContext context) {
  String videoUrl = "https://www.youtube.com/watch?v=-oMHME8XmtE";
  String secondVideoUrl = "https://www.youtube.com/watch?v=bKaVhXn49xY";
  String thirdVideoUrl = "https://www.youtube.com/watch?v=uD4izuDMUQA";

  YoutubePlayerController _controller;
  YoutubePlayerController _secondController;
  YoutubePlayerController _thirdController;

  _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(videoUrl),
      flags: YoutubePlayerFlags(enableCaption: false));

  _secondController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(secondVideoUrl),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      ));

  _thirdController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(thirdVideoUrl),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        enableCaption: false,
      ));

  var appBarImage = Image.network(
    'https://www.philosophytalk.org/sites/default/files/styles/large_blog__900x400_/public/graham-holtshausen-fUnfEz3VLv4-unsplash.jpg',
    fit: BoxFit.cover,
  );

  // void choiceAction(String choice) {
  //   if (choice == Constants.openAudioPlayer) {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => audioPlayerApp()));
  //   } else if (choice == Constants.openVideoPlayer) {
  //     print('Subscribe');
  //   }
  // }

  var a = AudioCache();
  playAudio1() {
    a.play('sample_song.mp3');
  }

  playAudio2() {
    a.play('sample_song2.mp3');
  }

  playAudio3() {
    a.play('sample_song3.mp3');
  }

  playAudio4() {
    a.play('sample.song4.mp3');
  }

  pause() {
    print("Will work soon");
  }

  stop() {
    print("Will work soon");
  }

  var appBody = CustomScrollView(
    slivers: <Widget>[
      SliverAppBar(
        expandedHeight: 200,
        floating: true,
        pinned: true,
        snap: false,
        flexibleSpace: FlexibleSpaceBar(
          title: Text(
            "Video Player",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          background: appBarImage,
          centerTitle: true,
        ),
        // actions: <Widget>[
        //   PopupMenuButton<String>(
        //     itemBuilder: (BuildContext context) {
        //       return Constants.choices.map((String choice) {
        //         return PopupMenuItem<String>(
        //           value: choice,
        //           child: Text(choice),
        //         );
        //       }).toList();
        //     },
        //     onSelected: choiceAction,
        //   )
        // ],
      ),
      SliverList(
          delegate: SliverChildListDelegate([
        SizedBox(
          height: 40,
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Entropy - Nigel Stanford (Youtube)",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
        SizedBox(
          height: 60,
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Timelab Pro (Youtube)",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
        YoutubePlayer(
          controller: _secondController,
          showVideoProgressIndicator: true,
        ),
        SizedBox(
          height: 60,
          child: Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "TIMELAPSE OF THE FUTURE (Youtube)",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ),
        YoutubePlayer(
          controller: _thirdController,
          showVideoProgressIndicator: true,
        ),
        SizedBox(
          height: 60,
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Offline Songs",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
          child: Container(
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.play_arrow), onPressed: playAudio1),
                IconButton(icon: Icon(Icons.pause), onPressed: pause),
                IconButton(icon: Icon(Icons.stop), onPressed: stop),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Radioactive',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 40,
          child: Container(
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.play_arrow), onPressed: playAudio2),
                IconButton(icon: Icon(Icons.pause), onPressed: pause),
                IconButton(icon: Icon(Icons.stop), onPressed: stop),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Shape of you',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 40,
          child: Container(
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.play_arrow), onPressed: playAudio3),
                IconButton(icon: Icon(Icons.pause), onPressed: pause),
                IconButton(icon: Icon(Icons.stop), onPressed: stop),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Leon On',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 40,
          child: Container(
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.play_arrow), onPressed: playAudio4),
                IconButton(icon: Icon(Icons.pause), onPressed: pause),
                IconButton(icon: Icon(Icons.stop), onPressed: stop),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Godzilla(Eminem)',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ])),
    ],
  );

  var myHome = Scaffold(
    body: appBody,
    resizeToAvoidBottomInset: false,
  );

  return MaterialApp(
    home: myHome,
  );
}
