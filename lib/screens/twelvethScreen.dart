import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_india_ui/new.dart';
import 'package:my_india_ui/screens/thirteenthScreen.dart';

class TwelvethScreen extends StatelessWidget {
  const TwelvethScreen({Key? key}) : super(key: key);

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
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            // image: DecorationImage(
            //   fit: BoxFit.fill,
            //   image: AssetImage(
            //     'assets/images/bg1.jpg',
            //   ),
            // ),
          ),
          child: ListView(
            children: [
              Container(
                height: 260,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  //borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    firstContainer(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              secondWidget(),
              SizedBox(
                height: 8,
              ),
              gridList(),
              SizedBox(
                height: 14,
              ),
              Container(
                height: 230,
                decoration: BoxDecoration(
                  color: Color(0xfff5f4fc),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    thirdWidget(),
                    secondColumnRowWidget(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                height: 80,
                width: 100,
                child: Row(
                  children: [
                    textRow(),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        border:
                            Border.all(color: Colors.grey.shade300, width: 2),
                        //borderRadius: BorderRadius.circular(20),
                      ),
                      child: DropdownMenuItem(
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.black,
                            size: 24,
                          ),
                          label: Text(
                            'Till Date',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                child: Text(
                  'No enquiry Yet',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Promote Your Business with people',
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    //color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 15,
              ),
              socialMediaRow(),
              TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const NewPage();
                      }),
                    );
                  },
                  icon: Icon(Icons.navigate_next_outlined),
                  label: Text('next page')),
              boostContainer(),
              offersContainer(context),
              Olinegrowth(),
              SizedBox(
                height: 10,
              ),
              Image(
                image: AssetImage('assets/images/logo text- gradient.png'),
                width: 60,
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }

  Container offersContainer(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Align(
              child: Text(
                'Market Offers',
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Align(
              child: Text(
                'Explore tools that can help run your business better',
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.black26,
                    fontWeight: FontWeight.normal),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          growContainer(),
        ],
      ),
    );
  }
}

class Olinegrowth extends StatelessWidget {
  const Olinegrowth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: MediaQuery.of(context).size.width,
      color: Color(0xfff5f4fc),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Online Growth Stats',
                      style: GoogleFonts.lato(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      'Learn How make myindiaa work for you',
                      style: GoogleFonts.lato(
                          fontStyle: FontStyle.normal,
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                height: 60,
                width: 120,
                child: DropdownMenuItem(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.black,
                      size: 24,
                    ),
                    label: Text(
                      'Till Date',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
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
            height: 80,
            width: 340,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: FaIcon(
                    FontAwesomeIcons.eye,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  'All Visits',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(
                  Icons.exposure_zero,
                  size: 40,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xfff5f4fc),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
              ),
            ),
            height: 80,
            width: 340,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  'Unique Visits',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(
                  Icons.exposure_zero,
                  size: 40,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 18,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
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
            height: 80,
            width: 340,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: FaIcon(
                    FontAwesomeIcons.addressCard,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Address View',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.exposure_zero,
                  size: 40,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xfff5f4fc),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
              ),
            ),
            height: 80,
            width: 340,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Icon(
                    Icons.how_to_reg,
                    color: Colors.cyan,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Newsletter subscribers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                Icon(
                  Icons.exposure_zero,
                  size: 40,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 14,
                  color: Colors.cyan,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class boostContainer extends StatelessWidget {
  const boostContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade400,
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Align(
              child: Text(
                'Boost Academy',
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Align(
              child: Text(
                'Learn How to make myIndiaa work for you',
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          groceryContainer(),
        ],
      ),
    );
  }
}

class groceryContainer extends StatelessWidget {
  const groceryContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff10a213),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        //borderRadius: BorderRadius.circular(20),
      ),
      height: 230,
      width: 350,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Text(
                  'learn!',
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'How to Set up ',
                    style: GoogleFonts.lato(
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Text(
                  'Your Grocery Store! ',
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.normal,
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
          Image(
            image: AssetImage('assets/images/fruit1.jpg'),
            width: 120,
            height: 130,
          ),
        ],
      ),
    );
  }
}

class growContainer extends StatelessWidget {
  const growContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        //borderRadius: BorderRadius.circular(20),
      ),
      height: 230,
      width: 350,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              children: [
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Text(
                      'Grow More',
                      style: GoogleFonts.lato(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'with new plans',
                      style: GoogleFonts.lato(
                          fontStyle: FontStyle.normal,
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      //borderRadius: BorderRadius.circular(20),
                    ),
                    child: Align(
                      child: Text(
                        'New Plans ',
                        style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                            fontSize: 24,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.w900),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              //borderRadius: BorderRadius.circular(20),
            ),
            height: 190,
            width: 150,
            child: Image(
              image: AssetImage('assets/images/fruit1.jpg'),
              width: 40,
              height: 10,
            ),
          ),
        ],
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
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      height: 230,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 16),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/logo text- gradient.png",
                  height: 40,
                  width: 120,
                ),
                SizedBox(
                  width: 194,
                ),
                Icon(
                  Icons.account_circle_rounded,
                  color: Colors.white,
                  size: 50,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              border: Border.all(color: Colors.white, width: 2),
              //borderRadius: BorderRadius.circular(20),
            ),
            height: 60,
            width: 342,
            child: Center(
              child: Text(
                'Share Business Card',
                style: TextStyle(
                  //backgroundColor: Colors.brown,
                  fontSize: 12.0,
                  fontFamily: 'Poppins Black',

                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              border: Border.all(color: Colors.white, width: 2),
              //borderRadius: BorderRadius.circular(20),
            ),
            height: 60,
            width: 342,
            child: Center(
              child: Text(
                'Share Festival Wishes',
                style: TextStyle(
                  //backgroundColor: Colors.brown,
                  fontSize: 10.0,
                  fontFamily: 'Poppins Black',

                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

secondWidget() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Share Business Cards',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 15,
              fontFamily: 'Poppins Bold',
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Most Frequently used Actions to manage',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins Black',
              color: Colors.black38,
            ),
          ),
        ),
      ],
    ),
  );
}

