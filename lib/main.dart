import 'package:flutter/material.dart';
import 'package:my_india_ui/screens/grid2.dart';

void main() => runApp(MyIndiaaApp());

class MyIndiaaApp extends StatelessWidget {
  const MyIndiaaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageAccount(),
    );
  }
}
