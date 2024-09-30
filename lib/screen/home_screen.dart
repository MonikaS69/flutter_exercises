import 'package:flutter/material.dart';
import 'package:flutter_ex1/screen/dice_screen.dart';
import 'package:flutter_ex1/screen/i_am_rich.dart';
import 'package:flutter_ex1/screen/miCard_screen.dart';
import 'package:flutter_ex1/utils/colors.dart';
import 'package:flutter_ex1/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, IAmRichScreen.routeName);
                  },
                  text: "I am Rich",
                  backgroundColor: backGroundBtnColor,
                  textColor: textBtnColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, MiCardScreen.routeName);
                  },
                  text: "MiCard",
                  backgroundColor: backGroundBtnColor,
                  textColor: textBtnColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, DiceScreen.routeName);
                  },
                  text: "Dice",
                  backgroundColor: backGroundBtnColor,
                  textColor: textBtnColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, MiCardScreen.routeName);
                  },
                  text: "MiCard",
                  backgroundColor: backGroundBtnColor,
                  textColor: textBtnColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, MiCardScreen.routeName);
                  },
                  text: "MiCard",
                  backgroundColor: backGroundBtnColor,
                  textColor: textBtnColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