class gridList extends StatefulWidget {
  @override
  State<gridList> createState() => _gridListState();
}

class _gridListState extends State<gridList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 35,
      mainAxisSpacing: 35,
      crossAxisCount: 4,
      shrinkWrap: true,
      childAspectRatio: (1 / 1.4),
      children: [
        Container1(),
        Container2(),
        Container3(),
        Container4(),
        Container5(),
        Container6(),
      ],
    );
  }
}

Container1() {
  return Container(
    height: 150,
    width: 400,
    child: Column(
      children: [
        FaIcon(
          FontAwesomeIcons.fileEdit,
          color: Colors.blue,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Post Today\s ' + '\n' 'Update',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
          ),
        ),
      ],
    ),
  );
}

Container2() {
  return Column(
    children: [
      Align(
        child: FaIcon(
          FontAwesomeIcons.camera,
          color: Colors.blue,
        ),
        alignment: Alignment.center,
      ),
      SizedBox(
        height: 8,
      ),
      Text('Post New ' + '\n' 'Photos'),
    ],
  );
}

Container3() {
  return Column(
    children: [
      Align(
        child: FaIcon(
          FontAwesomeIcons.cartShopping,
          color: Colors.blue,
        ),
        alignment: Alignment.center,
      ),
      SizedBox(
        height: 8,
      ),
      Text('Add An ' + '\n' 'Order'),
    ],
  );
}

Container4() {
  return Column(
    children: [
      Align(
        child: Icon(
          Icons.inventory_2_rounded,
          color: Colors.blue,
        ),
        alignment: Alignment.center,
      ),
      SizedBox(
        height: 8,
      ),
      Text('Add a ' + '\n' 'Product'),
    ],
  );
}

Container5() {
  return Column(
    children: [
      Icon(
        Icons.chat,
        color: Colors.blue,
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        'Add Customer' + '\n' 'Testimonial',
        style: TextStyle(fontSize: 10),
      ),
    ],
  );
}

Container6() {
  return Column(
    children: [
      Icon(
        Icons.article,
        color: Colors.blue,
      ),
      SizedBox(
        height: 8,
      ),
      Text('Add a Custom  ' + '\n' 'Page'),
    ],
  );
}

