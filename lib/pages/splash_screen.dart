import 'dart:async';

import 'package:flutter/material.dart';
import './login_page.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override 
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Loginpage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/logo.png',
              width: 500,
              height: 500,
            )
          ],
        ),
      ), 
    );
  }
}
