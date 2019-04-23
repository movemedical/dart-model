// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DrawerState> _$drawerStateSerializer = new _$DrawerStateSerializer();

class _$DrawerStateSerializer implements StructuredSerializer<DrawerState> {
  @override
  final Iterable<Type> types = const [DrawerState, _$DrawerState];
  @override
  final String wireName = 'movemedical_model/scaffold/DrawerState';

  @override
  Iterable serialize(Serializers serializers, DrawerState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.selectedTab != null) {
      result
        ..add('selectedTab')
        ..add(serializers.serialize(object.selectedTab,
            specifiedType: const FullType(MobileNavigationElement)));
    }
    if (object.loginRoute != null) {
      result
        ..add('loginRoute')
        ..add(serializers.serialize(object.loginRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(RouteCommand, const [const FullType(LoginState)]),
              const FullType(RouteResult, const [const FullType(Null)])
            ])));
    }

    return result;
  }

  @override
  DrawerState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DrawerStateBuilder();

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

class _$DrawerState extends DrawerState {
  @override
  final MobileNavigationElement selectedTab;
  @override
  final CommandState<RouteCommand<LoginState>, RouteResult<Null>> loginRoute;

  factory _$DrawerState([void updates(DrawerStateBuilder b)]) =>
      (new DrawerStateBuilder()..update(updates)).build();

  _$DrawerState._({this.selectedTab, this.loginRoute}) : super._();

  @override
  DrawerState rebuild(void updates(DrawerStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DrawerStateBuilder toBuilder() => new DrawerStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DrawerState &&
        selectedTab == other.selectedTab &&
        loginRoute == other.loginRoute;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, selectedTab.hashCode), loginRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DrawerState')
          ..add('selectedTab', selectedTab)
          ..add('loginRoute', loginRoute))
        .toString();
  }
}

class DrawerStateBuilder implements Builder<DrawerState, DrawerStateBuilder> {
  _$DrawerState _$v;

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

  DrawerStateBuilder();

