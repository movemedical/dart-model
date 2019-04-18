// GENERATED CODE - DO NOT MODIFY BY HAND

part of nav;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NavState> _$navStateSerializer = new _$NavStateSerializer();

class _$NavStateSerializer implements StructuredSerializer<NavState> {
  @override
  final Iterable<Type> types = const [NavState, _$NavState];
  @override
  final String wireName = 'movemedical_model/NavState';

  @override
  Iterable serialize(Serializers serializers, NavState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.stack != null) {
      result
        ..add('stack')
        ..add(serializers.serialize(object.stack,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.splash != null) {
      result
        ..add('splash')
        ..add(serializers.serialize(object.splash,
            specifiedType: const FullType(SplashState)));
    }
    if (object.splashRoute != null) {
      result
        ..add('splashRoute')
        ..add(serializers.serialize(object.splashRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(RouteCommand, const [const FullType(SplashState)]),
              const FullType(RouteResult, const [const FullType(Nothing)])
            ])));
    }
    if (object.scaffold != null) {
      result
        ..add('scaffold')
        ..add(serializers.serialize(object.scaffold,
            specifiedType: const FullType(ScaffoldState)));
    }
    if (object.dashboard != null) {
      result
        ..add('dashboard')
        ..add(serializers.serialize(object.dashboard,
            specifiedType: const FullType(DashboardModuleState)));
    }
    if (object.auth != null) {
      result
        ..add('auth')
        ..add(serializers.serialize(object.auth,
            specifiedType: const FullType(AuthModuleState)));
    }
    if (object.scheduling != null) {
      result
        ..add('scheduling')
        ..add(serializers.serialize(object.scheduling,
            specifiedType: const FullType(SchedulingModuleState)));
    }
    if (object.messaging != null) {
      result
        ..add('messaging')
        ..add(serializers.serialize(object.messaging,
            specifiedType: const FullType(MessagingModuleState)));
    }
    if (object.directory != null) {
      result
        ..add('directory')
        ..add(serializers.serialize(object.directory,
            specifiedType: const FullType(DirectoryModuleState)));
    }

    return result;
  }

  @override
  NavState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NavStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'stack':
          result.stack.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'splash':
          result.splash.replace(serializers.deserialize(value,
              specifiedType: const FullType(SplashState)) as SplashState);
          break;
        case 'splashRoute':
          result.splashRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(
                        RouteCommand, const [const FullType(SplashState)]),
                    const FullType(RouteResult, const [const FullType(Nothing)])
                  ]))
              as CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>);
          break;
        case 'scaffold':
          result.scaffold.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScaffoldState)) as ScaffoldState);
          break;
        case 'dashboard':
          result.dashboard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DashboardModuleState))
              as DashboardModuleState);
          break;
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AuthModuleState))
              as AuthModuleState);
          break;
        case 'scheduling':
          result.scheduling.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SchedulingModuleState))
              as SchedulingModuleState);
          break;
        case 'messaging':
          result.messaging.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MessagingModuleState))
              as MessagingModuleState);
          break;
        case 'directory':
          result.directory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DirectoryModuleState))
              as DirectoryModuleState);
          break;
      }
    }

    return result.build();
  }
}

class _$NavState extends NavState {
  @override
  final BuiltList<String> stack;
  @override
  final SplashState splash;
  @override
  final CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>
      splashRoute;
  @override
  final ScaffoldState scaffold;
  @override
  final DashboardModuleState dashboard;
  @override
  final AuthModuleState auth;
  @override
  final SchedulingModuleState scheduling;
  @override
  final MessagingModuleState messaging;
  @override
  final DirectoryModuleState directory;

  factory _$NavState([void updates(NavStateBuilder b)]) =>
      (new NavStateBuilder()..update(updates)).build();

  _$NavState._(
      {this.stack,
      this.splash,
      this.splashRoute,
      this.scaffold,
      this.dashboard,
      this.auth,
      this.scheduling,
      this.messaging,
      this.directory})
      : super._();

  @override
  NavState rebuild(void updates(NavStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NavStateBuilder toBuilder() => new NavStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NavState &&
        stack == other.stack &&
        splash == other.splash &&
        splashRoute == other.splashRoute &&
        scaffold == other.scaffold &&
        dashboard == other.dashboard &&
        auth == other.auth &&
        scheduling == other.scheduling &&
        messaging == other.messaging &&
        directory == other.directory;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, stack.hashCode), splash.hashCode),
                                splashRoute.hashCode),
                            scaffold.hashCode),
                        dashboard.hashCode),
                    auth.hashCode),
                scheduling.hashCode),
            messaging.hashCode),
        directory.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NavState')
          ..add('stack', stack)
          ..add('splash', splash)
          ..add('splashRoute', splashRoute)
          ..add('scaffold', scaffold)
          ..add('dashboard', dashboard)
          ..add('auth', auth)
          ..add('scheduling', scheduling)
          ..add('messaging', messaging)
          ..add('directory', directory))
        .toString();
  }
}

