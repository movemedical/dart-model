// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SplashState> _$splashStateSerializer = new _$SplashStateSerializer();

class _$SplashStateSerializer implements StructuredSerializer<SplashState> {
  @override
  final Iterable<Type> types = const [SplashState, _$SplashState];
  @override
  final String wireName = 'movemedical_model/SplashState';

  @override
  Iterable serialize(Serializers serializers, SplashState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'gotoLogin',
      serializers.serialize(object.gotoLogin,
          specifiedType: const FullType(CommandState, const [
            const FullType(RouteCommand, const [const FullType(LoginState)]),
            const FullType(RouteResult, const [const FullType(Null)])
          ])),
      'gotoDashboard',
      serializers.serialize(object.gotoDashboard,
          specifiedType: const FullType(CommandState, const [
            const FullType(
                RouteCommand, const [const FullType(DashboardState)]),
            const FullType(RouteResult, const [const FullType(Null)])
          ])),
    ];

    return result;
  }

  @override
  SplashState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SplashStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'gotoLogin':
          result.gotoLogin.replace(serializers.deserialize(value,
              specifiedType: const FullType(CommandState, const [
                const FullType(
                    RouteCommand, const [const FullType(LoginState)]),
                const FullType(RouteResult, const [const FullType(Null)])
              ])) as CommandState<RouteCommand<LoginState>, RouteResult<Null>>);
          break;
        case 'gotoDashboard':
          result.gotoDashboard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(
                        RouteCommand, const [const FullType(DashboardState)]),
                    const FullType(RouteResult, const [const FullType(Null)])
                  ]))
              as CommandState<RouteCommand<DashboardState>, RouteResult<Null>>);
          break;
      }
    }

    return result.build();
  }
}

class _$SplashState extends SplashState {
  @override
  final CommandState<RouteCommand<LoginState>, RouteResult<Null>> gotoLogin;
  @override
  final CommandState<RouteCommand<DashboardState>, RouteResult<Null>>
      gotoDashboard;

  factory _$SplashState([void updates(SplashStateBuilder b)]) =>
      (new SplashStateBuilder()..update(updates)).build();

  _$SplashState._({this.gotoLogin, this.gotoDashboard}) : super._() {
    if (gotoLogin == null) {
      throw new BuiltValueNullFieldError('SplashState', 'gotoLogin');
    }
    if (gotoDashboard == null) {
      throw new BuiltValueNullFieldError('SplashState', 'gotoDashboard');
    }
  }

  @override
  SplashState rebuild(void updates(SplashStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SplashStateBuilder toBuilder() => new SplashStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplashState &&
        gotoLogin == other.gotoLogin &&
        gotoDashboard == other.gotoDashboard;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, gotoLogin.hashCode), gotoDashboard.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SplashState')
          ..add('gotoLogin', gotoLogin)
          ..add('gotoDashboard', gotoDashboard))
        .toString();
  }
}

class SplashStateBuilder implements Builder<SplashState, SplashStateBuilder> {
  _$SplashState _$v;

  CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>> _gotoLogin;
  CommandStateBuilder<RouteCommand<LoginState>,
      RouteResult<Null>> get gotoLogin => _$this
          ._gotoLogin ??=
      new CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>>();
  set gotoLogin(
          CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>>
              gotoLogin) =>
      _$this._gotoLogin = gotoLogin;

  CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Null>>
      _gotoDashboard;
  CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Null>>
      get gotoDashboard => _$this._gotoDashboard ??= new CommandStateBuilder<
          RouteCommand<DashboardState>, RouteResult<Null>>();
  set gotoDashboard(
          CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Null>>
              gotoDashboard) =>
      _$this._gotoDashboard = gotoDashboard;

  SplashStateBuilder();

