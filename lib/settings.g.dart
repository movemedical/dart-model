// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ThemeName _$wireDark = const ThemeName._('dark');
const ThemeName _$wireLight = const ThemeName._('light');

ThemeName _$themeNameValueOf(String name) {
  switch (name) {
    case 'dark':
      return _$wireDark;
    case 'light':
      return _$wireLight;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ThemeName> _$themeNameValues =
    new BuiltSet<ThemeName>(const <ThemeName>[
  _$wireDark,
  _$wireLight,
]);

Serializer<SettingsState> _$settingsStateSerializer =
    new _$SettingsStateSerializer();
Serializer<ThemeName> _$themeNameSerializer = new _$ThemeNameSerializer();

class _$SettingsStateSerializer implements StructuredSerializer<SettingsState> {
  @override
  final Iterable<Type> types = const [SettingsState, _$SettingsState];
  @override
  final String wireName = 'movemedical_model/SettingsState';

  @override
  Iterable serialize(Serializers serializers, SettingsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'themeName',
      serializers.serialize(object.themeName,
          specifiedType: const FullType(ThemeName)),
    ];

    return result;
  }

  @override
  SettingsState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SettingsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'themeName':
          result.themeName = serializers.deserialize(value,
              specifiedType: const FullType(ThemeName)) as ThemeName;
          break;
      }
    }

    return result.build();
  }
}

class _$ThemeNameSerializer implements PrimitiveSerializer<ThemeName> {
  @override
  final Iterable<Type> types = const <Type>[ThemeName];
  @override
  final String wireName = 'movemedical_model/ThemeName';

  @override
  Object serialize(Serializers serializers, ThemeName object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  ThemeName deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ThemeName.valueOf(serialized as String);
}

class _$SettingsState extends SettingsState {
  @override
  final ThemeName themeName;

  factory _$SettingsState([void updates(SettingsStateBuilder b)]) =>
      (new SettingsStateBuilder()..update(updates)).build();

  _$SettingsState._({this.themeName}) : super._() {
    if (themeName == null) {
      throw new BuiltValueNullFieldError('SettingsState', 'themeName');
    }
  }

  @override
  SettingsState rebuild(void updates(SettingsStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsStateBuilder toBuilder() => new SettingsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsState && themeName == other.themeName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, themeName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SettingsState')
          ..add('themeName', themeName))
        .toString();
  }
}

class SettingsStateBuilder
    implements Builder<SettingsState, SettingsStateBuilder> {
  _$SettingsState _$v;

  ThemeName _themeName;
  ThemeName get themeName => _$this._themeName;
  set themeName(ThemeName themeName) => _$this._themeName = themeName;

  SettingsStateBuilder();

  SettingsStateBuilder get _$this {
    if (_$v != null) {
      _themeName = _$v.themeName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SettingsState;
  }

  @override
  void update(void updates(SettingsStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SettingsState build() {
    final _$result = _$v ?? new _$SettingsState._(themeName: themeName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// ModuxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides

typedef StatefulActionsOptions<SettingsState, SettingsStateBuilder,
    SettingsActions> SettingsActionsOptions();

class _$SettingsActions extends SettingsActions {
  final StatefulActionsOptions<SettingsState, SettingsStateBuilder,
      SettingsActions> $options;

  final ActionDispatcher<SettingsState> $replace;
  final FieldDispatcher<ThemeName> themeName;

  _$SettingsActions._(this.$options)
      : $replace =
            $options.action<SettingsState>('\$replace', (a) => a?.$replace),
        themeName = $options.field<ThemeName>('themeName', (a) => a?.themeName,
            (s) => s?.themeName, (p, b) => p?.themeName = b),
        super._();

  factory _$SettingsActions(SettingsActionsOptions options) =>
      _$SettingsActions._(options());

  @override
  SettingsState get $initial => SettingsState();

  @override
  SettingsStateBuilder $newBuilder() => SettingsStateBuilder();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.themeName,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    themeName.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
  }

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(SettingsState);
}