class NavStateBuilder implements Builder<NavState, NavStateBuilder> {
  _$NavState _$v;

  ListBuilder<String> _stack;
  ListBuilder<String> get stack => _$this._stack ??= new ListBuilder<String>();
  set stack(ListBuilder<String> stack) => _$this._stack = stack;

  SplashStateBuilder _splash;
  SplashStateBuilder get splash => _$this._splash ??= new SplashStateBuilder();
  set splash(SplashStateBuilder splash) => _$this._splash = splash;

  CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Nothing>>
      _splashRoute;
  CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Nothing>>
      get splashRoute => _$this._splashRoute ??= new CommandStateBuilder<
          RouteCommand<SplashState>, RouteResult<Nothing>>();
  set splashRoute(
          CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Nothing>>
              splashRoute) =>
      _$this._splashRoute = splashRoute;

  ScaffoldStateBuilder _scaffold;
  ScaffoldStateBuilder get scaffold =>
      _$this._scaffold ??= new ScaffoldStateBuilder();
  set scaffold(ScaffoldStateBuilder scaffold) => _$this._scaffold = scaffold;

  DashboardModuleStateBuilder _dashboard;
  DashboardModuleStateBuilder get dashboard =>
      _$this._dashboard ??= new DashboardModuleStateBuilder();
  set dashboard(DashboardModuleStateBuilder dashboard) =>
      _$this._dashboard = dashboard;

  AuthModuleStateBuilder _auth;
  AuthModuleStateBuilder get auth =>
      _$this._auth ??= new AuthModuleStateBuilder();
  set auth(AuthModuleStateBuilder auth) => _$this._auth = auth;

  SchedulingModuleStateBuilder _scheduling;
  SchedulingModuleStateBuilder get scheduling =>
      _$this._scheduling ??= new SchedulingModuleStateBuilder();
  set scheduling(SchedulingModuleStateBuilder scheduling) =>
      _$this._scheduling = scheduling;

  MessagingModuleStateBuilder _messaging;
  MessagingModuleStateBuilder get messaging =>
      _$this._messaging ??= new MessagingModuleStateBuilder();
  set messaging(MessagingModuleStateBuilder messaging) =>
      _$this._messaging = messaging;

  DirectoryModuleStateBuilder _directory;
  DirectoryModuleStateBuilder get directory =>
      _$this._directory ??= new DirectoryModuleStateBuilder();
  set directory(DirectoryModuleStateBuilder directory) =>
      _$this._directory = directory;

  NavStateBuilder();

