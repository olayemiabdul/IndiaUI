import 'package:country_phone_code_picker/core/country_phone_code_picker_widget.dart';
import 'package:country_phone_code_picker/models/country.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_india_ui/TenthScreen.dart';

class NinethScreen extends StatefulWidget {
  const NinethScreen({Key? key}) : super(key: key);

  @override
  State<NinethScreen> createState() => _NinethScreenState();
}

class _NinethScreenState extends State<NinethScreen> {
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
        child: Column(
          children: [
            Image.asset("assets/images/logo1.png", height: 330.0, width: 330.0),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                child: Text('Let\'s' ' ' 'Help You Go Online'),
                alignment: Alignment.centerLeft,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                ),
              ),
              child: ClipPath(
                clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3))),
                child: Container(
                  padding: EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.amber, width: 10),
                    ),
                  ),
                  width: 390,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CountryPhoneCodePicker.withDefaultSelectedCountry(
                        defaultCountryCode: Country(
                            name: 'India', countryCode: 'IN', phoneCode: '+91'),
                        borderWidth: 1,
                        flagBorderRadius: 2,
                        flagHeight: 20,
                        flagWidth: 30,
                        borderColor: Colors.grey,
                        style: const TextStyle(fontSize: 16),
                        searchBarHintText: 'Search by name',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      VerticalDivider(
                        color: Colors.amber,
                        width: 2,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'Mobile Number',
                          ),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 12,
            // ),
            // Card(
            //   child: ClipPath(
            //     child: Container(
            //       padding: EdgeInsets.all(16),
            //       decoration: BoxDecoration(
            //         border: Border(
            //           left: BorderSide(color: Colors.orangeAccent, width: 10),
            //         ),
            //       ),
            //       width: 320,
            //       height: 100,
            //       child: Row(
            //         children: [
            //           Icon(
            //             Icons.lock,
            //             size: 30,
            //           ),
            //           SizedBox(
            //             width: 5,
            //           ),
            //           Expanded(
            //             child: Padding(
            //               padding: EdgeInsets.all(10.0),
            //               child: TextField(
            //                 decoration: InputDecoration(
            //                     labelText: 'Password',
            //                     hintText: 'Enter Your Token details'),
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: Colors.black,
            //                   fontWeight: FontWeight.w900,
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     clipper: ShapeBorderClipper(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(3))),
            //   ),
            // ),

            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Don\'t' ' Have an account?',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xff7d1fa3),
                    fontWeight: FontWeight.w900,
                    fontSize: 27,
                  ),
                ),
              ],
            ),
            Text(
              'By Proceeding, you confirm that you accept our',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  Text(
                    'Terms of Use',
                    style: TextStyle(
                      color: Color(0xfffcc761),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'and ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
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
            SizedBox(
              height: 20,
            ),

            comparePacks(),
          ],
        ),
      ),
    );
  }
}

class comparePacks extends StatelessWidget {
  const comparePacks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xfffcc761),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        height: 40,
        width: 200,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const TenthScreen();
              }),
            );
          },
          child: Center(
            child: Text('Log in'),
          ),
        ));
  }
}
