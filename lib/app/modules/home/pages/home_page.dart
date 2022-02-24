import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/modules/home/pages/tab1_page.dart';
import 'package:flutter_template/app/modules/home/pages/tab2_page.dart';
import 'package:flutter_template/app/modules/home/pages/account_page.dart';
import 'package:flutter_triple/flutter_triple.dart';
import '../store/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[
    Tab1Page(),
    Tab2Page(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home page'),
      //   systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      //   centerTitle: true,
      //   // leading: IconButton(
      //   //     icon: const Icon(Icons.arrow_back_ios_rounded),
      //   //     onPressed: () {
      //   //       Navigator.pop(context, true);
      //   //     }),
      // ),
      body: ScopedBuilder<HomeStore, Exception, int>(
        store: store,
        onState: (_, store) {
          return Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          );
        },
        onError: (context, error) => const Center(
          child: Text(
            'Too many clicks',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
