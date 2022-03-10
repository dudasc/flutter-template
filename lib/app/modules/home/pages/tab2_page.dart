import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/modules/home/store/home_store.dart';
import 'package:flutter_triple/flutter_triple.dart';
import '../store/home_store.dart';

class Tab2Page extends StatefulWidget {
  final String title;
  const Tab2Page({Key? key, this.title = 'Tab2Page'}) : super(key: key);
  @override
  Tab2PageState createState() => Tab2PageState();
}

class Tab2PageState extends ModularState<Tab2Page, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      body: ScopedBuilder<HomeStore, Exception, int>(
        store: store,
        onState: (_, counter) {
          return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Text('$counter', style: const TextStyle(fontSize: 54)),
                  SizedBox(
                    width: double.infinity,
                    height: 42,
                    child: ElevatedButton(
                      onPressed: () {
                        store.increment();
                      },
                      child: const Text(
                        "Increment",
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ]);
        },
        onError: (context, error) => const Center(
          child: Text(
            'Too many clicks',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
