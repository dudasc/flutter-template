import 'package:flutter/material.dart';

class Tab3Page extends StatefulWidget {
  final String title;
  const Tab3Page({Key? key, this.title = 'Tab3Page'}) : super(key: key);
  @override
  Tab3PageState createState() => Tab3PageState();
}

class Tab3PageState extends State<Tab3Page> {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Index 2: School',
          style: optionStyle,
        ),
      ),
    );
  }
}
