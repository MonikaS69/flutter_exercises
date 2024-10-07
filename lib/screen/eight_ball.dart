import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ex1/screen/home_screen.dart';
import 'package:flutter_ex1/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class EightBallScreen extends StatefulWidget {
  static String routeName = '/eightBall';
  const EightBallScreen({super.key});

  @override
  State<EightBallScreen> createState() => _EightBallScreenState();
}

class _EightBallScreenState extends State<EightBallScreen> {
  int ballNumber = 1;
  void changeBallNumb(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.pop(context, HomeScreen.routeName);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: backGroundBtnColor,
              ),
            );
          },
        ),
        centerTitle: true,
        title: Text(
          "Ask Me Anything",
          style: GoogleFonts.sora(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: IconButton(
              onPressed: () {
                changeBallNumb();
              },
              icon: Image.asset('assets/img/balls/ball$ballNumber.png'),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
