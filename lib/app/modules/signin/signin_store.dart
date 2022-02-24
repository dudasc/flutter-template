import 'package:flutter/material.dart';
import 'package:flutter_template/app/modules/signin/view_model/login_view_model.dart';
import 'package:flutter_triple/flutter_triple.dart';

class SigninStore extends NotifierStore<Exception, LoginViewModel> {
  SigninStore() : super(LoginViewModel());

  login(BuildContext context) {
    if (state.getUsername != 'admin' || state.getPassword != 'admin') {
      final snackBar = SnackBar(
        backgroundColor: Colors.red.shade400,
        content: const Text('Username or password incorrect.'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      return;
    }

    _onLoading(context);
  }

  void _onLoading(context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CircularProgressIndicator(),
                SizedBox(
                  width: 16,
                ),
                Text("Loading"),
              ],
            ),
          ),
        );
      },
    );

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pop(context); //pop dialog
      Navigator.pushNamed(context, '/home');
    });
  }

  // Future<void> _showDialog(context) async {
  //   return showDialog<void>(
  //     context: context,
  //     barrierDismissible: false, // user must tap button!
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('AlertDialog Title'),
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: const <Widget>[
  //               Text('This is a demo alert dialog.'),
  //               Text('Would you like to approve of this message?'),
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: const Text('Cancel'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //           TextButton(
  //             child: const Text('Ok'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //               Navigator.pushNamed(context, '/home');
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
