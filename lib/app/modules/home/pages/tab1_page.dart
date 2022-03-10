import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/modules/home/components/swiper_component.dart';
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
        automaticallyImplyLeading: false,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: SizedBox(
          height: 160,
          child: SwiperComponent()
        ),
      ),
    );
  }
}
