// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

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
  final String wireName =
      'movemedical_model/scheduling/case_event/CaseEventListState';

  @override
  Iterable serialize(Serializers serializers, CaseEventListState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(object.list,
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
        case 'list':
          result.list.replace(serializers.deserialize(value,
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
      ApiResult<list_case_events_api.ListCaseEventsApiResponse>> list;
  @override
  final list_case_events_api.ListCaseEventsApiRequest request;
  BuiltList<ListCaseEventsApiCaseEvent> __events;

  factory _$CaseEventListState([void updates(CaseEventListStateBuilder b)]) =>
      (new CaseEventListStateBuilder()..update(updates)).build();

  _$CaseEventListState._({this.list, this.request}) : super._();

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
        list == other.list &&
        request == other.request;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, list.hashCode), request.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CaseEventListState')
          ..add('list', list)
          ..add('request', request))
        .toString();
  }
}

class CaseEventListStateBuilder
    implements Builder<CaseEventListState, CaseEventListStateBuilder> {
  _$CaseEventListState _$v;

  CommandStateBuilder<ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
      ApiResult<list_case_events_api.ListCaseEventsApiResponse>> _list;
  CommandStateBuilder<ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
          ApiResult<list_case_events_api.ListCaseEventsApiResponse>>
      get list => _$this._list ??= new CommandStateBuilder<
          ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
          ApiResult<list_case_events_api.ListCaseEventsApiResponse>>();
  set list(
          CommandStateBuilder<
                  ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
                  ApiResult<list_case_events_api.ListCaseEventsApiResponse>>
              list) =>
      _$this._list = list;

  list_case_events_api.ListCaseEventsApiRequestBuilder _request;
  list_case_events_api.ListCaseEventsApiRequestBuilder get request =>
      _$this._request ??=
          new list_case_events_api.ListCaseEventsApiRequestBuilder();
  set request(list_case_events_api.ListCaseEventsApiRequestBuilder request) =>
      _$this._request = request;

  CaseEventListStateBuilder();

  CaseEventListStateBuilder get _$this {
    if (_$v != null) {
      _list = _$v.list?.toBuilder();
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
              list: _list?.build(), request: _request?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
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
    CommandState<RouteCommand<CaseEventListState>, RouteResult<Nothing>>,
    CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Nothing>>,
    CaseEventListRoute> CaseEventListRouteOptions();

class _$CaseEventListRoute extends CaseEventListRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CaseEventListState>, RouteResult<Nothing>>,
      CommandStateBuilder<RouteCommand<CaseEventListState>,
          RouteResult<Nothing>>,
      CaseEventListRoute> options$;

  final ActionDispatcher<
          CommandState<RouteCommand<CaseEventListState>, RouteResult<Nothing>>>
      replace$;
  final ActionDispatcher<String> cancel$;
  final ActionDispatcher<Command<RouteCommand<CaseEventListState>>> execute$;
  final ActionDispatcher<CommandResult<RouteResult<Nothing>>> result$;
  final ActionDispatcher<CommandProgress> progress$;

  _$CaseEventListRoute._(this.options$)
      : replace$ = options$.action<
            CommandState<RouteCommand<CaseEventListState>,
                RouteResult<Nothing>>>('replace\$', (a) => a?.replace$),
        cancel$ = options$.action<String>('cancel\$', (a) => a?.cancel$),
        execute$ = options$.action<Command<RouteCommand<CaseEventListState>>>(
            'execute\$', (a) => a?.execute$),
        result$ = options$.action<CommandResult<RouteResult<Nothing>>>(
            'result\$', (a) => a?.result$),
        progress$ =
            options$.action<CommandProgress>('progress\$', (a) => a?.progress$),
        super._();

  factory _$CaseEventListRoute(CaseEventListRouteOptions options) =>
      _$CaseEventListRoute._(options());

  @override
  CommandState<RouteCommand<CaseEventListState>, RouteResult<Nothing>>
      get initialState$ => CommandState<RouteCommand<CaseEventListState>,
          RouteResult<Nothing>>();

  @override
  CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Nothing>>
      newBuilder$() => CommandStateBuilder<RouteCommand<CaseEventListState>,
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
  RouteCommandBuilder<CaseEventListState> newCommandBuilder() =>
      RouteCommand<CaseEventListState>().toBuilder();

  @override
  RouteResultBuilder<Nothing> newResultBuilder() =>
      RouteResult<Nothing>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  CaseEventListStateBuilder newCommandPayloadBuilder() =>
      CaseEventListState().toBuilder();

  @override
  NothingBuilder newResultPayloadBuilder() => Nothing().toBuilder();

  @override
  Serializer<CaseEventListState> get commandPayloadSerializer =>
      CaseEventListState.serializer;

  @override
  Serializer<Nothing> get resultPayloadSerializer => Nothing.serializer;
}

typedef StatefulActionsOptions<CaseEventListState, CaseEventListStateBuilder,
    CaseEventListActions> CaseEventListActionsOptions();

class _$CaseEventListActions extends CaseEventListActions {
  final StatefulActionsOptions<CaseEventListState, CaseEventListStateBuilder,
      CaseEventListActions> options$;

  final ActionDispatcher<CaseEventListState> replace$;
  final ActionDispatcher activated$;
  final ActionDispatcher deactivated$;
  final ActionDispatcher<CaseEventListState> pushing$;
  final ActionDispatcher<Nothing> popping$;
  final list_case_events_api.ListCaseEventsApi list;
  final list_case_events_api.ListCaseEventsApiRequestActions request;

  _$CaseEventListActions._(this.options$)
      : replace$ = options$.action<CaseEventListState>(
            'replace\$', (a) => a?.replace$),
        activated$ = options$.action('activated\$', (a) => a?.activated$),
        deactivated$ = options$.action('deactivated\$', (a) => a?.deactivated$),
        pushing$ = options$.action<CaseEventListState>(
            'pushing\$', (a) => a?.pushing$),
        popping$ = options$.action<Nothing>('popping\$', (a) => a?.popping$),
        list = list_case_events_api.ListCaseEventsApi(() => options$.stateful<
                CommandState<
                    ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
                    ApiResult<list_case_events_api.ListCaseEventsApiResponse>>,
                CommandStateBuilder<
                    ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
                    ApiResult<list_case_events_api.ListCaseEventsApiResponse>>,
                list_case_events_api.ListCaseEventsApi>(
            'list',
            (a) => a.list,
            (s) => s?.list,
            (b) => b?.list,
            (parent, builder) => parent?.list = builder)),
        request = list_case_events_api.ListCaseEventsApiRequestActions(() =>
            options$.stateful<
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
  CaseEventListStateBuilder newBuilder$() => CaseEventListStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.list,
        this.request,
      ]);

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
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    list.reducer$(reducer);
    request.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    list.middleware$(middleware);
    request.middleware$(middleware);
  }

  @override
  NothingBuilder newResultBuilder$() => Nothing().toBuilder();
}
