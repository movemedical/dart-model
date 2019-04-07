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
  LoaderState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoaderStateBuilder();

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

class _$LoaderState extends LoaderState {
  @override
  final CommandState<RouteCommand<LoginState>, RouteResult<Null>> gotoLogin;
  @override
  final CommandState<RouteCommand<DashboardState>, RouteResult<Null>>
      gotoDashboard;

  factory _$LoaderState([void updates(LoaderStateBuilder b)]) =>
      (new LoaderStateBuilder()..update(updates)).build();

  _$LoaderState._({this.gotoLogin, this.gotoDashboard}) : super._() {
    if (gotoLogin == null) {
      throw new BuiltValueNullFieldError('LoaderState', 'gotoLogin');
    }
    if (gotoDashboard == null) {
      throw new BuiltValueNullFieldError('LoaderState', 'gotoDashboard');
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
    return other is LoaderState &&
        gotoLogin == other.gotoLogin &&
        gotoDashboard == other.gotoDashboard;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, gotoLogin.hashCode), gotoDashboard.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoaderState')
          ..add('gotoLogin', gotoLogin)
          ..add('gotoDashboard', gotoDashboard))
        .toString();
  }
}

class LoaderStateBuilder implements Builder<LoaderState, LoaderStateBuilder> {
  _$LoaderState _$v;

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

  LoaderStateBuilder();

  LoaderStateBuilder get _$this {
    if (_$v != null) {
      _gotoLogin = _$v.gotoLogin?.toBuilder();
      _gotoDashboard = _$v.gotoDashboard?.toBuilder();
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
      _$result = _$v ??
          new _$LoaderState._(
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
  final LoginRoute gotoLogin;
  final DashboardRoute gotoDashboard;

  _$LoaderActions._(this.$options)
      : $replace =
            $options.action<LoaderState>('\$replace', (a) => a?.$replace),
        gotoLogin = LoginRoute(() =>
            $options.stateful<
                    CommandState<RouteCommand<LoginState>, RouteResult<Empty>>,
                    CommandStateBuilder<RouteCommand<LoginState>,
                        RouteResult<Empty>>,
                    LoginRoute>(
                'gotoLogin',
                (a) => a.gotoLogin,
                (s) => s?.gotoLogin,
                (b) => b?.gotoLogin,
                (parent, builder) => parent?.gotoLogin = builder)),
        gotoDashboard = DashboardRoute(() => $options.stateful<
                CommandState<RouteCommand<DashboardState>, RouteResult<Empty>>,
                CommandStateBuilder<RouteCommand<DashboardState>,
                    RouteResult<Empty>>,
                DashboardRoute>(
            'gotoDashboard',
            (a) => a.gotoDashboard,
            (s) => s?.gotoDashboard,
            (b) => b?.gotoDashboard,
            (parent, builder) => parent?.gotoDashboard = builder)),
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
        this.gotoLogin,
        this.gotoDashboard,
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
    gotoLogin.$reducer(reducer);
    gotoDashboard.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    gotoLogin.$middleware(middleware);
    gotoDashboard.$middleware(middleware);
  }

// @override
// Serializer<LoaderStateLoaderActions> get $serializer => LoaderStateLoaderActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(LoaderState);
}
