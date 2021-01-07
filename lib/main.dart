import 'package:flutter/material.dart';
import 'package:video_streaming_flutter/screen/widgets/widget_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(),
      ).copyWith(
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Poppins',
            ),
        accentColor: Colors.blueAccent,
        primaryColor: Colors.blueAccent,
        primaryTextTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Poppins',
            ),
        accentTextTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'Poppins',
            ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
            TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      home: HomeWidget(),
    );
  }
}
