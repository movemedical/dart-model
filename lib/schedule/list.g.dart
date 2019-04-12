// GENERATED CODE - DO NOT MODIFY BY HAND

part of state.schedule.list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaseEventListState> _$caseEventListStateSerializer =
    new _$CaseEventListStateSerializer();

class _$CaseEventListStateSerializer
    implements StructuredSerializer<CaseEventListState> {
  @override
  final Iterable<Type> types = const [CaseEventListState, _$CaseEventListState];
  @override
  final String wireName = 'movemedical_model/schedule/CaseEventListState';

  @override
  Iterable serialize(Serializers serializers, CaseEventListState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.listCommand != null) {
      result
        ..add('listCommand')
        ..add(serializers.serialize(object.listCommand,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand, const [
                const FullType(list_case_events_api.ListCaseEventsApiRequest)
              ]),
              const FullType(ApiResult, const [
                const FullType(list_case_events_api.ListCaseEventsApiResponse)
              ])
            ])));
    }
    if (object.request != null) {
      result
        ..add('request')
        ..add(serializers.serialize(object.request,
            specifiedType:
                const FullType(list_case_events_api.ListCaseEventsApiRequest)));
    }

    return result;
  }

  @override
  CaseEventListState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaseEventListStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'listCommand':
          result.listCommand.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand, const [
                      const FullType(
                          list_case_events_api.ListCaseEventsApiRequest)
                    ]),
                    const FullType(ApiResult, const [
                      const FullType(
                          list_case_events_api.ListCaseEventsApiResponse)
                    ])
                  ]))
              as CommandState<
                  ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
                  ApiResult<list_case_events_api.ListCaseEventsApiResponse>>);
          break;
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      list_case_events_api.ListCaseEventsApiRequest))
              as list_case_events_api.ListCaseEventsApiRequest);
          break;
      }
    }

    return result.build();
  }
}

class _$CaseEventListState extends CaseEventListState {
  @override
  final CommandState<ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
      ApiResult<list_case_events_api.ListCaseEventsApiResponse>> listCommand;
  @override
  final list_case_events_api.ListCaseEventsApiRequest request;
  BuiltList<ListCaseEventsApiCaseEvent> __events;

  factory _$CaseEventListState([void updates(CaseEventListStateBuilder b)]) =>
      (new CaseEventListStateBuilder()..update(updates)).build();

  _$CaseEventListState._({this.listCommand, this.request}) : super._();

  @override
  BuiltList<ListCaseEventsApiCaseEvent> get events => __events ??= super.events;

  @override
  CaseEventListState rebuild(void updates(CaseEventListStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CaseEventListStateBuilder toBuilder() =>
      new CaseEventListStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaseEventListState &&
        listCommand == other.listCommand &&
        request == other.request;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, listCommand.hashCode), request.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CaseEventListState')
          ..add('listCommand', listCommand)
          ..add('request', request))
        .toString();
  }
}

