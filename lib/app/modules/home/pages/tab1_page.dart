import 'package:flutter/material.dart';

class Tab1Page extends StatefulWidget {
  final String title;
  const Tab1Page({Key? key, this.title = 'Tab1Page'}) : super(key: key);
  @override
  Tab1PageState createState() => Tab1PageState();
}

class Tab1PageState extends State<Tab1Page> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

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
      body: entries.isNotEmpty
          ? ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.blue[colorCodes[index]],
                  child: Center(child: Text('Entry ${entries[index]}')),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(),
            )
          : const Center(
              child: Text('No items'),
            ),
    );
  }
}