  NavStateBuilder get _$this {
    if (_$v != null) {
      _stack = _$v.stack?.toBuilder();
      _splash = _$v.splash?.toBuilder();
      _splashRoute = _$v.splashRoute?.toBuilder();
      _scaffold = _$v.scaffold?.toBuilder();
      _dashboard = _$v.dashboard?.toBuilder();
      _auth = _$v.auth?.toBuilder();
      _scheduling = _$v.scheduling?.toBuilder();
      _messaging = _$v.messaging?.toBuilder();
      _directory = _$v.directory?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NavState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NavState;
  }

  @override
  void update(void updates(NavStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NavState build() {
    _$NavState _$result;
    try {
      _$result = _$v ??
          new _$NavState._(
              stack: _stack?.build(),
              splash: _splash?.build(),
              splashRoute: _splashRoute?.build(),
              scaffold: _scaffold?.build(),
              dashboard: _dashboard?.build(),
              auth: _auth?.build(),
              scheduling: _scheduling?.build(),
              messaging: _messaging?.build(),
              directory: _directory?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'stack';
        _stack?.build();
        _$failedField = 'splash';
        _splash?.build();
        _$failedField = 'splashRoute';
        _splashRoute?.build();
        _$failedField = 'scaffold';
        _scaffold?.build();
        _$failedField = 'dashboard';
        _dashboard?.build();
        _$failedField = 'auth';
        _auth?.build();
        _$failedField = 'scheduling';
        _scheduling?.build();
        _$failedField = 'messaging';
        _messaging?.build();
        _$failedField = 'directory';
        _directory?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NavState', _$failedField, e.toString());
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

typedef StatefulActionsOptions<NavState, NavStateBuilder,
    NavActions> NavActionsOptions();

class _$NavActions extends NavActions {
  final StatefulActionsOptions<NavState, NavStateBuilder, NavActions> options$;

  final ActionDispatcher<NavState> replace$;
  final FieldDispatcher<BuiltList<String>> stack;
  final SplashActions splash;
  final SplashRoute splashRoute;
  final ScaffoldActions scaffold;
  final DashboardModuleActions dashboard;
  final AuthModuleActions auth;
  final SchedulingModuleActions scheduling;
  final MessagingModuleActions messaging;
  final DirectoryModuleActions directory;

  _$NavActions._(this.options$)
      : replace$ = options$.action<NavState>('replace\$', (a) => a?.replace$),
        stack = options$.field<BuiltList<String>>(
            'stack', (a) => a?.stack, (s) => s?.stack, (p, b) => p?.stack = b),
        splash = SplashActions(() =>
            options$.stateful<SplashState, SplashStateBuilder, SplashActions>(
                'splash',
                (a) => a.splash,
                (s) => s?.splash,
                (b) => b?.splash,
                (parent, builder) => parent?.splash = builder)),
        splashRoute = SplashRoute(() => options$.stateful<
                CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>,
                CommandStateBuilder<RouteCommand<SplashState>,
                    RouteResult<Nothing>>,
                SplashRoute>(
            'splashRoute',
            (a) => a.splashRoute,
            (s) => s?.splashRoute,
            (b) => b?.splashRoute,
            (parent, builder) => parent?.splashRoute = builder)),
        scaffold = ScaffoldActions(() => options$
            .stateful<ScaffoldState, ScaffoldStateBuilder, ScaffoldActions>(
                'scaffold',
                (a) => a.scaffold,
                (s) => s?.scaffold,
                (b) => b?.scaffold,
                (parent, builder) => parent?.scaffold = builder)),
        dashboard = DashboardModuleActions(() => options$.stateful<
                DashboardModuleState,
                DashboardModuleStateBuilder,
                DashboardModuleActions>(
            'dashboard',
            (a) => a.dashboard,
            (s) => s?.dashboard,
            (b) => b?.dashboard,
            (parent, builder) => parent?.dashboard = builder)),
        auth = AuthModuleActions(() => options$.stateful<AuthModuleState,
                AuthModuleStateBuilder, AuthModuleActions>(
            'auth',
            (a) => a.auth,
            (s) => s?.auth,
            (b) => b?.auth,
            (parent, builder) => parent?.auth = builder)),
        scheduling = SchedulingModuleActions(() => options$.stateful<
                SchedulingModuleState,
                SchedulingModuleStateBuilder,
                SchedulingModuleActions>(
            'scheduling',
            (a) => a.scheduling,
            (s) => s?.scheduling,
            (b) => b?.scheduling,
            (parent, builder) => parent?.scheduling = builder)),
        messaging = MessagingModuleActions(() => options$.stateful<
                MessagingModuleState,
                MessagingModuleStateBuilder,
                MessagingModuleActions>(
            'messaging',
            (a) => a.messaging,
            (s) => s?.messaging,
            (b) => b?.messaging,
            (parent, builder) => parent?.messaging = builder)),
        directory = DirectoryModuleActions(() => options$.stateful<
                DirectoryModuleState,
                DirectoryModuleStateBuilder,
                DirectoryModuleActions>(
            'directory',
            (a) => a.directory,
            (s) => s?.directory,
            (b) => b?.directory,
            (parent, builder) => parent?.directory = builder)),
        super._();

  factory _$NavActions(NavActionsOptions options) => _$NavActions._(options());

  @override
  NavStateBuilder newBuilder$() => NavStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.splash,
        this.splashRoute,
        this.scaffold,
        this.dashboard,
        this.auth,
        this.scheduling,
        this.messaging,
        this.directory,
      ]);

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
        this.stack,
      ]);

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    stack.reducer$(reducer);
    splash.reducer$(reducer);
    splashRoute.reducer$(reducer);
    scaffold.reducer$(reducer);
    dashboard.reducer$(reducer);
    auth.reducer$(reducer);
    scheduling.reducer$(reducer);
    messaging.reducer$(reducer);
    directory.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    splash.middleware$(middleware);
    splashRoute.middleware$(middleware);
    scaffold.middleware$(middleware);
    dashboard.middleware$(middleware);
    auth.middleware$(middleware);
    scheduling.middleware$(middleware);
    messaging.middleware$(middleware);
    directory.middleware$(middleware);
  }
}
