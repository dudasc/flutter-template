// ignore_for_file: prefer_const_constructors

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/app/modules/signin/store/signin_store.dart';
import 'package:flutter_template/app/modules/signin/view_model/login_view_model.dart';
import 'package:flutter_triple/flutter_triple.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({
    Key? key,
  }) : super(key: key);

  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final SigninStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedBuilder<SigninStore, Exception, LoginViewModel>(
        store: store,
        onState: (_, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Flexible(
                fit: FlexFit.tight,
                child: SizedBox(
                  width: 200,
                  child: Image.asset(
                    "../assets/images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Column(
              children: [
                TextField(
                  // onChanged: state.setUsername,
                  onChanged: (value) => setState(() => state.username = value),
                  decoration: InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Username',
                    suffixIcon:  Icon(Icons.person),
                    errorMaxLines: 3,
                    errorStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  // onChanged: state.setPassword,
                  onChanged: (value) => setState(() => state.password = value),
                  decoration: InputDecoration(
                    //border: OutlineInputBorder(),
                    labelText: 'Username',
                    suffixIcon:  Icon(Icons.remove_red_eye),
                    errorMaxLines: 3,
                    errorStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                   
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {
                      store.login(context);
                    },
                    child: Text(
                      "Entrar",
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
