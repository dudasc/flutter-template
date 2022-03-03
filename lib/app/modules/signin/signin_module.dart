import 'package:flutter_template/app/modules/signin/pages/signin_Page.dart';
import 'package:flutter_template/app/modules/signin/store/signin_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SigninModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SigninStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SigninPage()),
  ];
}
