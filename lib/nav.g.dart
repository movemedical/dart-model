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
    if (object.gotoSplash != null) {
      result
        ..add('gotoSplash')
        ..add(serializers.serialize(object.gotoSplash,
            specifiedType: const FullType(CommandState, const [
              const FullType(RouteCommand, const [const FullType(SplashState)]),
              const FullType(RouteResult, const [const FullType(Empty)])
            ])));
    }
    if (object.splash != null) {
      result
        ..add('splash')
        ..add(serializers.serialize(object.splash,
            specifiedType: const FullType(SplashState)));
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
            specifiedType: const FullType(DashboardState)));
    }
    if (object.auth != null) {
      result
        ..add('auth')
        ..add(serializers.serialize(object.auth,
            specifiedType: const FullType(AuthState)));
    }
    if (object.schedule != null) {
      result
        ..add('schedule')
        ..add(serializers.serialize(object.schedule,
            specifiedType: const FullType(ScheduleState)));
    }
    if (object.messages != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(object.messages,
            specifiedType: const FullType(MessagesState)));
    }
    if (object.dir != null) {
      result
        ..add('dir')
        ..add(serializers.serialize(object.dir,
            specifiedType: const FullType(DirectoryState)));
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
        case 'gotoSplash':
          result.gotoSplash.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(
                        RouteCommand, const [const FullType(SplashState)]),
                    const FullType(RouteResult, const [const FullType(Empty)])
                  ]))
              as CommandState<RouteCommand<SplashState>, RouteResult<Empty>>);
          break;
        case 'splash':
          result.splash.replace(serializers.deserialize(value,
              specifiedType: const FullType(SplashState)) as SplashState);
          break;
        case 'scaffold':
          result.scaffold.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScaffoldState)) as ScaffoldState);
          break;
        case 'dashboard':
          result.dashboard.replace(serializers.deserialize(value,
              specifiedType: const FullType(DashboardState)) as DashboardState);
          break;
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'schedule':
          result.schedule.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScheduleState)) as ScheduleState);
          break;
        case 'messages':
          result.messages.replace(serializers.deserialize(value,
              specifiedType: const FullType(MessagesState)) as MessagesState);
          break;
        case 'dir':
          result.dir.replace(serializers.deserialize(value,
              specifiedType: const FullType(DirectoryState)) as DirectoryState);
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
  final CommandState<RouteCommand<SplashState>, RouteResult<Empty>> gotoSplash;
  @override
  final SplashState splash;
  @override
  final ScaffoldState scaffold;
  @override
  final DashboardState dashboard;
  @override
  final AuthState auth;
  @override
  final ScheduleState schedule;
  @override
  final MessagesState messages;
  @override
  final DirectoryState dir;

  factory _$NavState([void updates(NavStateBuilder b)]) =>
      (new NavStateBuilder()..update(updates)).build();

  _$NavState._(
      {this.stack,
      this.gotoSplash,
      this.splash,
      this.scaffold,
      this.dashboard,
      this.auth,
      this.schedule,
      this.messages,
      this.dir})
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
        gotoSplash == other.gotoSplash &&
        splash == other.splash &&
        scaffold == other.scaffold &&
        dashboard == other.dashboard &&
        auth == other.auth &&
        schedule == other.schedule &&
        messages == other.messages &&
        dir == other.dir;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, stack.hashCode),
                                    gotoSplash.hashCode),
                                splash.hashCode),
                            scaffold.hashCode),
                        dashboard.hashCode),
                    auth.hashCode),
                schedule.hashCode),
            messages.hashCode),
        dir.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NavState')
          ..add('stack', stack)
          ..add('gotoSplash', gotoSplash)
          ..add('splash', splash)
          ..add('scaffold', scaffold)
          ..add('dashboard', dashboard)
          ..add('auth', auth)
          ..add('schedule', schedule)
          ..add('messages', messages)
          ..add('dir', dir))
        .toString();
  }
}