  SplashStateBuilder get _$this {
    if (_$v != null) {
      _gotoLogin = _$v.gotoLogin?.toBuilder();
      _gotoDashboard = _$v.gotoDashboard?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SplashState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SplashState;
  }

  @override
  void update(void updates(SplashStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SplashState build() {
    _$SplashState _$result;
    try {
      _$result = _$v ??
          new _$SplashState._(
              gotoLogin: gotoLogin.build(),
              gotoDashboard: gotoDashboard.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gotoLogin';
        gotoLogin.build();
        _$failedField = 'gotoDashboard';
        gotoDashboard.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SplashState', _$failedField, e.toString());
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
    CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>,
    CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Nothing>>,
    SplashRoute> SplashRouteOptions();

class _$SplashRoute extends SplashRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>,
      CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Nothing>>,
      SplashRoute> $options;

  final ActionDispatcher<
      CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>> $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<SplashState>, RouteResult<Nothing>,
          SplashRoute, String>> $cancel;
  final ActionDispatcher<
      CommandPayload<RouteCommand<SplashState>, RouteResult<Nothing>,
          SplashRoute, Command<RouteCommand<SplashState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<SplashState>, RouteResult<Nothing>,
          SplashRoute, CommandResult<RouteResult<Nothing>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<SplashState>, RouteResult<Nothing>,
          SplashRoute, CommandProgress>> $progress;

  _$SplashRoute._(this.$options)
      : $replace = $options.action<
                CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>>(
            '\$replace', (a) => a?.$replace),
        $cancel = $options.action<
            CommandPayload<RouteCommand<SplashState>, RouteResult<Nothing>,
                SplashRoute, String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<RouteCommand<SplashState>, RouteResult<Nothing>,
                    SplashRoute, Command<RouteCommand<SplashState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<RouteCommand<SplashState>, RouteResult<Nothing>,
                    SplashRoute, CommandResult<RouteResult<Nothing>>>>(
            '\$result', (a) => a?.$result),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<SplashState>,
                RouteResult<Nothing>,
                SplashRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$SplashRoute(SplashRouteOptions options) =>
      _$SplashRoute._(options());

  @override
  CommandState<RouteCommand<SplashState>, RouteResult<Nothing>> get $initial =>
      CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>();

  @override
  CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Nothing>>
      $newBuilder() => CommandStateBuilder<RouteCommand<SplashState>,
          RouteResult<Nothing>>();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.$cancel,
        this.$execute,
        this.$result,
        this.$progress,
      ]);

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(SplashState)]),
        FullType(RouteResult, [FullType(Nothing)])
      ]);

  @override
  RouteCommandBuilder<SplashState> newCommandBuilder() =>
      RouteCommand<SplashState>().toBuilder();

  @override
  RouteResultBuilder<Nothing> newResultBuilder() =>
      RouteResult<Nothing>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  SplashStateBuilder newCommandPayloadBuilder() => SplashState().toBuilder();

  @override
  NothingBuilder newResultPayloadBuilder() => Nothing().toBuilder();

  @override
  Serializer<SplashState> get commandPayloadSerializer =>
      SplashState.serializer;

  @override
  Serializer<Nothing> get resultPayloadSerializer => Nothing.serializer;
}

typedef StatefulActionsOptions<SplashState, SplashStateBuilder,
    SplashActions> SplashActionsOptions();

class _$SplashActions extends SplashActions {
  final StatefulActionsOptions<SplashState, SplashStateBuilder, SplashActions>
      $options;

  final ActionDispatcher<SplashState> $replace;
  final ActionDispatcher<Null> $activated;
  final ActionDispatcher<Null> $deactivated;
  final ActionDispatcher<SplashState> $pushing;
  final ActionDispatcher<Nothing> $popping;
  final LoginRoute gotoLogin;
  final DashboardRoute gotoDashboard;

  _$SplashActions._(this.$options)
      : $replace =
            $options.action<SplashState>('\$replace', (a) => a?.$replace),
        $activated = $options.action<Null>('\$activated', (a) => a?.$activated),
        $deactivated =
            $options.action<Null>('\$deactivated', (a) => a?.$deactivated),
        $pushing =
            $options.action<SplashState>('\$pushing', (a) => a?.$pushing),
        $popping = $options.action<Nothing>('\$popping', (a) => a?.$popping),
        gotoLogin = LoginRoute(
            () =>
                $options.stateful<
                        CommandState<RouteCommand<LoginState>,
                            RouteResult<Nothing>>,
                        CommandStateBuilder<RouteCommand<LoginState>,
                            RouteResult<Nothing>>,
                        LoginRoute>(
                    'gotoLogin',
                    (a) => a.gotoLogin,
                    (s) => s?.gotoLogin,
                    (b) => b?.gotoLogin,
                    (parent, builder) => parent?.gotoLogin = builder)),
        gotoDashboard = DashboardRoute(() =>
            $options.stateful<
                    CommandState<RouteCommand<DashboardState>,
                        RouteResult<Nothing>>,
                    CommandStateBuilder<RouteCommand<DashboardState>,
                        RouteResult<Nothing>>,
                    DashboardRoute>(
                'gotoDashboard',
                (a) => a.gotoDashboard,
                (s) => s?.gotoDashboard,
                (b) => b?.gotoDashboard,
                (parent, builder) => parent?.gotoDashboard = builder)),
        super._();

  factory _$SplashActions(SplashActionsOptions options) =>
      _$SplashActions._(options());

  @override
  SplashState get $initial => SplashState();

  @override
  SplashStateBuilder $newBuilder() => SplashStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.gotoLogin,
        this.gotoDashboard,
      ]);

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.$activated,
        this.$deactivated,
        this.$pushing,
        this.$popping,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    gotoLogin.$reducer(reducer);
    gotoDashboard.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    gotoLogin.$middleware(middleware);
    gotoDashboard.$middleware(middleware);
  }

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(SplashState);

  @override
  NothingBuilder $newResultBuilder() => Nothing().toBuilder();
}
