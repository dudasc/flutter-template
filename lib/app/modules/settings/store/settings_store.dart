import 'package:flutter_template/app/modules/settings/view_model/settings_view_model.dart';
import 'package:flutter_triple/flutter_triple.dart';

class SettingsStore extends StreamStore<Exception, SettingsViewModel> {
  SettingsStore() : super(SettingsViewModel());
}