class NavStateBuilder implements Builder<NavState, NavStateBuilder> {
  _$NavState _$v;

  ListBuilder<String> _stack;
  ListBuilder<String> get stack => _$this._stack ??= new ListBuilder<String>();
  set stack(ListBuilder<String> stack) => _$this._stack = stack;

  CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Empty>>
      _gotoSplash;
  CommandStateBuilder<RouteCommand<SplashState>,
      RouteResult<Empty>> get gotoSplash => _$this
          ._gotoSplash ??=
      new CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Empty>>();
  set gotoSplash(
          CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Empty>>
              gotoSplash) =>
      _$this._gotoSplash = gotoSplash;

  SplashStateBuilder _splash;
  SplashStateBuilder get splash => _$this._splash ??= new SplashStateBuilder();
  set splash(SplashStateBuilder splash) => _$this._splash = splash;

  ScaffoldStateBuilder _scaffold;
  ScaffoldStateBuilder get scaffold =>
      _$this._scaffold ??= new ScaffoldStateBuilder();
  set scaffold(ScaffoldStateBuilder scaffold) => _$this._scaffold = scaffold;

  DashboardStateBuilder _dashboard;
  DashboardStateBuilder get dashboard =>
      _$this._dashboard ??= new DashboardStateBuilder();
  set dashboard(DashboardStateBuilder dashboard) =>
      _$this._dashboard = dashboard;

