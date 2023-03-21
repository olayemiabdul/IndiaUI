import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_india_ui/ninethScreen.dart';

class EighthScreen extends StatelessWidget {
  const EighthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        bottomSheet: bottomplate(),
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
              Center(
                child: Image.asset(
                  "assets/images/flag.gif",
                  height: 250.0,
                  width: 3000,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              // Center(
              //   child: Text(
              //     'Let ' + '\n' 'Support' + '\n' 'India' + '\n' 'Together',
              //     style: TextStyle(
              //       fontFamily: 'Poppins Bold',
              //       fontSize: 30,
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ),
              Align(
                child: Text(
                  // 'We Support ' + '\n' 'The MSME industry',
                  'Let ',
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                child: Text(
                  // 'We Support ' + '\n' 'The MSME industry',
                  'Support ',
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                child: Text(
                  // 'We Support ' + '\n' 'The MSME industry',
                  'India ',
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                child: Text(
                  // 'We Support ' + '\n' 'The MSME industry',
                  'Together ',
                  style: TextStyle(
                    fontFamily: 'Poppins Bold',
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class bottomplate extends StatelessWidget {
  const bottomplate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
      ),
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const NinethScreen();
            }),
          );
        },
        child: Text(
          'I\'m' ' ' 'In',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