class columnWigetwithRow extends StatelessWidget {
  const columnWigetwithRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              child: Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.message,
                    size: 14,
                  ),
                  Text(
                    'Post Today\s ' +
                        '\n'
                            'Update',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              width: 65,
            ),
            Container(
              child: Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.camera,
                    size: 14,
                  ),
                  Text(
                    'Post New ' +
                        '\n'
                            'Photos',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              width: 65,
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    size: 14,
                  ),
                  Text(
                    'Add an ' +
                        '\n'
                            'Order',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              width: 65,
            ),
            Container(
              child: Column(
                children: [
                  FaIcon(
                    FontAwesomeIcons.box,
                    size: 14,
                  ),
                  Text(
                    'Add a ' +
                        '\n'
                            'Product',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Container(
              child: Column(
                children: [
                  FaIcon(FontAwesomeIcons.message),
                  Text(
                    'Add Customer' +
                        '\n'
                            'Testimonial',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              width: 65,
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    Icons.message,
                    size: 14,
                  ),
                  Text(
                    'Add a custom ' +
                        '\n'
                            'Page',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

thirdWidget() {
  return Padding(
    padding: const EdgeInsets.only(left: 13),
    child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Engage Your Customers',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              fontFamily: 'Poppins Bold',
              color: Colors.black,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Access all activated features in your plan',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins Black',
              color: Colors.black45,
            ),
          ),
        ),
      ],
    ),
  );
}

class secondColumnRowWidget extends StatelessWidget {
  const secondColumnRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(
                      Icons.local_mall,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Customer ' +
                          '\n'
                              'orders',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                width: 65,
              ),
              Container(
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.camera,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Customer' +
                          '\n'
                              'Calls',
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                width: 65,
              ),
              Container(
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.cartShopping,
                      color: Colors.blue,
                    ),
                    Text(
                      'Customer ' +
                          '\n'
                              'Message',
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 40),
        //   child: Container(
        //     decoration: BoxDecoration(
        //       border: Border.all(color: Colors.black, width: 2),
        //       color: Colors.white,
        //       borderRadius: const BorderRadius.only(
        //         topLeft: Radius.circular(10.0),
        //         topRight: Radius.circular(10.0),
        //         bottomLeft: Radius.circular(10.0),
        //         bottomRight: Radius.circular(10.0),
        //       ),
        //       //borderRadius: BorderRadius.circular(20),
        //     ),
        //     height: 46,
        //     width: 120,
        //     child: Center(
        //       child: Text(
        //         'Show all',
        //         style: TextStyle(
        //           //backgroundColor: Colors.brown,
        //           fontSize: 10.0,
        //           fontFamily: 'Poppins Black',
        //           fontWeight: FontWeight.bold,
        //           color: Colors.black,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

textRow() {
  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Align(
            child: Text(
              'Business Report',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                fontFamily: 'Poppins Bold',
                color: Colors.black,
              ),
            ),
            alignment: Alignment.topLeft,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'How Your Business has performed online',
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 12,
              fontFamily: 'Poppins Black',
              color: Colors.black12,
            ),
          ),
        ),
      ],
    ),
  );
}

textRow2() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, bottom: 240),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 50),
          child: Align(
            child: Text(
              'Online Growth Stats',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                fontFamily: 'Poppins Bold',
                color: Colors.black,
              ),
            ),
            alignment: Alignment.topLeft,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Learn How to make myindiaa work for you',
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 12,
              fontFamily: 'Poppins Black',
              color: Colors.black12,
            ),
          ),
        ),
      ],
    ),
  );
}

socialMediaRow() {
  return Column(
    children: [
      Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            //borderRadius: BorderRadius.circular(20),
          ),
          height: 66,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/whatapp.png'),
                  height: 35,
                  width: 45,
                  //color: Colors.white,
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  'Share on whatapp',
                  style: TextStyle(
                    //backgroundColor: Colors.brown,
                    fontSize: 15.0,
                    fontFamily: 'Poppins Black',
                    fontWeight: FontWeight.bold,
                    //color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
      SizedBox(
        height: 10,
      ),
      Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            //color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            //borderRadius: BorderRadius.circular(20),
          ),
          height: 66,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage(
                      'assets/images/icons8-facebook-messenger-48.png'),
                  height: 35,
                  width: 45,
                  //color: Colors.white,
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  'Share on Messenger',
                  style: TextStyle(
                    //backgroundColor: Colors.brown,
                    fontSize: 15.0,
                    fontFamily: 'Poppins Black',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
      SizedBox(
        height: 10,
      ),
      Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            //color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            //borderRadius: BorderRadius.circular(20),
          ),
          height: 66,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/icons8-instagram-40.png'),
                  height: 35,
                  width: 45,
                  // color: Colors.white,
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  'Share on Instagram',
                  style: TextStyle(
                    //backgroundColor: Colors.brown,
                    fontSize: 15.0,
                    fontFamily: 'Poppins Black',
                    fontWeight: FontWeight.bold,
                    //color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
      SizedBox(
        height: 10,
      ),
      Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            //color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            //borderRadius: BorderRadius.circular(20),
          ),
          height: 66,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/icons8-telegram-app-48.png'),
                  height: 35,
                  width: 45,
                  // color: Colors.white,
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  'Share on Telegram',
                  style: TextStyle(
                    //backgroundColor: Colors.brown,
                    fontSize: 15.0,
                    fontFamily: 'Poppins Black',
                    fontWeight: FontWeight.bold,
                    //color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
      SizedBox(
        height: 10,
      ),
      Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            //color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            //borderRadius: BorderRadius.circular(20),
          ),
          height: 66,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/icons8-gmail-logo-48.png'),
                  height: 35,
                  width: 45,
                  //color: Colors.white,
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  'Share on Email',
                  style: TextStyle(
                    //backgroundColor: Colors.brown,
                    fontSize: 15.0,
                    fontFamily: 'Poppins Black',
                    fontWeight: FontWeight.bold,
                    //color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
      SizedBox(
        height: 10,
      ),
      Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            //color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            //borderRadius: BorderRadius.circular(20),
          ),
          height: 66,
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/images/icons8-share-48.png'),
                  height: 35,
                  width: 45,
                  //color: Colors.white,
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  'Share on Others',
                  style: TextStyle(
                    //backgroundColor: Colors.brown,
                    fontSize: 15.0,
                    fontFamily: 'Poppins Black',
                    fontWeight: FontWeight.bold,
                    //color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
    ],
  );
}
