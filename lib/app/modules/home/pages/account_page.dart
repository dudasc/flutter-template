// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  final String title;
  const AccountPage({Key? key, this.title = 'AccountPage'}) : super(key: key);
  @override
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: .0,
        shape: const Border(
          bottom: BorderSide(color: Colors.orange, width: 2),
        ),
      ),
      body: const Center(
        child: Text(
          'Perfil',
          style: optionStyle,
        ),
      ),
    );
  }
}
