import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_india_ui/screens/websiteDetailPage.dart';
import 'package:steps_indicator/steps_indicator.dart';

class Setupwebsite extends StatefulWidget {
  const Setupwebsite({Key? key}) : super(key: key);

  @override
  State<Setupwebsite> createState() => _Setupwebsite();
}

List<String> options = ['Option 1', 'Option 2'];

class _Setupwebsite extends State<Setupwebsite> {
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
                // StepProgressIndicator(
                //   totalSteps: 6,
                //   currentStep: 4,
                //   size: 36,
                //   selectedColor: Colors.black,
                //   unselectedColor: Colors.grey,
                //   customStep: (index, color, _) => color == Colors.black
                //       ? CircleAvatar(
                //           backgroundColor: Colors.amber,
                //           child: Icon(
                //             Icons.check,
                //             color: Colors.white,
                //           ),
                //         )
                //       : Container(
                //           color: color,
                //           child: Icon(
                //             Icons.remove,
                //           ),
                //         ),
                // ),
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
                SizedBox(
                  height: 18,
                ),
                ListTile(
                  title: const Text('What is the name of your Business?'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'This will help us understand your business and suggest useful features.',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontSize: 8,
                      )),
                    ),
                  ),
                  tileColor: Colors.orangeAccent,
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 24,
                      ),
                      prefix: Text(
                        'E.g shopKeeper, Doctor, Boutique etc',
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: Text(
                    'Featured Categories:',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
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
                  height: 100,
                  width: 330,
                  child: ListTile(
                    title: const Text('Doctors and Health Specialist'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'e.g Dentist, Gynaecologist, ENT and others from health sector',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: 8,
                        )),
                      ),
                    ),
                    tileColor: Colors.orangeAccent,
                    onTap: () {},
                    leading: Icon(Icons.medication_liquid),
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
                    title: const Text('Education and E-coaching Institute'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'E.g Schools, colleges, Coaching Institute, Tution classes, etc',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                          fontSize: 8,
                        )),
                      ),
                    ),
                    tileColor: Colors.orangeAccent,
                    onTap: () {},
                    leading: const Icon(Icons.school),
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
                    title: const Text('Clinics and hospitals'),
                    tileColor: Colors.orangeAccent,
                    onTap: () {},
                    leading: const Icon(Icons.local_hospital),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'E.g Multi or Super Speciality hospitals and others',
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
                    title: const Text('Wellness spa  and Herbal Care'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'E.g Wellness Spa, herbal care, massage care, skin care and others',
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
                      activeColor: Colors.amber,
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
                    title: const Text('Hotels, Motels and Homestays'),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'E.g Hotels including lodging',
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

                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                  child: TextButton(
                    onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return WebstiteDetails();
                      }),
                    );},
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.black),
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
