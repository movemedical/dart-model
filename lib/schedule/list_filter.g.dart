// GENERATED CODE - DO NOT MODIFY BY HAND

part of state.schedule.list_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaseEventListFilterState> _$caseEventListFilterStateSerializer =
    new _$CaseEventListFilterStateSerializer();

class _$CaseEventListFilterStateSerializer
    implements StructuredSerializer<CaseEventListFilterState> {
  @override
  final Iterable<Type> types = const [
    CaseEventListFilterState,
    _$CaseEventListFilterState
  ];
  @override
  final String wireName = 'movemedical_model/schedule/CaseEventListFilterState';

  @override
  Iterable serialize(Serializers serializers, CaseEventListFilterState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(ListCaseEventsApiRequest)),
    ];

    return result;
  }

  @override
  CaseEventListFilterState deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaseEventListFilterStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ListCaseEventsApiRequest))
              as ListCaseEventsApiRequest);
          break;
      }
    }

    return result.build();
  }
}

class _$CaseEventListFilterState extends CaseEventListFilterState {
  @override
  final ListCaseEventsApiRequest request;

  factory _$CaseEventListFilterState(
          [void updates(CaseEventListFilterStateBuilder b)]) =>
      (new CaseEventListFilterStateBuilder()..update(updates)).build();

  _$CaseEventListFilterState._({this.request}) : super._() {
    if (request == null) {
      throw new BuiltValueNullFieldError('CaseEventListFilterState', 'request');
    }
  }

