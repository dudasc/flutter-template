import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/config/themes/dark_theme.dart';
import 'package:flutter_template/app/config/themes/light_theme.dart';
import 'package:flutter_template/app/modules/shared/theme/theme_model.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer<ThemeModel>(
        builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            title: 'Flutter Slidy',
            theme: themeNotifier.isDark ? darkTheme : lightTheme,
          ).modular();
        },
      ),
    );
  }
}