class CaseEventListStateBuilder
    implements Builder<CaseEventListState, CaseEventListStateBuilder> {
  _$CaseEventListState _$v;

  CommandStateBuilder<ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
      ApiResult<list_case_events_api.ListCaseEventsApiResponse>> _listCommand;
  CommandStateBuilder<ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
          ApiResult<list_case_events_api.ListCaseEventsApiResponse>>
      get listCommand => _$this._listCommand ??= new CommandStateBuilder<
          ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
          ApiResult<list_case_events_api.ListCaseEventsApiResponse>>();
  set listCommand(
          CommandStateBuilder<
                  ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
                  ApiResult<list_case_events_api.ListCaseEventsApiResponse>>
              listCommand) =>
      _$this._listCommand = listCommand;

  list_case_events_api.ListCaseEventsApiRequestBuilder _request;
  list_case_events_api.ListCaseEventsApiRequestBuilder get request =>
      _$this._request ??=
          new list_case_events_api.ListCaseEventsApiRequestBuilder();
  set request(list_case_events_api.ListCaseEventsApiRequestBuilder request) =>
      _$this._request = request;

  CaseEventListStateBuilder();

  CaseEventListStateBuilder get _$this {
    if (_$v != null) {
      _listCommand = _$v.listCommand?.toBuilder();
      _request = _$v.request?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaseEventListState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CaseEventListState;
  }

  @override
  void update(void updates(CaseEventListStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CaseEventListState build() {
    _$CaseEventListState _$result;
    try {
      _$result = _$v ??
          new _$CaseEventListState._(
              listCommand: _listCommand?.build(), request: _request?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'listCommand';
        _listCommand?.build();
        _$failedField = 'request';
        _request?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CaseEventListState', _$failedField, e.toString());
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
    CommandState<RouteCommand<CaseEventListState>, RouteResult<Empty>>,
    CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Empty>>,
    CaseEventListRoute> CaseEventListRouteOptions();

class _$CaseEventListRoute extends CaseEventListRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CaseEventListState>, RouteResult<Empty>>,
      CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Empty>>,
      CaseEventListRoute> $options;

  final ActionDispatcher<
          CommandState<RouteCommand<CaseEventListState>, RouteResult<Empty>>>
      $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Empty>,
          CaseEventListRoute, String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventListState>,
          RouteResult<Empty>,
          CaseEventListRoute,
          Command<RouteCommand<CaseEventListState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Empty>,
          CaseEventListRoute, CommandResult<RouteResult<Empty>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Empty>,
          CaseEventListRoute, CommandProgress>> $progress;

  _$CaseEventListRoute._(this.$options)
      : $replace = $options.action<
            CommandState<RouteCommand<CaseEventListState>,
                RouteResult<Empty>>>('\$replace', (a) => a?.$replace),
        $cancel = $options.action<
            CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Empty>,
                CaseEventListRoute, String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<CaseEventListState>,
                    RouteResult<Empty>,
                    CaseEventListRoute,
                    Command<RouteCommand<CaseEventListState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<CaseEventListState>,
                    RouteResult<Empty>,
                    CaseEventListRoute,
                    CommandResult<RouteResult<Empty>>>>(
            '\$result', (a) => a?.$result),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<CaseEventListState>,
                RouteResult<Empty>,
                CaseEventListRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$CaseEventListRoute(CaseEventListRouteOptions options) =>
      _$CaseEventListRoute._(options());

  @override
  CommandState<RouteCommand<CaseEventListState>, RouteResult<Empty>>
      get $initial =>
          CommandState<RouteCommand<CaseEventListState>, RouteResult<Empty>>();

  @override
  CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Empty>>
      $newBuilder() => CommandStateBuilder<RouteCommand<CaseEventListState>,
          RouteResult<Empty>>();

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
        FullType(RouteCommand, [FullType(CaseEventListState)]),
        FullType(RouteResult, [FullType(Empty)])
      ]);

  @override
  RouteCommandBuilder<CaseEventListState> newCommandBuilder() =>
      RouteCommand<CaseEventListState>().toBuilder();

  @override
  RouteResultBuilder<Empty> newResultBuilder() =>
      RouteResult<Empty>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  CaseEventListStateBuilder newCommandPayloadBuilder() =>
      CaseEventListState().toBuilder();

  @override
  EmptyBuilder newResultPayloadBuilder() => Empty().toBuilder();

  @override
  Serializer<CaseEventListState> get commandPayloadSerializer =>
      CaseEventListState.serializer;

  @override
  Serializer<Empty> get resultPayloadSerializer => Empty.serializer;
}

typedef StatefulActionsOptions<CaseEventListState, CaseEventListStateBuilder,
    CaseEventListActions> CaseEventListActionsOptions();

class _$CaseEventListActions extends CaseEventListActions {
  final StatefulActionsOptions<CaseEventListState, CaseEventListStateBuilder,
      CaseEventListActions> $options;

  final ActionDispatcher<CaseEventListState> $replace;
  final ActionDispatcher<Null> $activated;
  final ActionDispatcher<Null> $deactivated;
  final ActionDispatcher<CaseEventListState> $pushing;
  final ActionDispatcher<Empty> $popping;
  final list_case_events_api.ListCaseEventsApi listCommand;
  final list_case_events_api.ListCaseEventsApiRequestActions request;

  _$CaseEventListActions._(this.$options)
      : $replace = $options.action<CaseEventListState>(
            '\$replace', (a) => a?.$replace),
        $activated = $options.action<Null>('\$activated', (a) => a?.$activated),
        $deactivated =
            $options.action<Null>('\$deactivated', (a) => a?.$deactivated),
        $pushing = $options.action<CaseEventListState>(
            '\$pushing', (a) => a?.$pushing),
        $popping = $options.action<Empty>('\$popping', (a) => a?.$popping),
        listCommand =
            list_case_events_api.ListCaseEventsApi(
                () =>
                    $options
                        .stateful<
                                CommandState<
                                    ApiCommand<
                                        list_case_events_api
                                            .ListCaseEventsApiRequest>,
                                    ApiResult<
                                        list_case_events_api
                                            .ListCaseEventsApiResponse>>,
                                CommandStateBuilder<
                                    ApiCommand<
                                        list_case_events_api
                                            .ListCaseEventsApiRequest>,
                                    ApiResult<
                                        list_case_events_api
                                            .ListCaseEventsApiResponse>>,
                                list_case_events_api.ListCaseEventsApi>(
                            'listCommand',
                            (a) => a.listCommand,
                            (s) => s?.listCommand,
                            (b) => b?.listCommand,
                            (parent, builder) =>
                                parent?.listCommand = builder)),
        request = list_case_events_api.ListCaseEventsApiRequestActions(() =>
            $options.stateful<
                    list_case_events_api.ListCaseEventsApiRequest,
                    list_case_events_api.ListCaseEventsApiRequestBuilder,
                    list_case_events_api.ListCaseEventsApiRequestActions>(
                'request',
                (a) => a.request,
                (s) => s?.request,
                (b) => b?.request,
                (parent, builder) => parent?.request = builder)),
        super._();

  factory _$CaseEventListActions(CaseEventListActionsOptions options) =>
      _$CaseEventListActions._(options());

  @override
  CaseEventListStateBuilder $newBuilder() => CaseEventListStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.listCommand,
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
    listCommand.$reducer(reducer);
    request.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    listCommand.$middleware(middleware);
    request.$middleware(middleware);
  }

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CaseEventListState);

  @override
  EmptyBuilder $newResultBuilder() => Empty().toBuilder();
}
