// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loader.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoaderState> _$loaderStateSerializer = new _$LoaderStateSerializer();

class _$LoaderStateSerializer implements StructuredSerializer<LoaderState> {
  @override
  final Iterable<Type> types = const [LoaderState, _$LoaderState];
  @override
  final String wireName = 'movemedical_model/LoaderState';

  @override
  Iterable serialize(Serializers serializers, LoaderState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'loginRoute',
      serializers.serialize(object.loginRoute,
          specifiedType: const FullType(CommandState, const [
            const FullType(RouteCommand, const [const FullType(String)]),
            const FullType(RouteResult, const [const FullType(Null)])
          ])),
    ];

    return result;
  }

  @override
  LoaderState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoaderStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'loginRoute':
          result.loginRoute.replace(serializers.deserialize(value,
              specifiedType: const FullType(CommandState, const [
                const FullType(RouteCommand, const [const FullType(String)]),
                const FullType(RouteResult, const [const FullType(Null)])
              ])) as CommandState<RouteCommand<String>, RouteResult<Null>>);
          break;
      }
    }

    return result.build();
  }
}

class _$LoaderState extends LoaderState {
  @override
  final CommandState<RouteCommand<String>, RouteResult<Null>> loginRoute;

  factory _$LoaderState([void updates(LoaderStateBuilder b)]) =>
      (new LoaderStateBuilder()..update(updates)).build();

  _$LoaderState._({this.loginRoute}) : super._() {
    if (loginRoute == null) {
      throw new BuiltValueNullFieldError('LoaderState', 'loginRoute');
    }
  }

  @override
  LoaderState rebuild(void updates(LoaderStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LoaderStateBuilder toBuilder() => new LoaderStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoaderState && loginRoute == other.loginRoute;
  }

  @override
  int get hashCode {
    return $jf($jc(0, loginRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoaderState')
          ..add('loginRoute', loginRoute))
        .toString();
  }
}

class LoaderStateBuilder implements Builder<LoaderState, LoaderStateBuilder> {
  _$LoaderState _$v;

  CommandStateBuilder<RouteCommand<String>, RouteResult<Null>> _loginRoute;
  CommandStateBuilder<RouteCommand<String>, RouteResult<Null>> get loginRoute =>
      _$this._loginRoute ??=
          new CommandStateBuilder<RouteCommand<String>, RouteResult<Null>>();
  set loginRoute(
          CommandStateBuilder<RouteCommand<String>, RouteResult<Null>>
              loginRoute) =>
      _$this._loginRoute = loginRoute;

  LoaderStateBuilder();

  LoaderStateBuilder get _$this {
    if (_$v != null) {
      _loginRoute = _$v.loginRoute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoaderState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoaderState;
  }

  @override
  void update(void updates(LoaderStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$LoaderState build() {
    _$LoaderState _$result;
    try {
      _$result = _$v ?? new _$LoaderState._(loginRoute: loginRoute.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'loginRoute';
        loginRoute.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoaderState', _$failedField, e.toString());
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

typedef StatefulActionsOptions<LoaderState, LoaderStateBuilder,
    LoaderActions> LoaderActionsOptions();

class _$LoaderActions extends LoaderActions {
  final StatefulActionsOptions<LoaderState, LoaderStateBuilder, LoaderActions>
      $options;

  final ActionDispatcher<LoaderState> $replace;
  final LoginRoute loginRoute;

  _$LoaderActions._(this.$options)
      : $replace =
            $options.action<LoaderState>('\$replace', (a) => a?.$replace),
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

  factory _$LoaderActions(LoaderActionsOptions options) =>
      _$LoaderActions._(options());

  @override
  LoaderState get $initial => LoaderState();

  @override
  LoaderStateBuilder $newBuilder() => LoaderStateBuilder();

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
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    loginRoute.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    loginRoute.$middleware(middleware);
  }

// @override
// Serializer<LoaderStateLoaderActions> get $serializer => LoaderStateLoaderActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(LoaderState);
}
