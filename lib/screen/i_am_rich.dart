import 'package:flutter/material.dart';
import 'package:flutter_ex1/screen/home_screen.dart';
import 'package:flutter_ex1/utils/colors.dart';


class IAmRichScreen extends StatefulWidget {
  static String routeName = "/imRichScreen";

  const IAmRichScreen({super.key});

  @override
  State<IAmRichScreen> createState() => _IAmRichScreenState();
}

class _IAmRichScreenState extends State<IAmRichScreen> {
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
      body: Image.asset("assets/img/diamond.png", fit: BoxFit.cover,),
    );
  }
}