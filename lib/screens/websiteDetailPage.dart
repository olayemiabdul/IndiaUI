import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_india_ui/screens/eleventhScreen.dart';
import 'package:steps_indicator/steps_indicator.dart';

class WebstiteDetails extends StatefulWidget {
  const WebstiteDetails({Key? key}) : super(key: key);

  @override
  State<WebstiteDetails> createState() => _WebstiteDetails();
}

List<String> options = ['Option 1', 'Option 2'];

class _WebstiteDetails extends State<WebstiteDetails> {
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
                // // ),
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
                ListTile(
                  title: const Text('What is the name your Business?'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'This will help us pick the best available websiteaddress for you.',
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
                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 80,
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                      padding: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 51, 204, 255), width: 1),
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Positioned(
                        left: 50,
                        top: 12,
                        child: Container(
                          padding:
                              EdgeInsets.only(bottom: 10, left: 10, right: 10),
                          color: Colors.white,
                          child: Text(
                            'What is your Business Name',
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return EleventhScreen();
                      }),
                    );
                  },
                  icon: Icon(Icons.arrow_forward_ios_outlined),
                  label: Text('NextPage'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
