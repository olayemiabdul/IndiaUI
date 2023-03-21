import 'package:flutter/material.dart';
import 'package:my_india_ui/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  //to naviage to nextscreen automatically
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return const SecondScreen();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: 2000.0,
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   image: DecorationImage(
              //     image: AssetImage(
              //       'assets/images/myindiaa-512-logo.png',
              //     ),
              //   ),
              // ),
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/bg2.png',
                  ),
                  colorFilter: ColorFilter.mode(
                    // Colors.white.withOpacity(1),
                    Colors.transparent.withOpacity(0.05),
                    BlendMode.modulate,
                  ),
                ),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/myindiaa-512-logo.png",
                  height: 400.0,
                  width: 400.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