  @override
  CaseEventListFilterState rebuild(
          void updates(CaseEventListFilterStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CaseEventListFilterStateBuilder toBuilder() =>
      new CaseEventListFilterStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaseEventListFilterState && request == other.request;
  }

  @override
  int get hashCode {
    return $jf($jc(0, request.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CaseEventListFilterState')
          ..add('request', request))
        .toString();
  }
}

class CaseEventListFilterStateBuilder
    implements
        Builder<CaseEventListFilterState, CaseEventListFilterStateBuilder> {
  _$CaseEventListFilterState _$v;

  ListCaseEventsApiRequestBuilder _request;
  ListCaseEventsApiRequestBuilder get request =>
      _$this._request ??= new ListCaseEventsApiRequestBuilder();
  set request(ListCaseEventsApiRequestBuilder request) =>
      _$this._request = request;

  CaseEventListFilterStateBuilder();

  CaseEventListFilterStateBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaseEventListFilterState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CaseEventListFilterState;
  }

  @override
  void update(void updates(CaseEventListFilterStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CaseEventListFilterState build() {
    _$CaseEventListFilterState _$result;
    try {
      _$result =
          _$v ?? new _$CaseEventListFilterState._(request: request.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        request.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CaseEventListFilterState', _$failedField, e.toString());
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
    CommandState<RouteCommand<CaseEventListFilterState>,
        RouteResult<ListCaseEventsApiRequest>>,
    CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
        RouteResult<ListCaseEventsApiRequest>>,
    CaseEventListFilterRoute> CaseEventListFilterRouteOptions();

class _$CaseEventListFilterRoute extends CaseEventListFilterRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>,
      CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>,
      CaseEventListFilterRoute> $options;

  final ActionDispatcher<
      CommandState<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>> $replace;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>,
          CaseEventListFilterRoute,
          String>> $clear;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>,
          CaseEventListFilterRoute,
          String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>,
          CaseEventListFilterRoute,
          Command<RouteCommand<CaseEventListFilterState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>,
          CaseEventListFilterRoute,
          CommandResult<RouteResult<ListCaseEventsApiRequest>>>> $result;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>,
          CaseEventListFilterRoute,
          String>> $detach;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>,
          CaseEventListFilterRoute,
          String>> $attach;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>,
          CaseEventListFilterRoute,
          CommandProgress>> $progress;

  _$CaseEventListFilterRoute._(this.$options)
      : $replace = $options.action<
                CommandState<RouteCommand<CaseEventListFilterState>,
                    RouteResult<ListCaseEventsApiRequest>>>(
            '\$replace', (a) => a?.$replace),
        $clear = $options.action<
            CommandPayload<
                RouteCommand<CaseEventListFilterState>,
                RouteResult<ListCaseEventsApiRequest>,
                CaseEventListFilterRoute,
                String>>('\$clear', (a) => a?.$clear),
        $cancel = $options.action<
            CommandPayload<
                RouteCommand<CaseEventListFilterState>,
                RouteResult<ListCaseEventsApiRequest>,
                CaseEventListFilterRoute,
                String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<CaseEventListFilterState>,
                    RouteResult<ListCaseEventsApiRequest>,
                    CaseEventListFilterRoute,
                    Command<RouteCommand<CaseEventListFilterState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<CaseEventListFilterState>,
                    RouteResult<ListCaseEventsApiRequest>,
                    CaseEventListFilterRoute,
                    CommandResult<RouteResult<ListCaseEventsApiRequest>>>>(
            '\$result', (a) => a?.$result),
        $detach = $options.action<
            CommandPayload<
                RouteCommand<CaseEventListFilterState>,
                RouteResult<ListCaseEventsApiRequest>,
                CaseEventListFilterRoute,
                String>>('\$detach', (a) => a?.$detach),
        $attach = $options.action<
            CommandPayload<
                RouteCommand<CaseEventListFilterState>,
                RouteResult<ListCaseEventsApiRequest>,
                CaseEventListFilterRoute,
                String>>('\$attach', (a) => a?.$attach),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<CaseEventListFilterState>,
                RouteResult<ListCaseEventsApiRequest>,
                CaseEventListFilterRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$CaseEventListFilterRoute(CaseEventListFilterRouteOptions options) =>
      _$CaseEventListFilterRoute._(options());

  @override
  CommandState<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>
      get $initial => CommandState<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>();

  @override
  CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>
      $newBuilder() => CommandStateBuilder<
          RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>();

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
// Serializer<CommandStateCaseEventListFilterRoute> get $serializer => CommandStateCaseEventListFilterRoute.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(CaseEventListFilterState)]),
        FullType(RouteResult, [FullType(ListCaseEventsApiRequest)])
      ]);
}

typedef StatefulActionsOptions<
    CaseEventListFilterState,
    CaseEventListFilterStateBuilder,
    CaseEventListFilterActions> CaseEventListFilterActionsOptions();

class _$CaseEventListFilterActions extends CaseEventListFilterActions {
  final StatefulActionsOptions<CaseEventListFilterState,
      CaseEventListFilterStateBuilder, CaseEventListFilterActions> $options;

  final ActionDispatcher<CaseEventListFilterState> $replace;
  final ActionDispatcher<Null> $activated;
  final ActionDispatcher<Null> $deactivated;
  final ActionDispatcher<CaseEventListFilterState> $pushing;
  final ActionDispatcher<ListCaseEventsApiRequest> $popping;
  final ListCaseEventsApiRequestActions request;

  _$CaseEventListFilterActions._(this.$options)
      : $replace = $options.action<CaseEventListFilterState>(
            '\$replace', (a) => a?.$replace),
        $activated = $options.action<Null>('\$activated', (a) => a?.$activated),
        $deactivated =
            $options.action<Null>('\$deactivated', (a) => a?.$deactivated),
        $pushing = $options.action<CaseEventListFilterState>(
            '\$pushing', (a) => a?.$pushing),
        $popping = $options.action<ListCaseEventsApiRequest>(
            '\$popping', (a) => a?.$popping),
        request = ListCaseEventsApiRequestActions(() => $options.stateful<
                ListCaseEventsApiRequest,
                ListCaseEventsApiRequestBuilder,
                ListCaseEventsApiRequestActions>(
            'request',
            (a) => a.request,
            (s) => s?.request,
            (b) => b?.request,
            (parent, builder) => parent?.request = builder)),
        super._();

  factory _$CaseEventListFilterActions(
          CaseEventListFilterActionsOptions options) =>
      _$CaseEventListFilterActions._(options());

  @override
  CaseEventListFilterStateBuilder $newBuilder() =>
      CaseEventListFilterStateBuilder();

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
        this.$activated,
        this.$deactivated,
        this.$pushing,
        this.$popping,
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
// Serializer<CaseEventListFilterStateCaseEventListFilterActions> get $serializer => CaseEventListFilterStateCaseEventListFilterActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CaseEventListFilterState);
}
