// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const customSwatch = MaterialColor(
    0xFFFF5252,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: Color(0xFFFF5252),
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customSwatch,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Share Plus"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Share eclectify University with your friends:',),
            SizedBox(height: 10,),
            IconButton(onPressed: sharePressed, icon: Icon(Icons.share, color: Colors.redAccent,)),
            Image.asset("assets/lunch_break.png", width: MediaQuery.of(context).size.width*0.6,),
          ],
        ),
      ),
    );
  }

  void sharePressed() {
    String message = 'Check out eclectify University, where you can become an '
        'Elite Flutter Developer in no time: https://eclectify-universtiy.web.app';
    Share.share(message);

    /// optional subject that will be used when sharing to email
    // Share.share(message, subject: 'Become An Elite Flutter Developer');

    /// share a file
    // Share.shareFiles(['${directory.path}/image.jpg'], text: 'Great picture');
    /// share multiple files
    // Share.shareFiles(['${directory.path}/image1.jpg', '${directory.path}/image2.jpg']);
  }

}

