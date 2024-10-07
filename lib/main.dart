import 'package:flutter/material.dart';
import 'package:flutter_ex1/screen/dice_screen.dart';
import 'package:flutter_ex1/screen/eight_ball.dart';
import 'package:flutter_ex1/screen/home_screen.dart';
import 'package:flutter_ex1/screen/i_am_rich.dart';
import 'package:flutter_ex1/screen/miCard_screen.dart';
import 'package:flutter_ex1/utils/colors.dart';

import 'constant/routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        loginRoute: (context) =>const MiCardScreen(),
      },

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: primaryColor,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: backGroundColor,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          iconTheme: IconThemeData(
            color: primaryColor,
          ),
        ),
      ),
      routes: {
          IAmRichScreen.routeName: (context) => const IAmRichScreen(),
          MiCardScreen.routeName: (context) => const MiCardScreen(),
          DiceScreen.routeName: (context) => const DiceScreen(), 
          EightBallScreen.routeName: (context) => const EightBallScreen(), 
          HomeScreen.routeName: (context) => const HomeScreen(),
        },
      home: const HomeScreen(),
    );
  }
}
