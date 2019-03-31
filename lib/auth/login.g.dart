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
      }
    }

    return result.build();
  }
}

class _$LoginState extends LoginState {
  @override
  final LoginRequest request;

  factory _$LoginState([void updates(LoginStateBuilder b)]) =>
      (new LoginStateBuilder()..update(updates)).build();

  _$LoginState._({this.request}) : super._() {
    if (request == null) {
      throw new BuiltValueNullFieldError('LoginState', 'request');
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
    return other is LoginState && request == other.request;
  }

  @override
  int get hashCode {
    return $jf($jc(0, request.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginState')..add('request', request))
        .toString();
  }
}

class LoginStateBuilder implements Builder<LoginState, LoginStateBuilder> {
  _$LoginState _$v;

  LoginRequestBuilder _request;
  LoginRequestBuilder get request =>
      _$this._request ??= new LoginRequestBuilder();
  set request(LoginRequestBuilder request) => _$this._request = request;

  LoginStateBuilder();

  LoginStateBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
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
      _$result = _$v ?? new _$LoginState._(request: request.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        request.build();
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
    CommandState<RouteCommand<LoginState>, RouteResult<Null>>,
    CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>>,
    LoginRoute> LoginRouteOptions();

class _$LoginRoute extends LoginRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<LoginState>, RouteResult<Null>>,
      CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>>,
      LoginRoute> $options;

  final ActionDispatcher<
      CommandState<RouteCommand<LoginState>, RouteResult<Null>>> $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Null>, LoginRoute,
          String>> $clear;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Null>, LoginRoute,
          String>> $cancel;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Null>, LoginRoute,
          Command<RouteCommand<LoginState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Null>, LoginRoute,
          CommandResult<RouteResult<Null>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Null>, LoginRoute,
          String>> $detach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Null>, LoginRoute,
          String>> $attach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<LoginState>, RouteResult<Null>, LoginRoute,
          CommandProgress>> $progress;

  _$LoginRoute._(this.$options)
      : $replace = $options
            .action<CommandState<RouteCommand<LoginState>, RouteResult<Null>>>(
                '\$replace', (a) => a?.$replace),
        $clear = $options.action<
            CommandPayload<RouteCommand<LoginState>, RouteResult<Null>,
                LoginRoute, String>>('\$clear', (a) => a?.$clear),
        $cancel = $options.action<
            CommandPayload<RouteCommand<LoginState>, RouteResult<Null>,
                LoginRoute, String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<RouteCommand<LoginState>, RouteResult<Null>,
                    LoginRoute, Command<RouteCommand<LoginState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<RouteCommand<LoginState>, RouteResult<Null>,
                    LoginRoute, CommandResult<RouteResult<Null>>>>(
            '\$result', (a) => a?.$result),
        $detach = $options.action<
            CommandPayload<RouteCommand<LoginState>, RouteResult<Null>,
                LoginRoute, String>>('\$detach', (a) => a?.$detach),
        $attach = $options.action<
            CommandPayload<RouteCommand<LoginState>, RouteResult<Null>,
                LoginRoute, String>>('\$attach', (a) => a?.$attach),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<LoginState>,
                RouteResult<Null>,
                LoginRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$LoginRoute(LoginRouteOptions options) => _$LoginRoute._(options());

  @override
  CommandState<RouteCommand<LoginState>, RouteResult<Null>> get $initial =>
      CommandState<RouteCommand<LoginState>, RouteResult<Null>>();

  @override
  CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>>
      $newBuilder() =>
          CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Null>>();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.$clear,
        this.$cancel,
        this.$execute,
        this.$result,
        this.$detach,
        this.$attach,
        this.$progress,
      ]);

// @override
// Serializer<CommandStateLoginRoute> get $serializer => CommandStateLoginRoute.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(LoginState)]),
        FullType(RouteResult, [FullType(Null)])
      ]);
}

typedef StatefulActionsOptions<LoginState, LoginStateBuilder,
    LoginActions> LoginActionsOptions();

class _$LoginActions extends LoginActions {
  final StatefulActionsOptions<LoginState, LoginStateBuilder, LoginActions>
      $options;

  final ActionDispatcher<LoginState> $replace;
  final ActionDispatcher $activatedAction;
  final ActionDispatcher $deactivatedAction;
  final ActionDispatcher $pushAction;
  final ActionDispatcher $popAction;
  final LoginRequestActions request;

  _$LoginActions._(this.$options)
      : $replace = $options.action<LoginState>('\$replace', (a) => a?.$replace),
        $activatedAction =
            $options.action('\$activatedAction', (a) => a?.$activatedAction),
        $deactivatedAction = $options.action(
            '\$deactivatedAction', (a) => a?.$deactivatedAction),
        $pushAction = $options.action('\$pushAction', (a) => a?.$pushAction),
        $popAction = $options.action('\$popAction', (a) => a?.$popAction),
        request = LoginRequestActions(() => $options
            .stateful<LoginRequest, LoginRequestBuilder, LoginRequestActions>(
                'request',
                (a) => a.request,
                (s) => s?.request,
                (b) => b?.request,
                (parent, builder) => parent?.request = builder)),
        super._();

  factory _$LoginActions(LoginActionsOptions options) =>
      _$LoginActions._(options());

  @override
  LoginStateBuilder $newBuilder() => LoginStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.request,
      ]);

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.$activatedAction,
        this.$deactivatedAction,
        this.$pushAction,
        this.$popAction,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    request.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    request.$middleware(middleware);
  }

// @override
// Serializer<LoginStateLoginActions> get $serializer => LoginStateLoginActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(LoginState);
}
