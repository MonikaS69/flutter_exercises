import 'package:flutter/material.dart';
import 'package:flutter_ex1/screen/home_screen.dart';
import 'package:flutter_ex1/utils/colors.dart';

class DiceScreen extends StatefulWidget {
  static String routeName = '/diceScreen';
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
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
      ),
    );
  }
}