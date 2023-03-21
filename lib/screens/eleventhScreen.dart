import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_india_ui/screens/twelvethScreen.dart';

class EleventhScreen extends StatelessWidget {
  const EleventhScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            const Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 30,
              ),
            ),
            Center(child: const ProfileAvatar()),
            const SizedBox(
              height: 12,
            ),
            Center(
              child: const Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins Bold',
                  fontSize: 30,
                ),
              ),
            ),
            Card(
              child: ClipPath(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Color(0xffffba24), width: 10),
                    ),
                  ),
                  height: 60,
                  width: 40,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: 'FULL NAME',
                                hintText: 'Enter Your given name'),
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              child: ClipPath(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.cyanAccent, width: 10),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.email,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                labelText: 'Email',
                                hintText: 'Enter Your registered email'),
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Card(
              child: ClipPath(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.blue, width: 10),
                    ),
                  ),
                  child: Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.mobile,
                        size: 20,
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: '+23470xxxxxxxx',
                                hintText: 'Enter Your Phone details'),
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
              ),
            ),
            SavePacks(),
            const Text(
              'By Proceeding, you confirm that you accept our',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  const Text(
                    'Terms of Use',
                    style: TextStyle(
                      color: Color(0xfffcc761),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    'and ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const Text(
                    'Privacy Policy.',
                    style: TextStyle(
                      color: Color(0xfffcc761),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const TwelvethScreen();
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
          left: 140,
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
        margin: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          children: [
            const Text(
              'Choose a profile Photos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
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
                  icon: const FaIcon(FontAwesomeIcons.camera),
                  label: const Text(
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
                  icon: const Icon(
                    Icons.image,
                  ),
                  label: const Text(
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

class SavePacks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Color(0xff08d77f),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        width: 360,
        child: InkWell(
          child: TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) {
              //     return TenthScreen();
              //   }),
              // );
            },
            child: const Text(
              'SAVE',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ));
  }
}
