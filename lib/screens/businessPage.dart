import 'package:flutter/material.dart';
import 'package:my_india_ui/screens/Set_Up_Website.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({Key? key}) : super(key: key);

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  String dropdownvalue = 'Online Store';
  var items = [
    'Online Store',
    'Fashion Line',
    'It firms',
    'Telecommunication',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
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
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26),
                child: Column(
                  children: [
                    Center(
                      child: Text('Basic Business Info'),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      child: Text('Store Details'),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                          ),
                        ),
                        height: 60,
                        width: 330,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Store Name',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      child: Text('Business Category'),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                          ),
                        ),
                        height: 60,
                        width: 330,
                        child: Row(
                          children: [
                            Text(
                              'Business Catgory',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            DropdownButton(
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                //value: dropdownvalue,
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(
                                      items,
                                      style: TextStyle(
                                        fontSize: 15,
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
                          ],
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      child: Text('Personal Details'),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                          ),
                        ),
                        height: 60,
                        width: 330,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Personal Details',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      child: Text('Edit Your Store url'),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                          ),
                        ),
                        height: 60,
                        width: 330,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'myindiaa.com',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 160,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0),
                            ),
                          ),
                          height: 60,
                          child: Align(
                            child: InkWell(
                              child: Text('Create Your Store'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return WebsiteSetup();
                                  }),
                                );
                              },
                            ),
                            alignment: Alignment.center,
                          ),
                          width: 360,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
