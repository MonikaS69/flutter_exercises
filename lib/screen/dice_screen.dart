import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ex1/screen/home_screen.dart';
import 'package:flutter_ex1/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DiceScreen extends StatefulWidget {
  static String routeName = '/diceScreen';
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;
  void changeFaceDice() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
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
          "Dice",
          style: GoogleFonts.sora(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(6),
                child: IconButton(
                    onPressed: () {
                      changeFaceDice();
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Image.asset(
                        'assets/img/dices/dice$rightDiceNumber.png')),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(6),
                child: IconButton(
                  icon: Image.asset('assets/img/dices/dice$leftDiceNumber.png'),
                  onPressed: () {
                    changeFaceDice();
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
