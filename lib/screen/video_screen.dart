import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_streaming_flutter/model/video_model.dart';

class ChewieDemo extends StatefulWidget {
  const ChewieDemo({this.videoModel});

  final VideoModel videoModel;

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  int duration;

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  String _printDuration2(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 =
        VideoPlayerController.network(widget.videoModel.videoUrl);
    await _videoPlayerController1.initialize();
    _videoPlayerController2 = VideoPlayerController.network(
        'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4');
    await _videoPlayerController2.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: true,
      looping: false,
      startAt: Duration(seconds: duration == null ? 0 : duration),
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    print("object");
    _chewieController.videoPlayerController.addListener(() {
      setState(() {
        print(
            "${_chewieController.videoPlayerController.value.position.inMilliseconds}");
        duration = _chewieController
            .videoPlayerController.value.position.inMilliseconds;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, widget.videoModel);
        return false;
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                SafeArea(
                  child: Container(
                    height: 250,
                    color: Colors.black,
                    child: _chewieController != null &&
                            _chewieController
                                .videoPlayerController.value.initialized
                        ? Chewie(
                            controller: _chewieController,
                          )
                        : Center(
                            child: CircularProgressIndicator(),
                          ),
                  ),
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context, widget.videoModel);
                        },
                        child: Container(
                            margin: EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black54),
                            child: Center(
                                child: Platform.isIOS
                                    ? Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.white,
                                        ))
                                    : Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      ))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 40,
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.videoModel.title,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.videoModel.description,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.thumb_up_alt_rounded,
                              color: Colors.black,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "Like",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.share_rounded,
                              color: Colors.black,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "Share",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.bookmark_border,
                              color: Colors.black,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "Penanda",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.warning_rounded,
                              color: Colors.black,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              "Lapor",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  _getData()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getData() {
    var listVideo = videoList
        .where((element) => element.id != widget.videoModel.id)
        .toList();
    return ListView.separated(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: listVideo.length,
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemBuilder: (context, index) {
        final now = Duration(seconds: listVideo[index].duration);
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChewieDemo(
                videoModel: listVideo[index],
              );
            }));
          },
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        width: 120,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                listVideo[index].thumbnail,
                                height: double.infinity,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),
                                  color: Colors.black38),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    listVideo[index].duration >= 3600
                                        ? "${_printDuration(now)}"
                                        : "${_printDuration2(now)}",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listVideo[index].title,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              listVideo[index].description,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 8,
                // ),
                // Container(
                //   height: 50,
                //   width: 50,
                //   child: Icon(
                //     Icons.cloud_download,
                //     color: Colors.black,
                //     size: 35,
                //   ),
                // )
              ],
            ),
          ),
        );
      },
    );
  }
}
