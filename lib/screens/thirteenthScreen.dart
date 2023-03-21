// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:my_india_ui/constant.dart';
//
// class ThirteenthScreen extends StatelessWidget {
//   const ThirteenthScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Screen 13'),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.white,
//         shape: const CircularNotchedRectangle(),
//         child: Container(
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20.0),
//               topRight: Radius.circular(20.0),
//               bottomLeft: Radius.circular(1.0),
//               bottomRight: Radius.circular(1.0),
//             ),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Stack(
//                 children: [
//                   Positioned(
//                     child: IconButton(
//                       icon: FaIcon(FontAwesomeIcons.home),
//                       color: Colors.black,
//                       onPressed: () {},
//                     ),
//                   ),
//                   const Text(
//                     'Dashboard',
//                     style: kbottomStyle,
//                   ),
//                 ],
//               ),
//               Stack(
//                 children: [
//                   IconButton(
//                     icon: FaIcon(
//                       FontAwesomeIcons.computer,
//                       color: Colors.black,
//                     ),
//                     onPressed: () {},
//                   ),
//                   const Text(
//                     'Website',
//                     style: kbottomStyle,
//                   ),
//                 ],
//               ),
//               Stack(
//                 children: [
//                   IconButton(
//                     icon: FaIcon(FontAwesomeIcons.message),
//                     color: Colors.black,
//                     onPressed: () {},
//                   ),
//                   const Text(
//                     'Enquiries',
//                     style: kbottomStyle,
//                   ),
//                 ],
//               ),
//               Stack(
//                 children: [
//                   Text(
//                     'Add-ons',
//                     style: kbottomStyle,
//                   ),
//                   IconButton(
//                     icon: FaIcon(FontAwesomeIcons.gift),
//                     color: Colors.black,
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//               Stack(
//                 children: [
//                   IconButton(
//                     icon: const Icon(Icons.menu),
//                     color: Colors.black,
//                     onPressed: () {},
//                   ),
//                   const Text(
//                     'More',
//                     style: kbottomStyle,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: AssetImage(
//                 'assets/images/bg1.jpg',
//               ),
//             ),
//           ),
//           child: Column(
//             children: [
//               Container(
//                 height: 150,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: const BoxDecoration(
//                   color: Color(0xfffcc761),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(15.0),
//                     bottomRight: Radius.circular(15.0),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     firstWidget(),
//                     secondWidget(),
//                     thirdWidget(),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               fourthWidget(),
//               SizedBox(
//                 height: 5,
//               ),
//               fifthWidget(),
//               SixthWidget(),
//               SizedBox(
//                 height: 5,
//               ),
//               lastWigets(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Padding SixthWidget() {
//     return Padding(
//       padding: const EdgeInsets.only(left: 10),
//       child: Row(children: [
//         Container(
//           height: 20,
//           width: 120,
//           child: Text(
//             'Content',
//             style: TextStyle(
//               color: Color(0xffffba24),
//               fontSize: 20,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 100,
//         ),
//         Container(
//           height: 20,
//           width: 120,
//           child: Text(
//             'Features',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
//
//   Container fifthWidget() {
//     return Container(
//       height: 35,
//       decoration: const BoxDecoration(
//         color: Color(0xffecc671),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(15.0),
//           bottomRight: Radius.circular(15.0),
//           topLeft: Radius.circular(15.0),
//           topRight: Radius.circular(15.0),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 8),
//         child: ListTile(
//           leading: Text(
//             'Website Customization',
//             style: TextStyle(
//               fontWeight: FontWeight.w900,
//               fontFamily: 'Poppin Black',
//               fontSize: 15,
//               color: Colors.white,
//             ),
//           ),
//           trailing: Icon(
//             Icons.arrow_forward_ios_outlined,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
//
//   Container fourthWidget() {
//     return Container(
//       height: 35,
//       decoration: const BoxDecoration(
//         color: Color(0xffecc671),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(15.0),
//           bottomRight: Radius.circular(15.0),
//           topLeft: Radius.circular(15.0),
//           topRight: Radius.circular(15.0),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(bottom: 8),
//         child: ListTile(
//           leading: Text(
//             'Business Hours',
//             style: TextStyle(
//               fontWeight: FontWeight.w900,
//               fontFamily: 'Poppin Black',
//               fontSize: 15,
//               color: Colors.white,
//             ),
//           ),
//           title: Stack(
//             children: [
//               Align(
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 8),
//                   child: Container(
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(15.0),
//                         bottomRight: Radius.circular(15.0),
//                         topLeft: Radius.circular(15.0),
//                         topRight: Radius.circular(15.0),
//                       ),
//                     ),
//                     height: 30,
//                     width: 60,
//                   ),
//                 ),
//                 alignment: Alignment.centerRight,
//               ),
//               Positioned(
//                 left: 135,
//                 bottom: 8,
//                 top: 2.5,
//                 child: Text(
//                   'Closed',
//                   style: TextStyle(
//                     color: Colors.red,
//                   ),
//                 ),
//               )
//             ],
//           ),
//           trailing: Padding(
//             padding: const EdgeInsets.only(bottom: 30),
//             child: Icon(
//               Icons.arrow_forward_ios_outlined,
//               color: Colors.white,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Container thirdWidget() {
//     return Container(
//       height: 15,
//       decoration: const BoxDecoration(
//         color: Color(0xffecc671),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(15.0),
//           bottomRight: Radius.circular(15.0),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(
//           left: 8,
//         ),
//         child: Align(
//           child: Text(
//             'Manage Business Profile',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 14,
//               fontFamily: 'Poppins Bold',
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           alignment: Alignment.centerLeft,
//         ),
//       ),
//     );
//   }
//
//   Container secondWidget() {
//     return Container(
//       height: 75,
//       decoration: const BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(15.0),
//           bottomRight: Radius.circular(15.0),
//           topRight: Radius.circular(15.0),
//           topLeft: Radius.circular(15.0),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   decoration: const BoxDecoration(
//                     color: Colors.green,
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(10.0),
//                       bottomRight: Radius.circular(10.0),
//                       topRight: Radius.circular(10.0),
//                       topLeft: Radius.circular(10.0),
//                     ),
//                   ),
//                   height: 60,
//                   width: 80,
//                 ),
//                 Positioned(
//                   bottom: 20,
//                   height: 30,
//                   child: Column(
//                     children: [
//                       FaIcon(
//                         FontAwesomeIcons.plus,
//                         size: 14,
//                         color: Color(0xffc8ba9f),
//                       ),
//                       Text(
//                         'Add Logo',
//                         style: TextStyle(
//                           color: Color(0xffc8ba9f),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               width: 20,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'NAME',
//                   style: TextStyle(
//                     color: Color(0xffc8ba9f),
//                     fontSize: 20,
//                     fontWeight: FontWeight.w900,
//                     fontFamily: 'Poppins Bold',
//                   ),
//                   textAlign: TextAlign.start,
//                 ),
//                 Row(
//                   children: [
//                     FaIcon(FontAwesomeIcons.solidEnvelope),
//                     Text('https://name.myindiaa.com'),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   ListTile firstWidget() {
//     return ListTile(
//       leading: const Text(
//         'Website',
//         style: TextStyle(
//           fontFamily: 'Poppin Black',
//           fontSize: 20,
//           fontWeight: FontWeight.w900,
//           color: Colors.white,
//         ),
//       ),
//       title: Align(
//         alignment: Alignment.topRight,
//         child: Row(
//           children: [
//             const SizedBox(
//               width: 135,
//             ),
//             const FaIcon(
//               FontAwesomeIcons.whatsapp,
//               size: 14,
//               color: Color(0xff50ad53),
//             ),
//             const SizedBox(
//               width: 19,
//             ),
//             const Text(
//               'Share',
//               style: TextStyle(
//                 fontFamily: 'Poppin Black',
//                 fontSize: 15,
//                 fontWeight: FontWeight.w900,
//                 color: Colors.white,
//               ),
//             )
//           ],
//         ),
//       ),
//       trailing: const Icon(
//         Icons.more_vert,
//         size: 24,
//         color: Colors.white,
//       ),
//     );
//   }
// }
//
// class lastWigets extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Color(0xffecc671),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(15.0),
//                     bottomRight: Radius.circular(15.0),
//                     topLeft: Radius.circular(15.0),
//                     topRight: Radius.circular(15.0),
//                   ),
//                 ),
//                 height: 130,
//                 width: 150,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 8),
//                             child: Text(
//                               '0',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 30,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 100,
//                           ),
//                           Icon(
//                             Icons.square_rounded,
//                             size: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       'Image Gallery',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontFamily: 'Poppins Bold',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Text(
//                       'Upload and manage your',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                     Text(
//                       'Website Images in one place',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Color(0xffecc671),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(15.0),
//                     bottomRight: Radius.circular(15.0),
//                     topLeft: Radius.circular(15.0),
//                     topRight: Radius.circular(15.0),
//                   ),
//                 ),
//                 height: 130,
//                 width: 150,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 8),
//                             child: Text(
//                               '0',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 30,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 100,
//                           ),
//                           Icon(
//                             Icons.square_rounded,
//                             size: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       'Image Gallery',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontFamily: 'Poppins Bold',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Text(
//                       'Upload and manage your',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                     Text(
//                       'Website Images in one place',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Color(0xffecc671),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(15.0),
//                     bottomRight: Radius.circular(15.0),
//                     topLeft: Radius.circular(15.0),
//                     topRight: Radius.circular(15.0),
//                   ),
//                 ),
//                 height: 130,
//                 width: 150,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 8),
//                             child: Text(
//                               '0',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 30,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 100,
//                           ),
//                           Icon(
//                             Icons.square_rounded,
//                             size: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       'Image Gallery',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontFamily: 'Poppins Bold',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Text(
//                       'Upload and manage your',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                     Text(
//                       'Website Images in one place',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Color(0xffecc671),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(15.0),
//                     bottomRight: Radius.circular(15.0),
//                     topLeft: Radius.circular(15.0),
//                     topRight: Radius.circular(15.0),
//                   ),
//                 ),
//                 height: 130,
//                 width: 150,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 8),
//                             child: Text(
//                               '0',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 30,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 100,
//                           ),
//                           Icon(
//                             Icons.square_rounded,
//                             size: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       'Image Gallery',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontFamily: 'Poppins Bold',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Text(
//                       'Upload and manage your',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                     Text(
//                       'Website Images in one place',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Color(0xffecc671),
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(15.0),
//                     bottomRight: Radius.circular(15.0),
//                     topLeft: Radius.circular(15.0),
//                     topRight: Radius.circular(15.0),
//                   ),
//                 ),
//                 height: 130,
//                 width: 150,
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 8),
//                             child: Text(
//                               '0',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 30,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 100,
//                           ),
//                           Icon(
//                             Icons.square_rounded,
//                             size: 20,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       'Image Gallery',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontFamily: 'Poppins Bold',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Text(
//                       'Upload and manage your',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                     Text(
//                       'Website Images in one place',
//                       style: TextStyle(
//                         fontSize: 8,
//                         fontFamily: 'Poppins Bold',
//                         color: Color(0xffdee1e6),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: 20,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
