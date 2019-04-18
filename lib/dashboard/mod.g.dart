// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DashboardModuleState> _$dashboardModuleStateSerializer =
    new _$DashboardModuleStateSerializer();

class _$DashboardModuleStateSerializer
    implements StructuredSerializer<DashboardModuleState> {
  @override
  final Iterable<Type> types = const [
    DashboardModuleState,
    _$DashboardModuleState
  ];
  @override
  final String wireName = 'movemedical_model/dashboard/DashboardModuleState';

  @override
  Iterable serialize(Serializers serializers, DashboardModuleState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.dashboard != null) {
      result
        ..add('dashboard')
        ..add(serializers.serialize(object.dashboard,
            specifiedType: const FullType(DashboardState)));
    }
    if (object.dashboardRoute != null) {
      result
        ..add('dashboardRoute')
        ..add(serializers.serialize(object.dashboardRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  RouteCommand, const [const FullType(DashboardState)]),
              const FullType(RouteResult, const [const FullType(Nothing)])
            ])));
    }

    return result;
  }

  @override
  DashboardModuleState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DashboardModuleStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'dashboard':
          result.dashboard.replace(serializers.deserialize(value,
              specifiedType: const FullType(DashboardState)) as DashboardState);
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

class _$DashboardModuleState extends DashboardModuleState {
  @override
  final DashboardState dashboard;
  @override
  final CommandState<RouteCommand<DashboardState>, RouteResult<Nothing>>
      dashboardRoute;

  factory _$DashboardModuleState(
          [void updates(DashboardModuleStateBuilder b)]) =>
      (new DashboardModuleStateBuilder()..update(updates)).build();

  _$DashboardModuleState._({this.dashboard, this.dashboardRoute}) : super._();

  @override
  DashboardModuleState rebuild(void updates(DashboardModuleStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardModuleStateBuilder toBuilder() =>
      new DashboardModuleStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardModuleState &&
        dashboard == other.dashboard &&
        dashboardRoute == other.dashboardRoute;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, dashboard.hashCode), dashboardRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DashboardModuleState')
          ..add('dashboard', dashboard)
          ..add('dashboardRoute', dashboardRoute))
        .toString();
  }
}

class DashboardModuleStateBuilder
    implements Builder<DashboardModuleState, DashboardModuleStateBuilder> {
  _$DashboardModuleState _$v;

  DashboardStateBuilder _dashboard;
  DashboardStateBuilder get dashboard =>
      _$this._dashboard ??= new DashboardStateBuilder();
  set dashboard(DashboardStateBuilder dashboard) =>
      _$this._dashboard = dashboard;

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

  DashboardModuleStateBuilder();

  DashboardModuleStateBuilder get _$this {
    if (_$v != null) {
      _dashboard = _$v.dashboard?.toBuilder();
      _dashboardRoute = _$v.dashboardRoute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardModuleState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DashboardModuleState;
  }

  @override
  void update(void updates(DashboardModuleStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DashboardModuleState build() {
    _$DashboardModuleState _$result;
    try {
      _$result = _$v ??
          new _$DashboardModuleState._(
              dashboard: _dashboard?.build(),
              dashboardRoute: _dashboardRoute?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dashboard';
        _dashboard?.build();
        _$failedField = 'dashboardRoute';
        _dashboardRoute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DashboardModuleState', _$failedField, e.toString());
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
    DashboardModuleState,
    DashboardModuleStateBuilder,
    DashboardModuleActions> DashboardModuleActionsOptions();

class _$DashboardModuleActions extends DashboardModuleActions {
  final StatefulActionsOptions<DashboardModuleState,
      DashboardModuleStateBuilder, DashboardModuleActions> options$;

  final ActionDispatcher<DashboardModuleState> replace$;
  final DashboardActions dashboard;
  final DashboardRoute dashboardRoute;

  _$DashboardModuleActions._(this.options$)
      : replace$ = options$.action<DashboardModuleState>(
            'replace\$', (a) => a?.replace$),
        dashboard = DashboardActions(() => options$
            .stateful<DashboardState, DashboardStateBuilder, DashboardActions>(
                'dashboard',
                (a) => a.dashboard,
                (s) => s?.dashboard,
                (b) => b?.dashboard,
                (parent, builder) => parent?.dashboard = builder)),
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

  factory _$DashboardModuleActions(DashboardModuleActionsOptions options) =>
      _$DashboardModuleActions._(options());

  @override
  DashboardModuleState get initialState$ => DashboardModuleState();

  @override
  DashboardModuleStateBuilder newBuilder$() => DashboardModuleStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.dashboard,
        this.dashboardRoute,
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
    dashboard.reducer$(reducer);
    dashboardRoute.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    dashboard.middleware$(middleware);
    dashboardRoute.middleware$(middleware);
  }
}
