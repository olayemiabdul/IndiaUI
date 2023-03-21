import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_india_ui/screens/SetUpWebsite.dart';
import 'package:steps_indicator/steps_indicator.dart';

class WebsiteSetup extends StatefulWidget {
  const WebsiteSetup({Key? key}) : super(key: key);

  @override
  State<WebsiteSetup> createState() => _WebsiteSetupState();
}

List<String> options = ['Option 1', 'Option 2'];

class _WebsiteSetupState extends State<WebsiteSetup> {
  String currentOption = options[0];
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
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.black,
                        size: 24,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Setup my website',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                          ),
                          border: Border.all(color: Colors.amber, width: 1),
                        ),
                        height: 22,
                        width: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.question_mark_sharp,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                backgroundColor: Colors.amber,
                                radius: 6,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              'HELP',
                              style: GoogleFonts.lato(
                                textStyle:
                                    TextStyle(fontSize: 6, color: Colors.amber),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //
                // StepProgressIndicator(
                //   totalSteps: 6,
                //   currentStep: 1,
                //   size: 36,
                //   selectedColor: Colors.black,
                //   unselectedColor: Colors.grey,
                //   customStep: (index, color, _) => color == Colors.black
                //       ? CircleAvatar(
                //           backgroundColor: Colors.green,
                //           child: Icon(
                //             Icons.check,
                //             color: Colors.white,
                //           ),
                //         )
                //       : CircleAvatar(
                //           backgroundColor: Colors.amber,
                //           child: Icon(
                //             Icons.remove,
                //           ),
                //         ),
                // ),

                StepsIndicator(
                  selectedStep: 0,
                  nbSteps: 4,
                  lineLength: 100,
                  selectedStepColorIn: Colors.green,
                  selectedStepColorOut: Colors.white,
                  doneStepSize: 10,
                  selectedStepSize: 23,
                  unselectedStepSize: 15,
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  height: 70,
                  width: 330,
                  child: ListTile(
                    title: const Text('Hospitality Business'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'e.g Hotels, including loading facilities, paying guest accomadation',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: 8,
                        )),
                      ),
                    ),
                    tileColor: Colors.orangeAccent,
                    onTap: () {},
                    leading: const Icon(Icons.hotel_sharp),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  height: 100,
                  width: 330,
                  child: ListTile(
                    title: const Text('Restaurants, Cafes and Eateries'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'E.g Family Restaurants,Tiffins/ BreaFast centers, Cafes etc',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: 8,
                        )),
                      ),
                    ),
                    tileColor: Colors.orangeAccent,
                    onTap: () {},
                    leading: const Icon(Icons.restaurant),
                    trailing: Radio(
                      value: options[0],
                      groupValue: currentOption,
                      hoverColor: Colors.white,
                      activeColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          //currentOption = value.toString();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  height: 100,
                  width: 330,
                  child: ListTile(
                    title: const Text('Beauties and MakeUp Saloon'),
                    tileColor: Colors.orangeAccent,
                    onTap: () {},
                    leading: const Icon(Icons.coffee_maker),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'E.g Hair treatment, Facial, Pedicure, manicure, Hair styling etc',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: 8,
                        )),
                      ),
                    ),
                    trailing: Radio(
                      value: options[0],
                      groupValue: currentOption,
                      hoverColor: Colors.white,
                      activeColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          //currentOption = value.toString();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  height: 100,
                  width: 330,
                  child: ListTile(
                    title: const Text('Manufacture & equipment business'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'E.g chemicals,Hardwares, industrial equipment manufacture etc',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: 8,
                        )),
                      ),
                    ),
                    tileColor: Colors.orangeAccent,
                    onTap: () {},
                    leading: const Icon(Icons.factory),
                    trailing: Radio(
                      value: options[0],
                      groupValue: currentOption,
                      hoverColor: Colors.white,
                      activeColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          //currentOption = value.toString();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  height: 100,
                  width: 330,
                  child: ListTile(
                    title: const Text('Retail and E-Commerce Business'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'E.g Tesco store, General Stationary, Clothing stores, Boutiques etc',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: 8,
                        )),
                      ),
                    ),
                    tileColor: Colors.orangeAccent,
                    onTap: () {},
                    leading: const Icon(Icons.storefront),
                    trailing: Radio(
                      value: options[0],
                      groupValue: currentOption,
                      hoverColor: Colors.white,
                      activeColor: Colors.white,
                      onChanged: (value) {
                        setState(() {
                          //currentOption = value.toString();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                  height: 100,
                  width: 330,
                  child: ListTile(
                    title: const Text('Professional Service Provider'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'E.g Medical Service, Architectural services, Real-estate etc',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: 8,
                        )),
                      ),
                    ),
                    tileColor: Colors.orangeAccent,
                    onTap: () {},
                    leading: const Icon(Icons.groups),
                    trailing: Radio(
                      value: options[0],
                      groupValue: currentOption,
                      hoverColor: Colors.white,
                      activeColor: Colors.amber,
                      onChanged: (value) {
                        setState(() {
                          currentOption = value.toString();
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.amber,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Setupwebsite();
                        }),
                      );
                    },
                    child: InkWell(
                      child: Text('Next'),
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
