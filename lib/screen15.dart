import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_india_ui/constant.dart';
import 'package:my_india_ui/screens/grid2.dart';
import 'package:my_india_ui/screens/twelvethScreen.dart';

import 'firtScreen.dart';

class Screen15 extends StatelessWidget {
  const Screen15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.dashboard, title: 'Dashboard'),
          TabItem(icon: Icons.web, title: 'Website'),
          TabItem(icon: Icons.chat, title: 'Enquiries'),
          TabItem(
            icon: Icons.card_giftcard,
            title: 'Add-ons',
          ),
          TabItem(icon: Icons.menu, title: 'More'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                firstContainer(),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Align(
                    child: Text(
                      'Webinar !',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DetailContainer(),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Align(
                    child: Text('Featured Packs',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                        )),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: thirdContainer(),
                ),
                SizedBox(
                  height: 10,
                ),
                comparePacks(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Align(
                    child: Text(
                      'Recommended for Retails Businesses',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Poppins-Black',
                          fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                columnWigetwithRow(),
                SizedBox(
                  height: 10,
                ),
                viewAll(),
                SizedBox(
                  height: 15,
                ),
                lastContainer(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'Need help to decide?',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins Bold',
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              'Talk to our experts!',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins Bold',
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: FaIcon(
                                  FontAwesomeIcons.phone,
                                  color: Colors.purple,
                                ),
                              ),
                              Text(
                                'Call Now',
                                style: TextStyle(
                                  color: Color(0xffda16fc),
                                  fontFamily: 'Poppins Bold',
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container viewAll() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffd500fa),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
          topLeft: Radius.circular(15.0),
        ),
      ),
      width: 360,
      height: 50,
      child: Center(
          child: Text(
        'View All',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      )),
    );
  }

  Container comparePacks() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffd500fa),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
          topLeft: Radius.circular(15.0),
        ),
      ),
      width: 360,
      height: 50,
      child: Center(
          child: Text(
        'Compare Packs',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      )),
    );
  }
}

class lastContainer extends StatelessWidget {
  const lastContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
        //borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Align(
              child: Text(
                'Add-ons by category',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: 'Poppins Black'),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.how_to_reg,
                color: Colors.amber,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Identity',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: 'Poppins Black'),
              ),
              SizedBox(
                width: 140,
              ),
              Icon(
                Icons.exposure_zero,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.amber,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.cell_tower_outlined,
                color: Colors.green,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Communication',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: 'Poppins Black'),
              ),
              SizedBox(
                width: 80,
              ),
              Icon(
                Icons.exposure_zero,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.green,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(Icons.notifications_active),
              SizedBox(
                width: 30,
              ),
              Text(
                'Marketing',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: 'Poppins Black'),
              ),
              SizedBox(
                width: 120,
              ),
              Icon(
                Icons.exposure_zero,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.blue,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(Icons.person),
              SizedBox(
                width: 30,
              ),
              Text(
                'Content Management ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontFamily: 'Poppins Black'),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.exposure_zero,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Icon(Icons.arrow_forward_ios_outlined,
                  color: Colors.blue.shade200),
            ],
          ),
        ],
      ),
    );
  }
}

class thirdContainer extends StatelessWidget {
  const thirdContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xfff3f3f3),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
          border: Border.all(
            color: Colors.grey.shade300,
            width: 2,
          )),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
              topLeft: Radius.circular(30.0),
            ),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/heli.jpg',
              ),
            ),
          ),

          width: 40,
          // child: Icon(
          //   Icons.flight,
          //   color: Color(0xfff3f3f3),
          // ),
        ),
        title: Column(
          children: [
            Text(
              'Online Basic',
              style: kResultStyle,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                    ),
                  ),
                  height: 30,
                  width: 70,
                  child: Center(
                    child: Text(
                      '15%',
                      style: TextStyle(
                        backgroundColor: Colors.yellow,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '\₹480.84/mth',
                  style: TextStyle(
                    textBaseline: TextBaseline.alphabetic,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      new TextSpan(
                        text: '\₹565.69/mth',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color(0xffffb702),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  height: 42,
                  width: 130,
                  child: Center(
                      child: Text(
                    'Add to Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: 'Poppins Bold',
                    ),
                  )),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  height: 42,
                  width: 130,
                  child: Center(
                      child: Text(
                    'Details',
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontFamily: 'Poppins Bold',
                    ),
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class firstContainer extends StatelessWidget {
  const firstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                'Add-ons Store',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins-Black',
                ),
              ),
              SizedBox(
                width: 135,
              ),
              FaIcon(
                FontAwesomeIcons.cartShopping,
                size: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 25,
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    '0',
                    style: TextStyle(
                      fontFamily: 'Poppins-Bold',
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  // SizedBox(
                  //   width: 20,
                  //   //height: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Free forever',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppin Black',
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  // SizedBox(
                  //   width: 20,
                  //   //height: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(
                      'ADD-ONS',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppin Black',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 80,
              ),
              FaIcon(
                FontAwesomeIcons.gift,
                size: 60,
                color: Colors.white,
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
              ),
            ),
            height: 40,
            width: 340,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'View my Add-ons',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ),
                SizedBox(
                  width: 130,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailContainer extends StatelessWidget {
  const DetailContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff223148),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      height: 300,
      width: 330,
      child: Align(
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15, top: 20),
                child: Align(
                  child: Text('FREE Webinar!', style: kAbdulStyle),
                  alignment: Alignment.topLeft,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Align(
                  child: Text(
                      'Join our experts to learn how Myindiaa' +
                          '\n' 'can help you reach more customers.',
                      style: kLabelStyle),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Row(
                  children: [
                    Text(
                      'Date:',
                      style: kLabelStyle,
                    ),
                    Text(
                      '4th May 2022',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Time:',
                      style: kLabelStyle,
                    ),
                    Text(
                      '3 to 4 pm',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 59),
                    child: Container(
                      width: 120,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return FirstScreen();
                            }),
                          );
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Image(
                    image: AssetImage('assets/images/webinar.png'),
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
            ],
          ),
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}
