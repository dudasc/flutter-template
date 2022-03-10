// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperComponent extends StatefulWidget {
  final String title;
  const SwiperComponent({Key? key, this.title = 'SwiperComponent'}) : super(key: key);
  @override
  SwiperComponentState createState() => SwiperComponentState();
}

class SwiperComponentState extends State<SwiperComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey.shade300,
          );
        },
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
