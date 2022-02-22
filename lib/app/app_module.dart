import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/pages/splash_page.dart';
import 'package:flutter_template/app/modules/signin/signin_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const SplashPage(),
    ),
    ModuleRoute('/login', module: SigninModule()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}
