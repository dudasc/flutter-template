import 'package:flutter/material.dart';

class BottomSheetComponent extends StatefulWidget {
  final String title;
  const BottomSheetComponent({Key? key, this.title = 'BottomSheetComponent'}) : super(key: key);
  @override
  BottomSheetComponentState createState() => BottomSheetComponentState();
}

class BottomSheetComponentState extends State<BottomSheetComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Modal BottomSheet'),
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
    );
  }
}
