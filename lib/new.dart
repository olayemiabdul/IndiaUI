import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_india_ui/fifthScreen.dart';
import 'package:my_india_ui/fourthScreen.dart';
import 'package:my_india_ui/gridView.dart';
import 'package:my_india_ui/screens/fourteenth.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
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
      appBar: AppBar(
        backgroundColor: Colors.amber.shade600,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              //container for amber.shade600
              height: 390,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.amber.shade600,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: ListView(children: [
                Row(
                  //topmost row for displaying
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Website',
                        style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Image(
                      image: AssetImage('assets/images/whatapp.png'),
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Share',
                      style: GoogleFonts.aBeeZee(color: Colors.white),
                    ),
                    PopupMenuButton(
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 35,
                      ),
                      onSelected: (value) {
                        // your logic
                      },
                      color: Colors.white,
                      iconSize: 30,
                      itemBuilder: (BuildContext bc) {
                        return [
                          PopupMenuItem(
                            child: Text("Hello"),
                            value: '/hello',
                          ),
                          PopupMenuItem(
                            child: Text("About"),
                            value: '/about',
                          ),
                          PopupMenuItem(
                            child: Text("Contact"),
                            value: '/contact',
                          )
                        ];
                      },
                    )
                  ],
                ),
                Align(
                  //the big with the addlogo and the rest
                  child: Container(
                    height: 200,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          //color: Colors.white,

                          ),
                      child: Stack(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(top: 30),
                            decoration: BoxDecoration(
                              color: Color(0xffD8D7DC),
                              // border: Border.all(
                              //   color: Colors.red,
                              //   width: 5,
                              // ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ),
                            ),
                          ),
                          Positioned(
                            child: Column(
                              children: [
                                SizedBox.fromSize(
                                  size: Size(40, 40),
                                  child: ClipOval(
                                    child: Material(
                                      color: Colors.white60,
                                      child: InkWell(
                                        splashColor: Colors.green,
                                        onTap: () {},
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.add,
                                              color: Color(0xffD8D7DC),
                                              size: 12,
                                            ), // <-- Icon
                                            Text(
                                              "Add logo",
                                              style: GoogleFonts.lato(
                                                fontStyle: FontStyle.normal,
                                                fontSize: 10,
                                                color: Color(0xffD8D7DC),
                                              ),
                                            ), // <-- Text
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            height: 70,
                            width: 60,
                            left: 15,
                            bottom: 105,
                          ),
                          Positioned(
                            child: Text(
                              'Name',
                              // style:
                              style: GoogleFonts.lato(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                            height: 60,
                            width: 100,
                            left: 120,
                            bottom: 120,
                          ),
                          Positioned(
                            child: Icon(
                              Icons.web,
                              color: Colors.white,
                            ),
                            height: 60,
                            width: 250,
                            left: 6,
                            bottom: 110,
                          ),
                          Positioned(
                            child: Text(
                              'https://lttrbxtech.com',
                              style: GoogleFonts.lato(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                            height: 60,
                            width: 250,
                            left: 150,
                            bottom: 92,
                          ),
                          Positioned(
                            child: Image(
                              image: AssetImage(
                                'assets/images/noti.jpg',
                              ),
                            ),
                            height: 60,
                            width: 250,
                            left: 770,
                            bottom: 110,
                          ),
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.amber.shade100,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                              ),
                              height: 20,
                              width: MediaQuery.of(context).size.width,
                              child: Align(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Manage Business Profile',
                                    style: GoogleFonts.lato(
                                        fontStyle: FontStyle.normal,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            height: 60,
                            width: 900,
                            left: 0,
                            bottom: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  child: Container(
                    //conatiner for Business hour
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade600,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Business Hour',
                            style: GoogleFonts.lato(
                                fontStyle: FontStyle.normal,
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 30),
                        Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              height: 30,
                              width: 110,
                            ),
                            Positioned(
                              child: Text('Closed',
                                  style: GoogleFonts.lato(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold)),
                              bottom: 7,
                              left: 28,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  child: Container(
                    //container for website customization
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade600,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Website Customization',
                            style: GoogleFonts.lato(
                                fontStyle: FontStyle.normal,
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(width: 70),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ]),
            ),
            Container(
              //container that conatin the carousel
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xff373737),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                border: Border.all(color: Color(0xff1F1F1F), width: 2),
              ),
              child: Column(
                children: [
                  Text(
                    '100% Business Awareness and Improvement',
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [],
                  ),
                  CarouselSlider(
                    items: [
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/1.gif'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                          ),
                          child: Align(
                            child: Text(
                              'We Support ' + '\n' 'the MSME industry',
                              style: TextStyle(
                                fontFamily: 'Poppins Bold',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          height: 350,
                          width: 1600,
                        ),
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/2.gif'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                          ),
                          height: 110,
                          width: 1600,
                          child: Align(
                            child: Text(
                              'We Support ' + '\n' 'the MSME industry',
                              style: TextStyle(
                                fontFamily: 'Poppins Bold',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          height: 110,
                          width: 1600,
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/3.gif'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                          ),
                          child: Align(
                            child: Text(
                              'We Support ' + '\n' 'Entrepreneurship',
                              style: TextStyle(
                                fontFamily: 'Poppins Bold',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const FourthScreen();
                          }));
                        },
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/4.gif'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                          ),
                          height: 110,
                          width: 1600,
                          child: Align(
                            child: Text(
                              'We Support ' + '\n' 'Make in India',
                              style: TextStyle(
                                fontFamily: 'Poppins Bold',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const FifthScreen();
                          }));
                        },
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/5.gif'),
                              fit: BoxFit.cover,
                            ),
                            color: Colors.white,
                          ),
                          child: Align(
                            child: Text(
                              'Empowerment ' + '\n' 'of India',
                              style: TextStyle(
                                fontFamily: 'Poppins Bold',
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          height: 110,
                          width: 1600,
                        ),
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return const SevenThScreen();
                          // }));
                        },
                      ),
                    ],
                    options: CarouselOptions(
                      height: 250.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 1600),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
            ),
            DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                        labelColor: Colors.amber.shade600,
                        unselectedLabelColor: Colors.teal,
                        tabs: [
                          Tab(
                            text: 'Content',
                          ),
                          Tab(
                            text: 'Features',
                          )
                        ],
                      ),
                      height: 100,
                    )
                  ],
                )),
            Align(
              child: Container(
                //ontainer for gridview
                height: 600,
                width: 1100,
                color: Colors.white,
                child: abdulList(),
              ),
              alignment: Alignment.center,
            ),

            TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const fourteenthScreen ();
                    }),
                  );
                },
                icon: Icon(Icons.navigate_next_outlined),
                label: Text('next page')),
          ],
        ),
      ),
    );
  }
}
