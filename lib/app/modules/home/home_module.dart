import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/modules/home/pages/account_page.dart';
import 'package:flutter_template/app/modules/shared/pages/about_page.dart';
import 'package:flutter_template/app/modules/home/pages/home_page.dart';
import 'package:flutter_template/app/modules/home/store/home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
    ChildRoute('/perfil', child: (_, args) => const AccountPage()),
    ChildRoute(
      '/about',
      child: (_, args) => const AboutPage(),
      transition: TransitionType.rightToLeft,
    ),
  ];
}
