// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthState> _$authStateSerializer = new _$AuthStateSerializer();

class _$AuthStateSerializer implements StructuredSerializer<AuthState> {
  @override
  final Iterable<Type> types = const [AuthState, _$AuthState];
  @override
  final String wireName = 'movemedical_model/auth/AuthState';

  @override
  Iterable serialize(Serializers serializers, AuthState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'login',
      serializers.serialize(object.login,
          specifiedType: const FullType(LoginState)),
    ];
    if (object.loginRoute != null) {
      result
        ..add('loginRoute')
        ..add(serializers.serialize(object.loginRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(RouteCommand, const [const FullType(LoginState)]),
              const FullType(RouteResult, const [const FullType(Nothing)])
            ])));
    }

    return result;
  }

  @override
  AuthState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'login':
          result.login.replace(serializers.deserialize(value,
              specifiedType: const FullType(LoginState)) as LoginState);
          break;
        case 'loginRoute':
          result.loginRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(
                        RouteCommand, const [const FullType(LoginState)]),
                    const FullType(RouteResult, const [const FullType(Nothing)])
                  ]))
              as CommandState<RouteCommand<LoginState>, RouteResult<Nothing>>);
          break;
      }
    }

    return result.build();
  }
}

class _$AuthState extends AuthState {
  @override
  final LoginState login;
  @override
  final CommandState<RouteCommand<LoginState>, RouteResult<Nothing>> loginRoute;

  factory _$AuthState([void updates(AuthStateBuilder b)]) =>
      (new AuthStateBuilder()..update(updates)).build();

  _$AuthState._({this.login, this.loginRoute}) : super._() {
    if (login == null) {
      throw new BuiltValueNullFieldError('AuthState', 'login');
    }
  }

  @override
  AuthState rebuild(void updates(AuthStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        login == other.login &&
        loginRoute == other.loginRoute;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, login.hashCode), loginRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthState')
          ..add('login', login)
          ..add('loginRoute', loginRoute))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState _$v;

  LoginStateBuilder _login;
  LoginStateBuilder get login => _$this._login ??= new LoginStateBuilder();
  set login(LoginStateBuilder login) => _$this._login = login;

  CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Nothing>>
      _loginRoute;
  CommandStateBuilder<RouteCommand<LoginState>,
      RouteResult<Nothing>> get loginRoute => _$this
          ._loginRoute ??=
      new CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Nothing>>();
  set loginRoute(
          CommandStateBuilder<RouteCommand<LoginState>, RouteResult<Nothing>>
              loginRoute) =>
      _$this._loginRoute = loginRoute;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    if (_$v != null) {
      _login = _$v.login?.toBuilder();
      _loginRoute = _$v.loginRoute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthState;
  }

  @override
  void update(void updates(AuthStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthState build() {
    _$AuthState _$result;
    try {
      _$result = _$v ??
          new _$AuthState._(
              login: login.build(), loginRoute: _loginRoute?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'login';
        login.build();
        _$failedField = 'loginRoute';
        _loginRoute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthState', _$failedField, e.toString());
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

typedef StatefulActionsOptions<AuthState, AuthStateBuilder,
    AuthActions> AuthActionsOptions();

class _$AuthActions extends AuthActions {
  final StatefulActionsOptions<AuthState, AuthStateBuilder, AuthActions>
      $options;

  final ActionDispatcher<AuthState> $replace;
  final LoginActions login;
  final LoginRoute loginRoute;

  _$AuthActions._(this.$options)
      : $replace = $options.action<AuthState>('\$replace', (a) => a?.$replace),
        login = LoginActions(() =>
            $options.stateful<LoginState, LoginStateBuilder, LoginActions>(
                'login',
                (a) => a.login,
                (s) => s?.login,
                (b) => b?.login,
                (parent, builder) => parent?.login = builder)),
        loginRoute = LoginRoute(
            () =>
                $options.stateful<
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
        super._();

  factory _$AuthActions(AuthActionsOptions options) =>
      _$AuthActions._(options());

  @override
  AuthStateBuilder $newBuilder() => AuthStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.login,
        this.loginRoute,
      ]);

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    login.$reducer(reducer);
    loginRoute.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    login.$middleware(middleware);
    loginRoute.$middleware(middleware);
  }

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(AuthState);
}
