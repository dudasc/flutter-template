import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/modules/home/store/home_store.dart';

class Tab1Page extends StatefulWidget {
  final String title;
  const Tab1Page({Key? key, this.title = 'Tab1Page'}) : super(key: key);
  @override
  Tab1PageState createState() => Tab1PageState();
}

class Tab1PageState extends ModularState<Tab1Page, HomeStore> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  List<String> data = [];

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
