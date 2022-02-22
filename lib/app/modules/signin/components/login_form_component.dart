// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'package:flutter_template/app/modules/signin/view_model/login_view_model.dart';
// import 'package:flutter_triple/flutter_triple.dart';

// import '../signin_store.dart';

// class LoginFormComponent extends StatefulWidget {
//   final Function(LoginViewModel loginInfo) login;

//   const LoginFormComponent({required this.login, Key? key}) : super(key: key);

//   @override
//   _LoginFormState createState() => _LoginFormState();
// }

// class _LoginFormState extends ModularState<LoginFormComponent, SigninStore> {
//   @override
//   Widget build(BuildContext context) {
//     return ScopedBuilder<SigninStore, String, LoginViewModel>(
//       store: store,
//       onState: (context, state) => Column(
//         children: const [
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Username',
//             ),
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'Password',
//             ),
//           ),
//           SizedBox(
//             height: 8,
//           ),
//           SizedBox(
//             width: double.infinity,
//             height: 42,
//             child: ElevatedButton(
//               onPressed: null,
//               child: Text(
//                 "Entrar",
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
