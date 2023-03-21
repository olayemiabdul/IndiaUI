import 'package:flutter/material.dart';
import 'package:my_india_ui/thirdScreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 8)).then((value) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return const ThirdScreen();
        }),
      );
    });
  }

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
            Center(
              child: Image.asset(
                "assets/images/1.gif",
                height: 400.0,
                width: 400.0,
              ),
            ),
            Align(
              child: Text(
                // 'We Support ' + '\n' 'The MSME industry',
                'We Support ',
                style: TextStyle(
                  fontFamily: 'Poppins Bold',
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
              alignment: Alignment.center,
            ),
            Text(
              'The MSME industry',
              style: TextStyle(
                fontFamily: 'Poppins Bold',
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            RaisedGradientButton(
                child: TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const ThirdScreen();
                      }),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.amber,
                  ),
                  label: Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.amber.shade900,
                    Colors.amberAccent.shade400
                  ],
                ),
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient? gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    required this.child,
    this.gradient,
    this.width = 100,
    this.height = 50.0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        gradient: gradient,
        boxShadow: [
          BoxShadow(
            color: Colors.amber,
            offset: Offset(0.0, 1.5),
            blurRadius: 1.5,
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
          topLeft: Radius.circular(15.0),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: () {},
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
