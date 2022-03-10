import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_template/app/modules/settings/components/bottom_sheet_component.dart';
import 'package:flutter_template/app/modules/settings/store/settings_store.dart';
import 'package:flutter_template/app/modules/settings/view_model/settings_view_model.dart';
import 'package:flutter_template/app/modules/shared/theme/theme_model.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  final String title;

  const SettingsPage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends ModularState<SettingsPage, SettingsStore> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, ThemeModel themeNotifier, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Settings'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () => Navigator.of(context).pop(),
            ),
            elevation: .0,
          ),
          body: ScopedBuilder<SettingsStore, Exception, SettingsViewModel>(
            store: store,
            onState: (_, state) {
              return Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      children: ListTile.divideTiles(context: context, tiles: [
                        ListTile(
                            title: const Text('Dark theme'),
                            subtitle: themeNotifier.isDark ? const Text('Enabled') : const Text('Disabled'),
                            //onTap: () => state.darkTheme,
                            trailing: IconButton(
                                icon: Icon(themeNotifier.isDark ? Icons.nightlight_round : Icons.wb_sunny),
                                onPressed: () {
                                  themeNotifier.isDark ? themeNotifier.isDark = false : themeNotifier.isDark = true;
                                })),
                        ListTile(
                          title: const Text('Other setting'),
                          onTap: () => false,
                          trailing: Switch(
                              value: state.otherConfig,
                              onChanged: (value) {
                                setState(() {
                                  state.otherConfig = value;
                                });
                              }),
                        ),
                        ListTile(
                          title: const Text('Show modal bottom sheet'),
                          onTap: () => {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) => const BottomSheetComponent(),
                            ),
                          },
                        ),
                      ]).toList(),
                    ),
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
