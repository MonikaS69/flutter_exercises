import 'package:flutter/material.dart';
import 'package:flutter_ex1/screen/home_screen.dart';
import 'package:flutter_ex1/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MiCardScreen extends StatefulWidget {
  static String routeName = "/MiCardScreen";

  const MiCardScreen({super.key});

  @override
  State<MiCardScreen> createState() => _MiCardScreenState();
}

class _MiCardScreenState extends State<MiCardScreen> {
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
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/img/john_pork.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "John Pork",
                style: GoogleFonts.dancingScript(
                    fontSize: 50, fontWeight: FontWeight.w700),
              ),
              Text(
                "Flutter Developer",
                style:
                    GoogleFonts.abel(fontSize: 45, fontWeight: FontWeight.w200),
              ),
              const Divider(
                color: Colors.black,
                endIndent: 30,
                indent: 30,
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: iconColor,
                  ),
                  title: Text(
                    "johnpork2021@gmail.com",
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: iconColor,
                  ),
                  title: Text(
                    "0376195269",
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
