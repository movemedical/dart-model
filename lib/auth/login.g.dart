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
            const FullType(RouteResult, const [const FullType(Nothing)])
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
                    const FullType(RouteResult, const [const FullType(Nothing)])
                  ]))
              as CommandState<RouteCommand<DashboardState>,
                  RouteResult<Nothing>>);
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
  final CommandState<RouteCommand<DashboardState>, RouteResult<Nothing>>
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

  CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Nothing>>
      _dashboardRoute;
  CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Nothing>>
      get dashboardRoute => _$this._dashboardRoute ??= new CommandStateBuilder<
          RouteCommand<DashboardState>, RouteResult<Nothing>>();
  set dashboardRoute(
          CommandStateBuilder<RouteCommand<DashboardState>,
                  RouteResult<Nothing>>
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
    CommandState<RouteCommand<LoginState>, RouteResult<Nothing>>,
    CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Nothing>>,
    LoginRoute> LoginRouteOptions();

class _$LoginRoute extends LoginRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<LoginState>, RouteResult<Nothing>>,
      CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Nothing>>,
      LoginRoute> options$;

  final ActionDispatcher<
      CommandState<RouteCommand<LoginState>, RouteResult<Nothing>>> replace$;
  final ActionDispatcher<String> cancel$;
  final ActionDispatcher<Command<RouteCommand<LoginState>>> execute$;
  final ActionDispatcher<CommandResult<RouteResult<Nothing>>> result$;
  final ActionDispatcher<CommandProgress> progress$;

  _$LoginRoute._(this.options$)
      : replace$ = options$.action<
                CommandState<RouteCommand<LoginState>, RouteResult<Nothing>>>(
            'replace\$', (a) => a?.replace$),
        cancel$ = options$.action<String>('cancel\$', (a) => a?.cancel$),
        execute$ = options$.action<Command<RouteCommand<LoginState>>>(
            'execute\$', (a) => a?.execute$),
        result$ = options$.action<CommandResult<RouteResult<Nothing>>>(
            'result\$', (a) => a?.result$),
        progress$ =
            options$.action<CommandProgress>('progress\$', (a) => a?.progress$),
        super._();

  factory _$LoginRoute(LoginRouteOptions options) => _$LoginRoute._(options());

  @override
  CommandState<RouteCommand<LoginState>, RouteResult<Nothing>>
      get initialState$ =>
          CommandState<RouteCommand<LoginState>, RouteResult<Nothing>>();

  @override
  CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Nothing>>
      newBuilder$() =>
          CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Nothing>>();

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
  RouteCommandBuilder<LoginState> newCommandBuilder() =>
      RouteCommand<LoginState>().toBuilder();

  @override
  RouteResultBuilder<Nothing> newResultBuilder() =>
      RouteResult<Nothing>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  LoginStateBuilder newCommandPayloadBuilder() => LoginState().toBuilder();

  @override
  NothingBuilder newResultPayloadBuilder() => Nothing().toBuilder();

  @override
  Serializer<LoginState> get commandPayloadSerializer => LoginState.serializer;

  @override
  Serializer<Nothing> get resultPayloadSerializer => Nothing.serializer;
}

typedef StatefulActionsOptions<LoginState, LoginStateBuilder,
    LoginActions> LoginActionsOptions();

class _$LoginActions extends LoginActions {
  final StatefulActionsOptions<LoginState, LoginStateBuilder, LoginActions>
      options$;

  final ActionDispatcher<LoginState> replace$;
  final ActionDispatcher activated$;
  final ActionDispatcher deactivated$;
  final ActionDispatcher<LoginState> pushing$;
  final ActionDispatcher<Nothing> popping$;
  final LoginRequestActions request;
  final DashboardRoute dashboardRoute;

  _$LoginActions._(this.options$)
      : replace$ = options$.action<LoginState>('replace\$', (a) => a?.replace$),
        activated$ = options$.action('activated\$', (a) => a?.activated$),
        deactivated$ = options$.action('deactivated\$', (a) => a?.deactivated$),
        pushing$ = options$.action<LoginState>('pushing\$', (a) => a?.pushing$),
        popping$ = options$.action<Nothing>('popping\$', (a) => a?.popping$),
        request = LoginRequestActions(() => options$
            .stateful<LoginRequest, LoginRequestBuilder, LoginRequestActions>(
                'request',
                (a) => a.request,
                (s) => s?.request,
                (b) => b?.request,
                (parent, builder) => parent?.request = builder)),
        dashboardRoute = DashboardRoute(() =>
            options$.stateful<
                    CommandState<RouteCommand<DashboardState>,
                        RouteResult<Nothing>>,
                    CommandStateBuilder<RouteCommand<DashboardState>,
                        RouteResult<Nothing>>,
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
  LoginStateBuilder newBuilder$() => LoginStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.request,
        this.dashboardRoute,
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
      ]);

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    request.reducer$(reducer);
    dashboardRoute.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    request.middleware$(middleware);
    dashboardRoute.middleware$(middleware);
  }

  @override
  NothingBuilder newResultBuilder$() => Nothing().toBuilder();
}