  AuthStateBuilder _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder auth) => _$this._auth = auth;

  ScheduleStateBuilder _schedule;
  ScheduleStateBuilder get schedule =>
      _$this._schedule ??= new ScheduleStateBuilder();
  set schedule(ScheduleStateBuilder schedule) => _$this._schedule = schedule;

  MessagesStateBuilder _messages;
  MessagesStateBuilder get messages =>
      _$this._messages ??= new MessagesStateBuilder();
  set messages(MessagesStateBuilder messages) => _$this._messages = messages;

  DirectoryStateBuilder _dir;
  DirectoryStateBuilder get dir => _$this._dir ??= new DirectoryStateBuilder();
  set dir(DirectoryStateBuilder dir) => _$this._dir = dir;

  NavStateBuilder();

  NavStateBuilder get _$this {
    if (_$v != null) {
      _stack = _$v.stack?.toBuilder();
      _gotoSplash = _$v.gotoSplash?.toBuilder();
      _splash = _$v.splash?.toBuilder();
      _scaffold = _$v.scaffold?.toBuilder();
      _dashboard = _$v.dashboard?.toBuilder();
      _auth = _$v.auth?.toBuilder();
      _schedule = _$v.schedule?.toBuilder();
      _messages = _$v.messages?.toBuilder();
      _dir = _$v.dir?.toBuilder();
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
              gotoSplash: _gotoSplash?.build(),
              splash: _splash?.build(),
              scaffold: _scaffold?.build(),
              dashboard: _dashboard?.build(),
              auth: _auth?.build(),
              schedule: _schedule?.build(),
              messages: _messages?.build(),
              dir: _dir?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'stack';
        _stack?.build();
        _$failedField = 'gotoSplash';
        _gotoSplash?.build();
        _$failedField = 'splash';
        _splash?.build();
        _$failedField = 'scaffold';
        _scaffold?.build();
        _$failedField = 'dashboard';
        _dashboard?.build();
        _$failedField = 'auth';
        _auth?.build();
        _$failedField = 'schedule';
        _schedule?.build();
        _$failedField = 'messages';
        _messages?.build();
        _$failedField = 'dir';
        _dir?.build();
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
  final StatefulActionsOptions<NavState, NavStateBuilder, NavActions> $options;

  final ActionDispatcher<NavState> $replace;
  final FieldDispatcher<BuiltList<String>> stack;
  final SplashRoute gotoSplash;
  final SplashActions splash;
  final ScaffoldActions scaffold;
  final DashboardActions dashboard;
  final AuthActions auth;
  final ScheduleActions schedule;
  final MessagesActions messages;
  final DirectoryActions dir;

  _$NavActions._(this.$options)
      : $replace = $options.action<NavState>('\$replace', (a) => a?.$replace),
        stack = $options.actionField<BuiltList<String>>(
            'stack', (a) => a?.stack, (s) => s?.stack, (p, b) => p?.stack = b),
        gotoSplash = SplashRoute(() =>
            $options.stateful<
                    CommandState<RouteCommand<SplashState>, RouteResult<Empty>>,
                    CommandStateBuilder<RouteCommand<SplashState>,
                        RouteResult<Empty>>,
                    SplashRoute>(
                'gotoSplash',
                (a) => a.gotoSplash,
                (s) => s?.gotoSplash,
                (b) => b?.gotoSplash,
                (parent, builder) => parent?.gotoSplash = builder)),
        splash = SplashActions(() =>
            $options.stateful<SplashState, SplashStateBuilder, SplashActions>(
                'splash',
                (a) => a.splash,
                (s) => s?.splash,
                (b) => b?.splash,
                (parent, builder) => parent?.splash = builder)),
        scaffold = ScaffoldActions(() => $options
            .stateful<ScaffoldState, ScaffoldStateBuilder, ScaffoldActions>(
                'scaffold',
                (a) => a.scaffold,
                (s) => s?.scaffold,
                (b) => b?.scaffold,
                (parent, builder) => parent?.scaffold = builder)),
        dashboard = DashboardActions(() => $options
            .stateful<DashboardState, DashboardStateBuilder, DashboardActions>(
                'dashboard',
                (a) => a.dashboard,
                (s) => s?.dashboard,
                (b) => b?.dashboard,
                (parent, builder) => parent?.dashboard = builder)),
        auth = AuthActions(() =>
            $options.stateful<AuthState, AuthStateBuilder, AuthActions>(
                'auth',
                (a) => a.auth,
                (s) => s?.auth,
                (b) => b?.auth,
                (parent, builder) => parent?.auth = builder)),
        schedule = ScheduleActions(() => $options
            .stateful<ScheduleState, ScheduleStateBuilder, ScheduleActions>(
                'schedule',
                (a) => a.schedule,
                (s) => s?.schedule,
                (b) => b?.schedule,
                (parent, builder) => parent?.schedule = builder)),
        messages = MessagesActions(() => $options
            .stateful<MessagesState, MessagesStateBuilder, MessagesActions>(
                'messages',
                (a) => a.messages,
                (s) => s?.messages,
                (b) => b?.messages,
                (parent, builder) => parent?.messages = builder)),
        dir = DirectoryActions(() => $options
            .stateful<DirectoryState, DirectoryStateBuilder, DirectoryActions>(
                'dir',
                (a) => a.dir,
                (s) => s?.dir,
                (b) => b?.dir,
                (parent, builder) => parent?.dir = builder)),
        super._();

  factory _$NavActions(NavActionsOptions options) => _$NavActions._(options());

  @override
  NavStateBuilder $newBuilder() => NavStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.gotoSplash,
        this.splash,
        this.scaffold,
        this.dashboard,
        this.auth,
        this.schedule,
        this.messages,
        this.dir,
      ]);

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.stack,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    stack.$reducer(reducer);
    gotoSplash.$reducer(reducer);
    splash.$reducer(reducer);
    scaffold.$reducer(reducer);
    dashboard.$reducer(reducer);
    auth.$reducer(reducer);
    schedule.$reducer(reducer);
    messages.$reducer(reducer);
    dir.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    gotoSplash.$middleware(middleware);
    splash.$middleware(middleware);
    scaffold.$middleware(middleware);
    dashboard.$middleware(middleware);
    auth.$middleware(middleware);
    schedule.$middleware(middleware);
    messages.$middleware(middleware);
    dir.$middleware(middleware);
  }

// @override
// Serializer<NavStateNavActions> get $serializer => NavStateNavActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(NavState);
}
