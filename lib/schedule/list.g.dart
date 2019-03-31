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
  bool __isLoading;
  BuiltList<ListCaseEventsApiCaseEvent> __events;

  factory _$CaseEventListState([void updates(CaseEventListStateBuilder b)]) =>
      (new CaseEventListStateBuilder()..update(updates)).build();

  _$CaseEventListState._({this.listCommand, this.request}) : super._();

  @override
  bool get isLoading => __isLoading ??= super.isLoading;

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
    CommandState<RouteCommand<CaseEventListState>, RouteResult<Null>>,
    CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Null>>,
    CaseEventListRoute> CaseEventListRouteOptions();

class _$CaseEventListRoute extends CaseEventListRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CaseEventListState>, RouteResult<Null>>,
      CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Null>>,
      CaseEventListRoute> $options;

  final ActionDispatcher<
          CommandState<RouteCommand<CaseEventListState>, RouteResult<Null>>>
      $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
          CaseEventListRoute, String>> $clear;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
          CaseEventListRoute, String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventListState>,
          RouteResult<Null>,
          CaseEventListRoute,
          Command<RouteCommand<CaseEventListState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
          CaseEventListRoute, CommandResult<RouteResult<Null>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
          CaseEventListRoute, String>> $detach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
          CaseEventListRoute, String>> $attach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
          CaseEventListRoute, CommandProgress>> $progress;

  _$CaseEventListRoute._(this.$options)
      : $replace = $options.action<
            CommandState<RouteCommand<CaseEventListState>,
                RouteResult<Null>>>('\$replace', (a) => a?.$replace),
        $clear = $options.action<
            CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
                CaseEventListRoute, String>>('\$clear', (a) => a?.$clear),
        $cancel = $options.action<
            CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
                CaseEventListRoute, String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<CaseEventListState>,
                    RouteResult<Null>,
                    CaseEventListRoute,
                    Command<RouteCommand<CaseEventListState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<CaseEventListState>,
                    RouteResult<Null>,
                    CaseEventListRoute,
                    CommandResult<RouteResult<Null>>>>(
            '\$result', (a) => a?.$result),
        $detach = $options.action<
            CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
                CaseEventListRoute, String>>('\$detach', (a) => a?.$detach),
        $attach = $options.action<
            CommandPayload<RouteCommand<CaseEventListState>, RouteResult<Null>,
                CaseEventListRoute, String>>('\$attach', (a) => a?.$attach),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<CaseEventListState>,
                RouteResult<Null>,
                CaseEventListRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$CaseEventListRoute(CaseEventListRouteOptions options) =>
      _$CaseEventListRoute._(options());

  @override
  CommandState<RouteCommand<CaseEventListState>, RouteResult<Null>>
      get $initial =>
          CommandState<RouteCommand<CaseEventListState>, RouteResult<Null>>();

  @override
  CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Null>>
      $newBuilder() => CommandStateBuilder<RouteCommand<CaseEventListState>,
          RouteResult<Null>>();

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
// Serializer<CommandStateCaseEventListRoute> get $serializer => CommandStateCaseEventListRoute.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(CaseEventListState)]),
        FullType(RouteResult, [FullType(Null)])
      ]);
}

typedef StatefulActionsOptions<CaseEventListState, CaseEventListStateBuilder,
    CaseEventListActions> CaseEventListActionsOptions();

class _$CaseEventListActions extends CaseEventListActions {
  final StatefulActionsOptions<CaseEventListState, CaseEventListStateBuilder,
      CaseEventListActions> $options;

  final ActionDispatcher<CaseEventListState> $replace;
  final ActionDispatcher $activatedAction;
  final ActionDispatcher $deactivatedAction;
  final ActionDispatcher $pushAction;
  final ActionDispatcher $popAction;
  final list_case_events_api.ListCaseEventsApi listCommand;
  final list_case_events_api.ListCaseEventsApiRequestActions request;

  _$CaseEventListActions._(this.$options)
      : $replace = $options.action<CaseEventListState>(
            '\$replace', (a) => a?.$replace),
        $activatedAction =
            $options.action('\$activatedAction', (a) => a?.$activatedAction),
        $deactivatedAction = $options.action(
            '\$deactivatedAction', (a) => a?.$deactivatedAction),
        $pushAction = $options.action('\$pushAction', (a) => a?.$pushAction),
        $popAction = $options.action('\$popAction', (a) => a?.$popAction),
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
        this.$activatedAction,
        this.$deactivatedAction,
        this.$pushAction,
        this.$popAction,
      ]);

  @override
  void $reducer(ReducerBuilder reducer) {
    super.$reducer(reducer);
    listCommand.$reducer(reducer);
    request.$reducer(reducer);
  }

  @override
  void $middleware(MiddlewareBuilder middleware) {
    super.$middleware(middleware);
    listCommand.$middleware(middleware);
    request.$middleware(middleware);
  }

// @override
// Serializer<CaseEventListStateCaseEventListActions> get $serializer => CaseEventListStateCaseEventListActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CaseEventListState);
}
