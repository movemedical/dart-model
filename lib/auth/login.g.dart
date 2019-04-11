// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginState> _$loginStateSerializer = new _$LoginStateSerializer();

class _$LoginStateSerializer implements StructuredSerializer<LoginState> {
  @override
  final Iterable<Type> types = const [LoginState, _$LoginState];
  @override
  final String wireName = 'movemedical_model/auth/LoginState';

  @override
  Iterable serialize(Serializers serializers, LoginState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(LoginRequest)),
      'dashboardRoute',
      serializers.serialize(object.dashboardRoute,
          specifiedType: const FullType(CommandState, const [
            const FullType(
                RouteCommand, const [const FullType(DashboardState)]),
            const FullType(RouteResult, const [const FullType(Null)])
          ])),
    ];

    return result;
  }

  @override
  LoginState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'request':
          result.request.replace(serializers.deserialize(value,
              specifiedType: const FullType(LoginRequest)) as LoginRequest);
          break;
        case 'dashboardRoute':
          result.dashboardRoute.replace(serializers.deserialize(value,
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

class _$LoginState extends LoginState {
  @override
  final LoginRequest request;
  @override
  final CommandState<RouteCommand<DashboardState>, RouteResult<Null>>
      dashboardRoute;

  factory _$LoginState([void updates(LoginStateBuilder b)]) =>
      (new LoginStateBuilder()..update(updates)).build();

  _$LoginState._({this.request, this.dashboardRoute}) : super._() {
    if (request == null) {
      throw new BuiltValueNullFieldError('LoginState', 'request');
    }
    if (dashboardRoute == null) {
      throw new BuiltValueNullFieldError('LoginState', 'dashboardRoute');
    }
  }

  @override
  LoginState rebuild(void updates(LoginStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStateBuilder toBuilder() => new LoginStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginState &&
        request == other.request &&
        dashboardRoute == other.dashboardRoute;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, request.hashCode), dashboardRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginState')
          ..add('request', request)
          ..add('dashboardRoute', dashboardRoute))
        .toString();
  }
}

class LoginStateBuilder implements Builder<LoginState, LoginStateBuilder> {
  _$LoginState _$v;

  LoginRequestBuilder _request;
  LoginRequestBuilder get request =>
      _$this._request ??= new LoginRequestBuilder();
  set request(LoginRequestBuilder request) => _$this._request = request;

  CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Null>>
      _dashboardRoute;
  CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Null>>
      get dashboardRoute => _$this._dashboardRoute ??= new CommandStateBuilder<
          RouteCommand<DashboardState>, RouteResult<Null>>();
  set dashboardRoute(
          CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Null>>
              dashboardRoute) =>
      _$this._dashboardRoute = dashboardRoute;

  LoginStateBuilder();

  LoginStateBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
      _dashboardRoute = _$v.dashboardRoute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginState;
  }

  @override
  void update(void updates(LoginStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginState build() {
    _$LoginState _$result;
    try {
      _$result = _$v ??
          new _$LoginState._(
              request: request.build(), dashboardRoute: dashboardRoute.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        request.build();
        _$failedField = 'dashboardRoute';
        dashboardRoute.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginState', _$failedField, e.toString());
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
    CommandState<RouteCommand<LoginState>, RouteResult<Empty>>,
    CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Empty>>,
    LoginRoute> LoginRouteOptions();

class _$LoginRoute extends LoginRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<LoginState>, RouteResult<Empty>>,
      CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Empty>>,
      LoginRoute> $options;

  final ActionDispatcher<
      CommandState<RouteCommand<LoginState>, RouteResult<Empty>>> $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Empty>, LoginRoute,
          String>> $cancel;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Empty>, LoginRoute,
          Command<RouteCommand<LoginState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Empty>, LoginRoute,
          CommandResult<RouteResult<Empty>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Empty>, LoginRoute,
          CommandProgress>> $progress;

  _$LoginRoute._(this.$options)
      : $replace = $options
            .action<CommandState<RouteCommand<LoginState>, RouteResult<Empty>>>(
                '\$replace', (a) => a?.$replace),
        $cancel = $options.action<
            CommandPayload<RouteCommand<LoginState>, RouteResult<Empty>,
                LoginRoute, String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<RouteCommand<LoginState>, RouteResult<Empty>,
                    LoginRoute, Command<RouteCommand<LoginState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<RouteCommand<LoginState>, RouteResult<Empty>,
                    LoginRoute, CommandResult<RouteResult<Empty>>>>(
            '\$result', (a) => a?.$result),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<LoginState>,
                RouteResult<Empty>,
                LoginRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$LoginRoute(LoginRouteOptions options) => _$LoginRoute._(options());

  @override
  CommandState<RouteCommand<LoginState>, RouteResult<Empty>> get $initial =>
      CommandState<RouteCommand<LoginState>, RouteResult<Empty>>();

  @override
  CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Empty>>
      $newBuilder() =>
          CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Empty>>();

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
        FullType(RouteCommand, [FullType(LoginState)]),
        FullType(RouteResult, [FullType(Empty)])
      ]);

  @override
  RouteCommandBuilder<LoginState> newCommandBuilder() =>
      RouteCommand<LoginState>().toBuilder();

  @override
  RouteResultBuilder<Empty> newResultBuilder() =>
      RouteResult<Empty>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  LoginStateBuilder newCommandPayloadBuilder() => LoginState().toBuilder();

  @override
  EmptyBuilder newResultPayloadBuilder() => Empty().toBuilder();

  @override
  Serializer<LoginState> get commandPayloadSerializer => LoginState.serializer;

  @override
  Serializer<Empty> get resultPayloadSerializer => Empty.serializer;
}

typedef StatefulActionsOptions<LoginState, LoginStateBuilder,
    LoginActions> LoginActionsOptions();

class _$LoginActions extends LoginActions {
  final StatefulActionsOptions<LoginState, LoginStateBuilder, LoginActions>
      $options;

  final ActionDispatcher<LoginState> $replace;
  final ActionDispatcher<Null> $activated;
  final ActionDispatcher<Null> $deactivated;
  final ActionDispatcher<LoginState> $pushing;
  final ActionDispatcher<Empty> $popping;
  final LoginRequestActions request;
  final DashboardRoute dashboardRoute;

  _$LoginActions._(this.$options)
      : $replace = $options.action<LoginState>('\$replace', (a) => a?.$replace),
        $activated = $options.action<Null>('\$activated', (a) => a?.$activated),
        $deactivated =
            $options.action<Null>('\$deactivated', (a) => a?.$deactivated),
        $pushing = $options.action<LoginState>('\$pushing', (a) => a?.$pushing),
        $popping = $options.action<Empty>('\$popping', (a) => a?.$popping),
        request = LoginRequestActions(() => $options
            .stateful<LoginRequest, LoginRequestBuilder, LoginRequestActions>(
                'request',
                (a) => a.request,
                (s) => s?.request,
                (b) => b?.request,
                (parent, builder) => parent?.request = builder)),
        dashboardRoute = DashboardRoute(() => $options.stateful<
                CommandState<RouteCommand<DashboardState>, RouteResult<Empty>>,
                CommandStateBuilder<RouteCommand<DashboardState>,
                    RouteResult<Empty>>,
                DashboardRoute>(
            'dashboardRoute',
            (a) => a.dashboardRoute,
            (s) => s?.dashboardRoute,
            (b) => b?.dashboardRoute,
            (parent, builder) => parent?.dashboardRoute = builder)),
        super._();

  factory _$LoginActions(LoginActionsOptions options) =>
      _$LoginActions._(options());

  @override
  LoginStateBuilder $newBuilder() => LoginStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.request,
        this.dashboardRoute,
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
    request.$reducer(reducer);
    dashboardRoute.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    request.$middleware(middleware);
    dashboardRoute.$middleware(middleware);
  }

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(LoginState);

  @override
  EmptyBuilder $newResultBuilder() => Empty().toBuilder();
}
