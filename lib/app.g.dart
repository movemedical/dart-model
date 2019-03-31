// GENERATED CODE - DO NOT MODIFY BY HAND

part of app;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'movemedical_model/AppState';

  @override
  Iterable serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'api',
      serializers.serialize(object.api,
          specifiedType: const FullType(ApiState)),
      'nav',
      serializers.serialize(object.nav,
          specifiedType: const FullType(NavState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'api':
          result.api.replace(serializers.deserialize(value,
              specifiedType: const FullType(ApiState)) as ApiState);
          break;
        case 'nav':
          result.nav.replace(serializers.deserialize(value,
              specifiedType: const FullType(NavState)) as NavState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final ApiState api;
  @override
  final NavState nav;

  factory _$AppState([void updates(AppStateBuilder b)]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.api, this.nav}) : super._() {
    if (api == null) {
      throw new BuiltValueNullFieldError('AppState', 'api');
    }
    if (nav == null) {
      throw new BuiltValueNullFieldError('AppState', 'nav');
    }
  }

  @override
  AppState rebuild(void updates(AppStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState && api == other.api && nav == other.nav;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, api.hashCode), nav.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('api', api)
          ..add('nav', nav))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ApiStateBuilder _api;
  ApiStateBuilder get api => _$this._api ??= new ApiStateBuilder();
  set api(ApiStateBuilder api) => _$this._api = api;

  NavStateBuilder _nav;
  NavStateBuilder get nav => _$this._nav ??= new NavStateBuilder();
  set nav(NavStateBuilder nav) => _$this._nav = nav;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _api = _$v.api?.toBuilder();
      _nav = _$v.nav?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void updates(AppStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ?? new _$AppState._(api: api.build(), nav: nav.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'api';
        api.build();
        _$failedField = 'nav';
        nav.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
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

typedef StatefulActionsOptions<AppState, AppStateBuilder,
    AppActions> AppActionsOptions();

class _$AppActions extends AppActions {
  final StatefulActionsOptions<AppState, AppStateBuilder, AppActions> $options;

  final ActionDispatcher<AppState> $replace;
  final ApiActions api;
  final NavActions nav;
  final ActionDispatcher<Null> reset;

  _$AppActions._(this.$options)
      : $replace = $options.action<AppState>('\$replace', (a) => a?.$replace),
        api = ApiActions(() =>
            $options.stateful<ApiState, ApiStateBuilder, ApiActions>(
                'api',
                (a) => a.api,
                (s) => s?.api,
                (b) => b?.api,
                (parent, builder) => parent?.api = builder)),
        nav = NavActions(() =>
            $options.stateful<NavState, NavStateBuilder, NavActions>(
                'nav',
                (a) => a.nav,
                (s) => s?.nav,
                (b) => b?.nav,
                (parent, builder) => parent?.nav = builder)),
        reset = $options.action<Null>('reset', (a) => a?.reset),
        super._();

  factory _$AppActions(AppActionsOptions options) => _$AppActions._(options());

  @override
  AppStateBuilder $newBuilder() => AppStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.api,
        this.nav,
      ]);

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.reset,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    api.$reducer(reducer);
    nav.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    api.$middleware(middleware);
    nav.$middleware(middleware);
  }

// @override
// Serializer<AppStateAppActions> get $serializer => AppStateAppActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(AppState);
}
