import 'package:flutter/material.dart';
import 'package:video_streaming_flutter/constant/color_pallete.dart';
import 'package:video_streaming_flutter/constant/fab_bottom_bar.dart';
import 'package:video_streaming_flutter/screen/favorite_screen.dart';
import 'package:video_streaming_flutter/screen/home_screen.dart';
import 'package:video_streaming_flutter/screen/live_class_screen.dart';
import 'package:video_streaming_flutter/screen/profile_screen.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State<StatefulWidget> createState() {
    return HomeWidgetState();
  }
}

class HomeWidgetState extends State<HomeWidget> {
  bool keyboardOpen = false;
  int _currentIndex = 0;
  final List _children = [
    HomeScreen(),
    LiveClassScreen(),
    FavoriteScreen(),
    ProfileScreen()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: ColorPalette.themeColor,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        elevation: 8.0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video), label: 'Live Class'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks), label: 'Penanda'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      // FABBottomBar(
      //   color: Colors.black,
      //   selectedColor: ColorPalette.themeColor,
      //   notchedShape: CircularNotchedRectangle(),
      //   onTabSelected: onTabTapped,
      //   items: [
      //     FABBottomBarItem(iconData: Icons.home, text: 'Home'),
      //     FABBottomBarItem(iconData: Icons.ondemand_video, text: 'Live Class'),
      //     FABBottomBarItem(iconData: Icons.bookmarks, text: 'Simpan'),
      //     FABBottomBarItem(iconData: Icons.person, text: 'Profil')
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: keyboardOpen ? SizedBox() : _buildFab(context),
    );
  }

  // Widget _buildFab(BuildContext context) {
  //   return FloatingActionButton(
  //     onPressed: () {},
  //     tooltip: 'Actions',
  //     child: Container(
  //         decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(50),
  //             color: ColorPalette.themeColor),
  //         child: Center(
  //             child: Icon(
  //           Icons.ondemand_video,
  //           color: Colors.white,
  //         ))),
  //     elevation: 4.0,
  //   );
  // }
}
