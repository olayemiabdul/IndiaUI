import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_india_ui/screens/businessPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: 2000.0,
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
        child: Column(
          children: [
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.pinkAccent,
                    Colors.yellowAccent,
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 70,
                    //right: 10,
                    bottom: 50,
                    child: Transform.rotate(
                      angle: math.pi / 8,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 250, top: 190),
                        child: Container(
                          // transform: ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white.withOpacity(0.2),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/images/logo1.png',
                              ),
                              colorFilter: ColorFilter.mode(
                                // Colors.white.withOpacity(1),
                                Colors.transparent.withOpacity(0.6),
                                BlendMode.modulate,
                              ),
                            ),
                          ),
                          height: 350,
                          width: 150,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    // right: 150,
                    top: 30,
                    child: Transform.rotate(
                      angle: -math.pi / 8,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 80,
                        ),
                        child: Container(
                          // transform: ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white.withOpacity(0.6),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/images/logo1.png',
                              ),
                              colorFilter: ColorFilter.mode(
                                // Colors.white.withOpacity(1),
                                Colors.transparent.withOpacity(0.6),
                                BlendMode.modulate,
                              ),
                            ),
                          ),
                          height: 350,
                          width: 140,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 110,
                    //right: 200,
                    top: 50,
                    child: Align(
                      child: Container(
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
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 140),
                          child: Column(children: [
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  color: Colors.black,
                                ),
                                width: 180,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'ORDER NOW',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  color: Colors.amber,
                                ),
                                width: 180,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'BOOK A WEBSITE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  color: Colors.black,
                                ),
                                width: 180,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'CONTACT US',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )),
                          ]),
                        ),
                        height: 350,
                        width: 200,
                      ),
                      alignment: Alignment.topRight,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 220),
              child: Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Let You go Online'),
            SizedBox(
              height: 40,
            ),
            SetUp(),
          ],
        ),
      ),
    );
  }
}

class SetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
          border: Border.all(color: Colors.black, width: 1),
        ),
        width: 310,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return BusinessPage();
              }),
            );
          },
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return BusinessPage();
                }),
              );
            },
            child: Text(
              'Set Up My Website',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
        ));
  }
}
