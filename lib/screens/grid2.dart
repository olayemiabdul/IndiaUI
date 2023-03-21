import 'package:flutter/material.dart';
import 'package:my_india_ui/SecondScreen.dart';
import 'package:my_india_ui/TenthScreen.dart';
import 'package:my_india_ui/eighthScreen.dart';
import 'package:my_india_ui/fifthScreen.dart';
import 'package:my_india_ui/firtScreen.dart';
import 'package:my_india_ui/fourthScreen.dart';
import 'package:my_india_ui/new.dart';
import 'package:my_india_ui/ninethScreen.dart';
import 'package:my_india_ui/screen15.dart';
import 'package:my_india_ui/screens/SetUpWebsite.dart';
import 'package:my_india_ui/screens/Set_Up_Website.dart';
import 'package:my_india_ui/screens/businessPage.dart';
import 'package:my_india_ui/screens/eleventhScreen.dart';
import 'package:my_india_ui/screens/fourteenth.dart';
import 'package:my_india_ui/screens/twelvethScreen.dart';
import 'package:my_india_ui/screens/websiteDetailPage.dart';
import 'package:my_india_ui/screens/welcomePage.dart';
import 'package:my_india_ui/sixthScreen.dart';
import 'package:my_india_ui/thirdScreen.dart';

class PageAccount extends StatelessWidget {
  const PageAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].

      controller: controller,
      children: const <Widget>[
        FirstScreen(),
        SecondScreen(),
        ThirdScreen(),
        FourthScreen(),
        FifthScreen(),
        SixthScreen(),
        // SevenThScreen(),
        EighthScreen(),
        NinethScreen(),
        TenthScreen(),
        BusinessPage(),
        WelcomePage(),
        Setupwebsite(),
        WebsiteSetup(),
        WebstiteDetails(),
        EleventhScreen(),
        TwelvethScreen(),
        NewPage(),
        fourteenthScreen(),
        Screen15(),
      ],
    );
  }
}
