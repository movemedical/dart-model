// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeState> _$homeStateSerializer = new _$HomeStateSerializer();

class _$HomeStateSerializer implements StructuredSerializer<HomeState> {
  @override
  final Iterable<Type> types = const [HomeState, _$HomeState];
  @override
  final String wireName = 'movemedical_model/home/HomeState';

  @override
  Iterable serialize(Serializers serializers, HomeState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'selectedTab',
      serializers.serialize(object.selectedTab,
          specifiedType: const FullType(MobileNavigationElement)),
      'loginRoute',
      serializers.serialize(object.loginRoute,
          specifiedType: const FullType(CommandState, const [
            const FullType(RouteCommand, const [const FullType(LoginState)]),
            const FullType(RouteResult, const [const FullType(Null)])
          ])),
    ];

    return result;
  }

  @override
  HomeState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'selectedTab':
          result.selectedTab = serializers.deserialize(value,
                  specifiedType: const FullType(MobileNavigationElement))
              as MobileNavigationElement;
          break;
        case 'loginRoute':
          result.loginRoute.replace(serializers.deserialize(value,
              specifiedType: const FullType(CommandState, const [
                const FullType(
                    RouteCommand, const [const FullType(LoginState)]),
                const FullType(RouteResult, const [const FullType(Null)])
              ])) as CommandState<RouteCommand<LoginState>, RouteResult<Null>>);
          break;
      }
    }

    return result.build();
  }
}

class _$HomeState extends HomeState {
  @override
  final MobileNavigationElement selectedTab;
  @override
  final CommandState<RouteCommand<LoginState>, RouteResult<Null>> loginRoute;

  factory _$HomeState([void updates(HomeStateBuilder b)]) =>
      (new HomeStateBuilder()..update(updates)).build();

  _$HomeState._({this.selectedTab, this.loginRoute}) : super._() {
    if (selectedTab == null) {
      throw new BuiltValueNullFieldError('HomeState', 'selectedTab');
    }
    if (loginRoute == null) {
      throw new BuiltValueNullFieldError('HomeState', 'loginRoute');
    }
  }

  @override
  HomeState rebuild(void updates(HomeStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        selectedTab == other.selectedTab &&
        loginRoute == other.loginRoute;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, selectedTab.hashCode), loginRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeState')
          ..add('selectedTab', selectedTab)
          ..add('loginRoute', loginRoute))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState _$v;

  MobileNavigationElement _selectedTab;
  MobileNavigationElement get selectedTab => _$this._selectedTab;
  set selectedTab(MobileNavigationElement selectedTab) =>
      _$this._selectedTab = selectedTab;

  CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>> _loginRoute;
  CommandStateBuilder<RouteCommand<LoginState>,
      RouteResult<Null>> get loginRoute => _$this
          ._loginRoute ??=
      new CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>>();
  set loginRoute(
          CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>>
              loginRoute) =>
      _$this._loginRoute = loginRoute;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    if (_$v != null) {
      _selectedTab = _$v.selectedTab;
      _loginRoute = _$v.loginRoute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeState;
  }

  @override
  void update(void updates(HomeStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeState build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              selectedTab: selectedTab, loginRoute: loginRoute.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'loginRoute';
        loginRoute.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeState', _$failedField, e.toString());
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

typedef StatefulActionsOptions<HomeState, HomeStateBuilder,
    HomeActions> HomeActionsOptions();

class _$HomeActions extends HomeActions {
  final StatefulActionsOptions<HomeState, HomeStateBuilder, HomeActions>
      $options;

  final ActionDispatcher<HomeState> $replace;
  final FieldDispatcher<MobileNavigationElement> selectedTab;
  final LoginRoute loginRoute;

  _$HomeActions._(this.$options)
      : $replace = $options.action<HomeState>('\$replace', (a) => a?.$replace),
        selectedTab = $options.actionField<MobileNavigationElement>(
            'selectedTab',
            (a) => a?.selectedTab,
            (s) => s?.selectedTab,
            (p, b) => p?.selectedTab = b),
        loginRoute = LoginRoute(() =>
            $options.stateful<
                    CommandState<RouteCommand<LoginState>, RouteResult<Null>>,
                    CommandStateBuilder<RouteCommand<LoginState>,
                        RouteResult<Null>>,
                    LoginRoute>(
                'loginRoute',
                (a) => a.loginRoute,
                (s) => s?.loginRoute,
                (b) => b?.loginRoute,
                (parent, builder) => parent?.loginRoute = builder)),
        super._();

  factory _$HomeActions(HomeActionsOptions options) =>
      _$HomeActions._(options());

  @override
  HomeStateBuilder $newBuilder() => HomeStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.loginRoute,
      ]);

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.selectedTab,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    selectedTab.$reducer(reducer);
    loginRoute.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    loginRoute.$middleware(middleware);
  }

// @override
// Serializer<HomeStateHomeActions> get $serializer => HomeStateHomeActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(HomeState);
}
