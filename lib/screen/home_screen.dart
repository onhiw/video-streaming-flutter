import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_streaming_flutter/constant/color_pallete.dart';
import 'package:video_streaming_flutter/model/video_model.dart';
import 'package:video_streaming_flutter/screen/video_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "Belajarku",
          style: TextStyle(
              color: ColorPalette.themeColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 200,
                  width: double.infinity,
                  child: getBanner(context)),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Text("Hype Minggu Ini",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
                  height: 200.0,
                  child: _getData(300, false)),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text("Recomended",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
                  height: 180.0,
                  child: _getData(280, true)),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text("Untuk Kamu",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                  padding:
                      EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 16),
                  height: 180.0,
                  child: _getData(280, false)),
              Container(
                height: 80,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "© 2021 Belajarku. All rights reserved.",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _getData(double size, bool status) {
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

    var listVideo;

    status == true
        ? listVideo = videoList.reversed.toList()
        : listVideo = videoList;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listVideo.length,
      itemBuilder: (context, index) {
        final now = Duration(seconds: listVideo[index].duration);
        return GestureDetector(
          onTap: () {
            _navigateAndDisplaySelection(context, listVideo[index]);
          },
          child: Container(
            width: size,
            padding: EdgeInsets.only(left: 4, right: 4),
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        listVideo[index].thumbnail,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white),
                        color: Colors.black54),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    color: Colors.black54,
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(10),
                    child: Text(
                      listVideo[index].duration >= 3600
                          ? "${_printDuration(now)}"
                          : "${_printDuration2(now)}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  _navigateAndDisplaySelection(
      BuildContext context, VideoModel videoModel) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ChewieDemo(
                videoModel: videoModel,
              )),
    );

    showBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return GestureDetector(
          onTap: () {
            _navigateAndDisplaySelection(context, result);
          },
          child: Container(
            width: double.infinity,
            height: 80,
            padding: EdgeInsets.all(16),
            color: Colors.black54,
            child: Row(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Container(
                        height: 50,
                        width: 80,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              result.thumbnail,
                              fit: BoxFit.cover,
                            ))),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Lanjutkan Pembelajaran",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            result.title,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
                GestureDetector(
                  onTap: () {
                    _navigateAndDisplaySelection(context, result);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(color: Colors.white),
                        color: Colors.black54),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(color: Colors.white),
                        color: Colors.black54),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    // Scaffold.of(context)
    //   ..showBottomSheet((context) {
    //     setState(() {

    //     });
    //   });
  }

  Widget getBanner(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: videoList.map((fileImage) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                // margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.network(
                      fileImage.thumbnail,
                      fit: BoxFit.cover,
                    )),
              ),
            );
          }).toList(),
          height: 240,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          viewportFraction: 1.0,
          onPageChanged: (index) {
            setState(() {
              _current = index;
            });
          },
        ),
        Container(
          height: 240,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: videoList.map((url) {
                int index = videoList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index
                          ? Colors.red[600]
                          : Colors.grey[600]),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
