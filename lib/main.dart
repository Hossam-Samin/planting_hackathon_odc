import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home Page/My_Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Test",
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(
        builder: (context) => const MyHomePage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(100),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "La",
              style: TextStyle(
                  fontFamily: "Great_Vibes",
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.only(top: 55, bottom: 100),
              child: Image.asset(
                "images/Branding and Packaging.png",
                height: 30,
              ),
            ),
            const Text(
              "Vie",
              style: TextStyle(
                  fontFamily: "Great_Vibes",
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
    );
  }
}
