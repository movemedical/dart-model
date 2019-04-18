// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DashboardState> _$dashboardStateSerializer =
    new _$DashboardStateSerializer();

class _$DashboardStateSerializer
    implements StructuredSerializer<DashboardState> {
  @override
  final Iterable<Type> types = const [DashboardState, _$DashboardState];
  @override
  final String wireName = 'movemedical_model/dashboard/DashboardState';

  @override
  Iterable serialize(Serializers serializers, DashboardState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  DashboardState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new DashboardStateBuilder().build();
  }
}

class _$DashboardState extends DashboardState {
  factory _$DashboardState([void updates(DashboardStateBuilder b)]) =>
      (new DashboardStateBuilder()..update(updates)).build();

  _$DashboardState._() : super._();

  @override
  DashboardState rebuild(void updates(DashboardStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardStateBuilder toBuilder() =>
      new DashboardStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardState;
  }

  @override
  int get hashCode {
    return 207337496;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DashboardState').toString();
  }
}

class DashboardStateBuilder
    implements Builder<DashboardState, DashboardStateBuilder> {
  _$DashboardState _$v;

  DashboardStateBuilder();

  @override
  void replace(DashboardState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DashboardState;
  }

  @override
  void update(void updates(DashboardStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DashboardState build() {
    final _$result = _$v ?? new _$DashboardState._();
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
    CommandState<RouteCommand<DashboardState>, RouteResult<Nothing>>,
    CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Nothing>>,
    DashboardRoute> DashboardRouteOptions();

class _$DashboardRoute extends DashboardRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<DashboardState>, RouteResult<Nothing>>,
      CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Nothing>>,
      DashboardRoute> options$;

  final ActionDispatcher<
          CommandState<RouteCommand<DashboardState>, RouteResult<Nothing>>>
      replace$;
  final ActionDispatcher<String> cancel$;
  final ActionDispatcher<Command<RouteCommand<DashboardState>>> execute$;
  final ActionDispatcher<CommandResult<RouteResult<Nothing>>> result$;
  final ActionDispatcher<CommandProgress> progress$;

  _$DashboardRoute._(this.options$)
      : replace$ = options$.action<
            CommandState<RouteCommand<DashboardState>,
                RouteResult<Nothing>>>('replace\$', (a) => a?.replace$),
        cancel$ = options$.action<String>('cancel\$', (a) => a?.cancel$),
        execute$ = options$.action<Command<RouteCommand<DashboardState>>>(
            'execute\$', (a) => a?.execute$),
        result$ = options$.action<CommandResult<RouteResult<Nothing>>>(
            'result\$', (a) => a?.result$),
        progress$ =
            options$.action<CommandProgress>('progress\$', (a) => a?.progress$),
        super._();

  factory _$DashboardRoute(DashboardRouteOptions options) =>
      _$DashboardRoute._(options());

  @override
  CommandState<RouteCommand<DashboardState>, RouteResult<Nothing>>
      get initialState$ =>
          CommandState<RouteCommand<DashboardState>, RouteResult<Nothing>>();

  @override
  CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Nothing>>
      newBuilder$() => CommandStateBuilder<RouteCommand<DashboardState>,
          RouteResult<Nothing>>();

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
  RouteCommandBuilder<DashboardState> newCommandBuilder() =>
      RouteCommand<DashboardState>().toBuilder();

  @override
  RouteResultBuilder<Nothing> newResultBuilder() =>
      RouteResult<Nothing>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  DashboardStateBuilder newCommandPayloadBuilder() =>
      DashboardState().toBuilder();

  @override
  NothingBuilder newResultPayloadBuilder() => Nothing().toBuilder();

  @override
  Serializer<DashboardState> get commandPayloadSerializer =>
      DashboardState.serializer;

  @override
  Serializer<Nothing> get resultPayloadSerializer => Nothing.serializer;
}

typedef StatefulActionsOptions<DashboardState, DashboardStateBuilder,
    DashboardActions> DashboardActionsOptions();

class _$DashboardActions extends DashboardActions {
  final StatefulActionsOptions<DashboardState, DashboardStateBuilder,
      DashboardActions> options$;

  final ActionDispatcher<DashboardState> replace$;
  final ActionDispatcher<Null> activated$;
  final ActionDispatcher<Null> deactivated$;
  final ActionDispatcher<DashboardState> pushing$;
  final ActionDispatcher<Nothing> popping$;

  _$DashboardActions._(this.options$)
      : replace$ =
            options$.action<DashboardState>('replace\$', (a) => a?.replace$),
        activated$ = options$.action<Null>('activated\$', (a) => a?.activated$),
        deactivated$ =
            options$.action<Null>('deactivated\$', (a) => a?.deactivated$),
        pushing$ =
            options$.action<DashboardState>('pushing\$', (a) => a?.pushing$),
        popping$ = options$.action<Nothing>('popping\$', (a) => a?.popping$),
        super._();

  factory _$DashboardActions(DashboardActionsOptions options) =>
      _$DashboardActions._(options());

  @override
  DashboardStateBuilder newBuilder$() => DashboardStateBuilder();

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
  NothingBuilder newResultBuilder$() => Nothing().toBuilder();
}
