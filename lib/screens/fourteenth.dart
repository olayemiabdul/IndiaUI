import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_india_ui/screen15.dart';

class fourteenthScreen extends StatefulWidget {
  const fourteenthScreen({Key? key}) : super(key: key);

  @override
  State<fourteenthScreen> createState() => _fourteenthScreenState();
}

class _fourteenthScreenState extends State<fourteenthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xfff5f4fc),
          // image: DecorationImage(
          //   fit: BoxFit.fill,
          //   image: AssetImage(
          //     'assets/images/bg1.jpg',
          //   ),
          // ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 4,
            ),
            firstContainer(),
            SizedBox(
              height: 40,
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
                      FontAwesomeIcons.businessTime,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    'customer Orders',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 18,
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
                    child: FaIcon(
                      FontAwesomeIcons.phone,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    'customer Calls',
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
                      FontAwesomeIcons.message,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'customer Messages',
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
                      color: Colors.green,
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
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const Screen15();
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

class firstContainer extends StatefulWidget {
  const firstContainer({Key? key}) : super(key: key);

  @override
  State<firstContainer> createState() => _firstContainerState();
}

class _firstContainerState extends State<firstContainer> {
  String dropdownvalue = 'Till Date';
  var items = [
    'Till Date',
    '2022',
    '2021',
    '2020',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xff4edb4e),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Enquires',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins Bold'),
            ),
          ),
          SizedBox(
            width: 140,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 1,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
              ),
            ),
            height: 40,
            width: 120,
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: DropdownButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 30,
                  ),
                  value: dropdownvalue,
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(
                      () {
                        dropdownvalue = value!;
                      },
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
