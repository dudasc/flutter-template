import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/modules/settings/pages/settings_page.dart';
import 'package:flutter_template/app/modules/settings/store/settings_store.dart';

class SettingsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SettingsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const SettingsPage(),
      transition: TransitionType.rightToLeft,
    ),
  ];
}
