// import 'package:flutter/material.dart';
//
// class Header extends StatelessWidget {
//   const Header(this.heading, {super.key});
//   final String heading;
//
//   @override
//   Widget build(BuildContext context) => Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Text(
//           heading,
//           style: const TextStyle(fontSize: 24),
//         ),
//       );
// }
//
// class Paragraph extends StatelessWidget {
//   const Paragraph(this.content, {super.key});
//   final String content;
//   @override
//   Widget build(BuildContext context) => Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//         child: Text(
//           content,
//           style: const TextStyle(fontSize: 18),
//         ),
//       );
// }
//
// class IconAndDetail extends StatelessWidget {
//   const IconAndDetail(this.icon, this.detail, {super.key});
//   final IconData icon;
//   final String detail;
//
//   @override
//   Widget build(BuildContext context) => Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Icon(icon),
//             const SizedBox(width: 8),
//             Text(
//               detail,
//               style: const TextStyle(fontSize: 18),
//             )
//           ],
//         ),
//       );
// }
//
// class StyledButton extends StatelessWidget {
//   const StyledButton({required this.child, required this.onPressed, super.key});
//   final Widget child;
//   final void Function() onPressed;
//
//   @override
//   Widget build(BuildContext context) => OutlinedButton(
//         style: OutlinedButton.styleFrom(
//             side: const BorderSide(color: Colors.deepPurple)),
//         onPressed: onPressed,
//         child: child,
//       );
// }
//
// class StyledRoundedContainer extends StatelessWidget {
//   const StyledRoundedContainer(
//       {Key? key, required this.icon, required this.detail})
//       : super(key: key);
//   final IconData icon;
//   final String detail;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 20,
//       width: 200,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(10.0),
//           bottomRight: Radius.circular(10.0),
//           topLeft: Radius.circular(10.0),
//           topRight: Radius.circular(10.0),
//         ),
//       ),
//       child: Row(
//         children: [
//           Icon(icon),
//           const SizedBox(width: 20),
//           Text(
//             detail,
//             style: const TextStyle(fontSize: 18),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// Container fifthWidget() {
//   return Container(
//     height: 35,
//     decoration: const BoxDecoration(
//       color: Color(0xffecc671),
//       borderRadius: BorderRadius.only(
//         bottomLeft: Radius.circular(15.0),
//         bottomRight: Radius.circular(15.0),
//         topLeft: Radius.circular(15.0),
//         topRight: Radius.circular(15.0),
//       ),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.only(bottom: 8),
//       child: ListTile(
//         leading: Text(
//           'Website Customization',
//           style: TextStyle(
//             fontWeight: FontWeight.w900,
//             fontFamily: 'Poppin Black',
//             fontSize: 15,
//             color: Colors.white,
//           ),
//         ),
//         trailing: Icon(
//           Icons.arrow_forward_ios_outlined,
//           color: Colors.white,
//         ),
//       ),
//     ),
//   );
// }
//
// Container fourthWidget() {
//   return Container(
//     height: 35,
//     decoration: const BoxDecoration(
//       color: Color(0xffecc671),
//       borderRadius: BorderRadius.only(
//         bottomLeft: Radius.circular(15.0),
//         bottomRight: Radius.circular(15.0),
//         topLeft: Radius.circular(15.0),
//         topRight: Radius.circular(15.0),
//       ),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.only(bottom: 8),
//       child: ListTile(
//         leading: Text(
//           'Business Hours',
//           style: TextStyle(
//             fontWeight: FontWeight.w900,
//             fontFamily: 'Poppin Black',
//             fontSize: 15,
//             color: Colors.white,
//           ),
//         ),
//         title: Stack(
//           children: [
//             Align(
//               child: Padding(
//                 padding: const EdgeInsets.only(bottom: 8),
//                 child: Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(15.0),
//                       bottomRight: Radius.circular(15.0),
//                       topLeft: Radius.circular(15.0),
//                       topRight: Radius.circular(15.0),
//                     ),
//                   ),
//                   height: 30,
//                   width: 60,
//                 ),
//               ),
//               alignment: Alignment.centerRight,
//             ),
//             Positioned(
//               left: 135,
//               bottom: 8,
//               top: 2.5,
//               child: Text(
//                 'Closed',
//                 style: TextStyle(
//                   color: Colors.red,
//                 ),
//               ),
//             )
//           ],
//         ),
//         trailing: Padding(
//           padding: const EdgeInsets.only(bottom: 30),
//           child: Icon(
//             Icons.arrow_forward_ios_outlined,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              //color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/images/yb.jpg',
                ),
              ),
            ),
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                //color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 5,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
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
                        FaIcon(
                          FontAwesomeIcons.plus,
                          size: 18,
                          color: Color(0xffc8ba9f),
                        ),
                        Text(
                          'Add Logo',
                          style:
                              TextStyle(color: Color(0xffc8ba9f), fontSize: 8),
                        ),
                      ],
                    ),
                    height: 70,
                    width: 20,
                    left: 50,
                    bottom: 90,
                  ),
                  Positioned(
                    child: Text(
                      'Rama Papad',
                      // style:
                      style: GoogleFonts.lato(fontStyle: FontStyle.italic),
                    ),
                    height: 60,
                    width: 100,
                    left: 120,
                    bottom: 120,
                  ),
                  Positioned(
                    // FaIcon(
                    //   FontAwesomeIcons.internetExplorer,
                    //   size: 10,
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    child: Icon(Icons.web),
                    height: 60,
                    width: 250,
                    left: 8,
                    bottom: 118,
                  ),
                  Positioned(
                    // FaIcon(
                    //   FontAwesomeIcons.internetExplorer,
                    //   size: 10,
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    child: Text(
                      'https://lttrbxtech.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    height: 60,
                    width: 250,
                    left: 170,
                    bottom: 100,
                  ),
                  Positioned(
                    // FaIcon(
                    //   FontAwesomeIcons.internetExplorer,
                    //   size: 10,
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
