import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_india_ui/screens/welcomePage.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class TenthScreen extends StatelessWidget {
  const TenthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 1500.0,
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
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  //ProfileAvatar(),
                  // ClipOval(
                  //   child: ClipPath(
                  //     child: Container(
                  //       padding: EdgeInsets.all(16),
                  //       decoration: BoxDecoration(
                  //         border: Border(
                  //           left: BorderSide(color: Colors.orangeAccent, width: 90),
                  //           right: BorderSide(color: Colors.orangeAccent, width: 90),
                  //           top: BorderSide(color: Colors.orangeAccent, width: 90),
                  //           bottom: BorderSide(color: Colors.orangeAccent, width: 90),
                  //         ),
                  //       ),
                  //     ),
                  //     clipper: ShapeBorderClipper(
                  //       shape: ContinuousRectangleBorder(
                  //         borderRadius: BorderRadius.circular(50),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190),
                    child: Text(
                      "Verification code",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins Bold',
                        color: Colors.grey.shade600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 165),
                    child: Text(
                      'We have sent the verification code to',
                      style: TextStyle(
                        color: Color(0xffb1b1b1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Text(
                        '+9171999999999. ',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Change Phone Number? ',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 190),
                    child: OTPTextField(
                      length: 4,
                      width: 200,
                      fieldWidth: 80,
                      spaceBetween: 3.1,
                      style: TextStyle(
                        fontSize: 2,
                        height: 20,
                        color: Colors.grey,
                        backgroundColor: Colors.grey,
                      ),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.box,
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  SizedBox(
                    height: 12,
                  ),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Text(
                  //         'Don\'t' ' Receive OTP?',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w900,
                  //           fontSize: 20,
                  //           color: Colors.black,
                  //         ),
                  //       ),
                  //     ),
                  //     Text(
                  //       'Resend',
                  //       style: TextStyle(
                  //         color: Color(0xff7d1fa3),
                  //         fontWeight: FontWeight.w900,
                  //         fontSize: 27,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 12,
                  // ),
                  // Text(
                  //   'By Proceeding, you confirm that you accept our',
                  //   style: TextStyle(
                  //     fontSize: 17,
                  //     fontWeight: FontWeight.normal,
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 50),
                  //   child: Row(
                  //     children: [
                  //       Text(
                  //         'Terms of Use',
                  //         style: TextStyle(
                  //           color: Color(0xfffcc761),
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.normal,
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 2,
                  //       ),
                  //       Text(
                  //         'and ',
                  //         style: TextStyle(
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.normal,
                  //         ),
                  //       ),
                  //       Text(
                  //         'Privacy Policy.',
                  //         style: TextStyle(
                  //           color: Color(0xfffcc761),
                  //           fontSize: 15,
                  //           fontWeight: FontWeight.normal,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // TextButton.icon(
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) {
                  //           return const EleventhScreen();
                  //         }),
                  //       );
                  //     },
                  //     icon: Icon(Icons.navigate_next_outlined),
                  //     label: Text('next page')),
                  SizedBox(
                    height: 260,
                  ),
                  Row(
                    children: [
                      ResendPacks(),
                      SizedBox(
                        width: 6,
                      ),
                      ConfirmPacks(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 103,
          backgroundColor: Colors.purple,
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/images/pro.jpg'),
          ),
        ),
        Positioned(
          bottom: 40,
          right: 20,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (builder) => bottomSheet(),
              );
            },
            child: FaIcon(
              FontAwesomeIcons.camera,
              color: Color(0xffffb702),
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}

class bottomSheet extends StatefulWidget {
  bottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<bottomSheet> createState() => _bottomSheetState();
}

class _bottomSheetState extends State<bottomSheet> {
  ImagePicker picker = ImagePicker();
  String imagepath = "";
  XFile? imageFile;

  openImage() async {
    try {
      var pickedFile = await picker.pickImage(source: ImageSource.gallery);
      //you can use ImageCourse.camera for Camera capture
      if (pickedFile != null) {
        imagepath = pickedFile.path;

        setState(() {
          imageFile = pickedFile;
        });
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Text(
              'Choose a profile Photos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () async {
                    var image =
                        await picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      //update UI
                      imageFile = image;
                    });
                    image == null ? Container() : Image.file(File(image!.path));
                  },
                  icon: FaIcon(FontAwesomeIcons.camera),
                  label: Text(
                    "Camera",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    openImage();
                  },
                  icon: Icon(
                    Icons.image,
                  ),
                  label: Text(
                    'GALLERY',
                    style: TextStyle(
                      fontSize: 12,
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

class ResendPacks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
          border: Border.all(color: Colors.indigo, width: 1),
        ),
        width: 170,
        child: InkWell(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return WelcomePage();
                }),
              );
            },
            child: Text(
              'Confirm',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}

class ConfirmPacks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
            topLeft: Radius.circular(15.0),
          ),
        ),
        width: 170,
        child: InkWell(
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return WelcomePage();
                }),
              );
            },
            child: Text(
              'Confirm',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
}