  DrawerStateBuilder get _$this {
    if (_$v != null) {
      _selectedTab = _$v.selectedTab;
      _loginRoute = _$v.loginRoute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DrawerState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DrawerState;
  }

  @override
  void update(void updates(DrawerStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DrawerState build() {
    _$DrawerState _$result;
    try {
      _$result = _$v ??
          new _$DrawerState._(
              selectedTab: selectedTab, loginRoute: _loginRoute?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'loginRoute';
        _loginRoute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DrawerState', _$failedField, e.toString());
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

typedef StatefulActionsOptions<
    CommandState<RouteCommand<DrawerState>, RouteResult<Nothing>>,
    CommandStateBuilder<RouteCommand<DrawerState>, RouteResult<Nothing>>,
    DrawerRoute> DrawerRouteOptions();

class _$DrawerRoute extends DrawerRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<DrawerState>, RouteResult<Nothing>>,
      CommandStateBuilder<RouteCommand<DrawerState>, RouteResult<Nothing>>,
      DrawerRoute> options$;

  final ActionDispatcher<
      CommandState<RouteCommand<DrawerState>, RouteResult<Nothing>>> replace$;
  final ActionDispatcher<String> cancel$;
  final ActionDispatcher<Command<RouteCommand<DrawerState>>> execute$;
  final ActionDispatcher<CommandResult<RouteResult<Nothing>>> result$;
  final ActionDispatcher<CommandProgress> progress$;

  _$DrawerRoute._(this.options$)
      : replace$ = options$.action<
                CommandState<RouteCommand<DrawerState>, RouteResult<Nothing>>>(
            'replace\$', (a) => a?.replace$),
        cancel$ = options$.action<String>('cancel\$', (a) => a?.cancel$),
        execute$ = options$.action<Command<RouteCommand<DrawerState>>>(
            'execute\$', (a) => a?.execute$),
        result$ = options$.action<CommandResult<RouteResult<Nothing>>>(
            'result\$', (a) => a?.result$),
        progress$ =
            options$.action<CommandProgress>('progress\$', (a) => a?.progress$),
        super._();

  factory _$DrawerRoute(DrawerRouteOptions options) =>
      _$DrawerRoute._(options());

  @override
  CommandState<RouteCommand<DrawerState>, RouteResult<Nothing>>
      get initialState$ =>
          CommandState<RouteCommand<DrawerState>, RouteResult<Nothing>>();

  @override
  CommandStateBuilder<RouteCommand<DrawerState>, RouteResult<Nothing>>
      newBuilder$() => CommandStateBuilder<RouteCommand<DrawerState>,
          RouteResult<Nothing>>();

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
        this.cancel$,
        this.execute$,
        this.result$,
        this.progress$,
      ]);

  @override
  RouteCommandBuilder<DrawerState> newCommandBuilder() =>
      RouteCommand<DrawerState>().toBuilder();

  @override
  RouteResultBuilder<Nothing> newResultBuilder() =>
      RouteResult<Nothing>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  DrawerStateBuilder newCommandPayloadBuilder() => DrawerState().toBuilder();

  @override
  NothingBuilder newResultPayloadBuilder() => Nothing().toBuilder();

  @override
  Serializer<DrawerState> get commandPayloadSerializer =>
      DrawerState.serializer;

  @override
  Serializer<Nothing> get resultPayloadSerializer => Nothing.serializer;
}

typedef StatefulActionsOptions<DrawerState, DrawerStateBuilder,
    DrawerActions> DrawerActionsOptions();

class _$DrawerActions extends DrawerActions {
  final StatefulActionsOptions<DrawerState, DrawerStateBuilder, DrawerActions>
      options$;

  final ActionDispatcher<DrawerState> replace$;
  final ActionDispatcher activated$;
  final ActionDispatcher deactivated$;
  final ActionDispatcher<DrawerState> pushing$;
  final ActionDispatcher<Nothing> popping$;
  final LoginRoute loginRoute;
  final FieldDispatcher<MobileNavigationElement> selectedTab;

  _$DrawerActions._(this.options$)
      : replace$ =
            options$.action<DrawerState>('replace\$', (a) => a?.replace$),
        activated$ = options$.action('activated\$', (a) => a?.activated$),
        deactivated$ = options$.action('deactivated\$', (a) => a?.deactivated$),
        pushing$ =
            options$.action<DrawerState>('pushing\$', (a) => a?.pushing$),
        popping$ = options$.action<Nothing>('popping\$', (a) => a?.popping$),
        loginRoute = LoginRoute(
            () =>
                options$.stateful<
                        CommandState<RouteCommand<LoginState>,
                            RouteResult<Nothing>>,
                        CommandStateBuilder<RouteCommand<LoginState>,
                            RouteResult<Nothing>>,
                        LoginRoute>(
                    'loginRoute',
                    (a) => a.loginRoute,
                    (s) => s?.loginRoute,
                    (b) => b?.loginRoute,
                    (parent, builder) => parent?.loginRoute = builder)),
        selectedTab = options$.field<MobileNavigationElement>(
            'selectedTab',
            (a) => a?.selectedTab,
            (s) => s?.selectedTab,
            (p, b) => p?.selectedTab = b),
        super._();

  factory _$DrawerActions(DrawerActionsOptions options) =>
      _$DrawerActions._(options());

  @override
  DrawerStateBuilder newBuilder$() => DrawerStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.loginRoute,
      ]);

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
        this.activated$,
        this.deactivated$,
        this.pushing$,
        this.popping$,
        this.selectedTab,
      ]);

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    loginRoute.reducer$(reducer);
    selectedTab.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    loginRoute.middleware$(middleware);
  }

  @override
  NothingBuilder newResultBuilder$() => Nothing().toBuilder();
}
