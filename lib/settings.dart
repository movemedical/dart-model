import 'foundation.dart';

part 'settings.g.dart';

abstract class SettingsActions extends AppStatefulActions<SettingsState,
    SettingsStateBuilder, SettingsActions> {
  FieldDispatcher<ThemeName> get themeName;

  SettingsActions._();

  factory SettingsActions(SettingsActionsOptions options) = _$SettingsActions;
}

abstract class SettingsState
    implements Built<SettingsState, SettingsStateBuilder> {
  ThemeName get themeName;

  SettingsState._();

  factory SettingsState([updates(SettingsStateBuilder b)]) = _$SettingsState;

  static Serializer<SettingsState> get serializer => _$settingsStateSerializer;
}

class ThemeName extends EnumClass {
  static const ThemeName dark = _$wireDark;
  static const ThemeName light = _$wireLight;

  const ThemeName._(String name) : super(name);

  static BuiltSet<ThemeName> get values => _$themeNameValues;

  static ThemeName valueOf(String name) => _$themeNameValueOf(name);

  static Serializer<ThemeName> get serializer => _$themeNameSerializer;
}
