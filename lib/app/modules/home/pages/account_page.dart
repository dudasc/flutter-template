import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  final String title;
  const AccountPage({Key? key, this.title = 'AccountPage'}) : super(key: key);
  @override
  AccountPageState createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(context, routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              children: ListTile.divideTiles(context: context, tiles: [
                ListTile(
                  title: const Text('Settings'),
                  onTap: () => _onItemTapped(context, '/settings/'),
                  leading: const Icon(Icons.settings),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
                ),
                ListTile(
                  title: const Text('About'),
                  onTap: () => _onItemTapped(context, '/home/about/'),
                  leading: const Icon(Icons.help),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
                ),
              ]).toList(),
            ),
          ),
        ]),
      ),
    );
  }
}
