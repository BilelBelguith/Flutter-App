import 'dart:async';

import 'package:bank_project/First_Screen.dart';
import 'package:bank_project/Form.dart';
import 'package:flutter/material.dart';

import 'AnimationScrenn.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:1), (){
      Navigator.push(context, AnimationScreen(widget: First_Screen()));
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: Colors.black,
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/zit3.png' ),
              SizedBox(height: 40,),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              )

            ],
          ),
        ),
      ),
    );
  }
}
