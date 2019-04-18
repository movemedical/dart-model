// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuthModuleState> _$authModuleStateSerializer =
    new _$AuthModuleStateSerializer();

class _$AuthModuleStateSerializer
    implements StructuredSerializer<AuthModuleState> {
  @override
  final Iterable<Type> types = const [AuthModuleState, _$AuthModuleState];
  @override
  final String wireName = 'movemedical_model/auth/AuthModuleState';

  @override
  Iterable serialize(Serializers serializers, AuthModuleState object,
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
  AuthModuleState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthModuleStateBuilder();

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

class _$AuthModuleState extends AuthModuleState {
  @override
  final LoginState login;
  @override
  final CommandState<RouteCommand<LoginState>, RouteResult<Nothing>> loginRoute;

  factory _$AuthModuleState([void updates(AuthModuleStateBuilder b)]) =>
      (new AuthModuleStateBuilder()..update(updates)).build();

  _$AuthModuleState._({this.login, this.loginRoute}) : super._() {
    if (login == null) {
      throw new BuiltValueNullFieldError('AuthModuleState', 'login');
    }
  }

  @override
  AuthModuleState rebuild(void updates(AuthModuleStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthModuleStateBuilder toBuilder() =>
      new AuthModuleStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthModuleState &&
        login == other.login &&
        loginRoute == other.loginRoute;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, login.hashCode), loginRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthModuleState')
          ..add('login', login)
          ..add('loginRoute', loginRoute))
        .toString();
  }
}

class AuthModuleStateBuilder
    implements Builder<AuthModuleState, AuthModuleStateBuilder> {
  _$AuthModuleState _$v;

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

  AuthModuleStateBuilder();

  AuthModuleStateBuilder get _$this {
    if (_$v != null) {
      _login = _$v.login?.toBuilder();
      _loginRoute = _$v.loginRoute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthModuleState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthModuleState;
  }

  @override
  void update(void updates(AuthModuleStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthModuleState build() {
    _$AuthModuleState _$result;
    try {
      _$result = _$v ??
          new _$AuthModuleState._(
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
            'AuthModuleState', _$failedField, e.toString());
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

typedef StatefulActionsOptions<AuthModuleState, AuthModuleStateBuilder,
    AuthModuleActions> AuthModuleActionsOptions();

class _$AuthModuleActions extends AuthModuleActions {
  final StatefulActionsOptions<AuthModuleState, AuthModuleStateBuilder,
      AuthModuleActions> options$;

  final ActionDispatcher<AuthModuleState> replace$;
  final LoginActions login;
  final LoginRoute loginRoute;

  _$AuthModuleActions._(this.options$)
      : replace$ =
            options$.action<AuthModuleState>('replace\$', (a) => a?.replace$),
        login = LoginActions(() =>
            options$.stateful<LoginState, LoginStateBuilder, LoginActions>(
                'login',
                (a) => a.login,
                (s) => s?.login,
                (b) => b?.login,
                (parent, builder) => parent?.login = builder)),
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
        super._();

  factory _$AuthModuleActions(AuthModuleActionsOptions options) =>
      _$AuthModuleActions._(options());

  @override
  AuthModuleStateBuilder newBuilder$() => AuthModuleStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.login,
        this.loginRoute,
      ]);

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
      ]);

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    login.reducer$(reducer);
    loginRoute.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    login.middleware$(middleware);
    loginRoute.middleware$(middleware);
  }
}
