// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaseEventDetailState> _$caseEventDetailStateSerializer =
    new _$CaseEventDetailStateSerializer();

class _$CaseEventDetailStateSerializer
    implements StructuredSerializer<CaseEventDetailState> {
  @override
  final Iterable<Type> types = const [
    CaseEventDetailState,
    _$CaseEventDetailState
  ];
  @override
  final String wireName =
      'movemedical_model/scheduling/case_event/CaseEventDetailState';

  @override
  Iterable serialize(Serializers serializers, CaseEventDetailState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.request != null) {
      result
        ..add('request')
        ..add(serializers.serialize(object.request,
            specifiedType: const FullType(GetCaseEventDetailApiRequest)));
    }
    if (object.model != null) {
      result
        ..add('model')
        ..add(serializers.serialize(object.model,
            specifiedType: const FullType(GetCaseEventDetailApiResponse)));
    }
    if (object.cmdLoad != null) {
      result
        ..add('cmdLoad')
        ..add(serializers.serialize(object.cmdLoad,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand,
                  const [const FullType(GetCaseEventDetailApiRequest)]),
              const FullType(ApiResult,
                  const [const FullType(GetCaseEventDetailApiResponse)])
            ])));
    }

    return result;
  }

  @override
  CaseEventDetailState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaseEventDetailStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GetCaseEventDetailApiRequest))
              as GetCaseEventDetailApiRequest);
          break;
        case 'model':
          result.model.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GetCaseEventDetailApiResponse))
              as GetCaseEventDetailApiResponse);
          break;
        case 'cmdLoad':
          result.cmdLoad.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(GetCaseEventDetailApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(GetCaseEventDetailApiResponse)])
                  ]))
              as CommandState<ApiCommand<GetCaseEventDetailApiRequest>,
                  ApiResult<GetCaseEventDetailApiResponse>>);
          break;
      }
    }

    return result.build();
  }
}

class _$CaseEventDetailState extends CaseEventDetailState {
  @override
  final GetCaseEventDetailApiRequest request;
  @override
  final GetCaseEventDetailApiResponse model;
  @override
  final CommandState<ApiCommand<GetCaseEventDetailApiRequest>,
      ApiResult<GetCaseEventDetailApiResponse>> cmdLoad;

  factory _$CaseEventDetailState(
          [void updates(CaseEventDetailStateBuilder b)]) =>
      (new CaseEventDetailStateBuilder()..update(updates)).build();

  _$CaseEventDetailState._({this.request, this.model, this.cmdLoad})
      : super._();

  @override
  CaseEventDetailState rebuild(void updates(CaseEventDetailStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CaseEventDetailStateBuilder toBuilder() =>
      new CaseEventDetailStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaseEventDetailState &&
        request == other.request &&
        model == other.model &&
        cmdLoad == other.cmdLoad;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, request.hashCode), model.hashCode), cmdLoad.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CaseEventDetailState')
          ..add('request', request)
          ..add('model', model)
          ..add('cmdLoad', cmdLoad))
        .toString();
  }
}

class CaseEventDetailStateBuilder
    implements Builder<CaseEventDetailState, CaseEventDetailStateBuilder> {
  _$CaseEventDetailState _$v;

  GetCaseEventDetailApiRequestBuilder _request;
  GetCaseEventDetailApiRequestBuilder get request =>
      _$this._request ??= new GetCaseEventDetailApiRequestBuilder();
  set request(GetCaseEventDetailApiRequestBuilder request) =>
      _$this._request = request;

  GetCaseEventDetailApiResponseBuilder _model;
  GetCaseEventDetailApiResponseBuilder get model =>
      _$this._model ??= new GetCaseEventDetailApiResponseBuilder();
  set model(GetCaseEventDetailApiResponseBuilder model) =>
      _$this._model = model;

  CommandStateBuilder<ApiCommand<GetCaseEventDetailApiRequest>,
      ApiResult<GetCaseEventDetailApiResponse>> _cmdLoad;
  CommandStateBuilder<ApiCommand<GetCaseEventDetailApiRequest>,
          ApiResult<GetCaseEventDetailApiResponse>>
      get cmdLoad => _$this._cmdLoad ??= new CommandStateBuilder<
          ApiCommand<GetCaseEventDetailApiRequest>,
          ApiResult<GetCaseEventDetailApiResponse>>();
  set cmdLoad(
          CommandStateBuilder<ApiCommand<GetCaseEventDetailApiRequest>,
                  ApiResult<GetCaseEventDetailApiResponse>>
              cmdLoad) =>
      _$this._cmdLoad = cmdLoad;

  CaseEventDetailStateBuilder();

  CaseEventDetailStateBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
      _model = _$v.model?.toBuilder();
      _cmdLoad = _$v.cmdLoad?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaseEventDetailState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CaseEventDetailState;
  }

  @override
  void update(void updates(CaseEventDetailStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CaseEventDetailState build() {
    _$CaseEventDetailState _$result;
    try {
      _$result = _$v ??
          new _$CaseEventDetailState._(
              request: _request?.build(),
              model: _model?.build(),
              cmdLoad: _cmdLoad?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        _request?.build();
        _$failedField = 'model';
        _model?.build();
        _$failedField = 'cmdLoad';
        _cmdLoad?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CaseEventDetailState', _$failedField, e.toString());
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
    CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Nothing>>,
    CommandStateBuilder<RouteCommand<CaseEventDetailState>,
        RouteResult<Nothing>>,
    CaseEventDetailRoute> CaseEventDetailRouteOptions();

class _$CaseEventDetailRoute extends CaseEventDetailRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Nothing>>,
      CommandStateBuilder<RouteCommand<CaseEventDetailState>,
          RouteResult<Nothing>>,
      CaseEventDetailRoute> options$;

  final ActionDispatcher<
      CommandState<RouteCommand<CaseEventDetailState>,
          RouteResult<Nothing>>> replace$;
  final ActionDispatcher<String> cancel$;
  final ActionDispatcher<Command<RouteCommand<CaseEventDetailState>>> execute$;
  final ActionDispatcher<CommandResult<RouteResult<Nothing>>> result$;
  final ActionDispatcher<CommandProgress> progress$;

  _$CaseEventDetailRoute._(this.options$)
      : replace$ = options$.action<
            CommandState<RouteCommand<CaseEventDetailState>,
                RouteResult<Nothing>>>('replace\$', (a) => a?.replace$),
        cancel$ = options$.action<String>('cancel\$', (a) => a?.cancel$),
        execute$ = options$.action<Command<RouteCommand<CaseEventDetailState>>>(
            'execute\$', (a) => a?.execute$),
        result$ = options$.action<CommandResult<RouteResult<Nothing>>>(
            'result\$', (a) => a?.result$),
        progress$ =
            options$.action<CommandProgress>('progress\$', (a) => a?.progress$),
        super._();

  factory _$CaseEventDetailRoute(CaseEventDetailRouteOptions options) =>
      _$CaseEventDetailRoute._(options());

  @override
  CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Nothing>>
      get initialState$ => CommandState<RouteCommand<CaseEventDetailState>,
          RouteResult<Nothing>>();

  @override
  CommandStateBuilder<RouteCommand<CaseEventDetailState>, RouteResult<Nothing>>
      newBuilder$() => CommandStateBuilder<RouteCommand<CaseEventDetailState>,
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
  RouteCommandBuilder<CaseEventDetailState> newCommandBuilder() =>
      RouteCommand<CaseEventDetailState>().toBuilder();

  @override
  RouteResultBuilder<Nothing> newResultBuilder() =>
      RouteResult<Nothing>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  CaseEventDetailStateBuilder newCommandPayloadBuilder() =>
      CaseEventDetailState().toBuilder();

  @override
  NothingBuilder newResultPayloadBuilder() => Nothing().toBuilder();

  @override
  Serializer<CaseEventDetailState> get commandPayloadSerializer =>
      CaseEventDetailState.serializer;

  @override
  Serializer<Nothing> get resultPayloadSerializer => Nothing.serializer;
}

typedef StatefulActionsOptions<
    CaseEventDetailState,
    CaseEventDetailStateBuilder,
    CaseEventDetailActions> CaseEventDetailActionsOptions();

class _$CaseEventDetailActions extends CaseEventDetailActions {
  final StatefulActionsOptions<CaseEventDetailState,
      CaseEventDetailStateBuilder, CaseEventDetailActions> options$;

  final ActionDispatcher<CaseEventDetailState> replace$;
  final ActionDispatcher activated$;
  final ActionDispatcher deactivated$;
  final ActionDispatcher<CaseEventDetailState> pushing$;
  final ActionDispatcher<Nothing> popping$;
  final GetCaseEventDetailApiRequestActions request;
  final GetCaseEventDetailApiResponseActions model;
  final GetCaseEventDetailApi cmdLoad;

  _$CaseEventDetailActions._(this.options$)
      : replace$ = options$.action<CaseEventDetailState>(
            'replace\$', (a) => a?.replace$),
        activated$ = options$.action('activated\$', (a) => a?.activated$),
        deactivated$ = options$.action('deactivated\$', (a) => a?.deactivated$),
        pushing$ = options$.action<CaseEventDetailState>(
            'pushing\$', (a) => a?.pushing$),
        popping$ = options$.action<Nothing>('popping\$', (a) => a?.popping$),
        request = GetCaseEventDetailApiRequestActions(() => options$.stateful<
                GetCaseEventDetailApiRequest,
                GetCaseEventDetailApiRequestBuilder,
                GetCaseEventDetailApiRequestActions>(
            'request',
            (a) => a.request,
            (s) => s?.request,
            (b) => b?.request,
            (parent, builder) => parent?.request = builder)),
        model = GetCaseEventDetailApiResponseActions(() => options$.stateful<
                GetCaseEventDetailApiResponse,
                GetCaseEventDetailApiResponseBuilder,
                GetCaseEventDetailApiResponseActions>(
            'model',
            (a) => a.model,
            (s) => s?.model,
            (b) => b?.model,
            (parent, builder) => parent?.model = builder)),
        cmdLoad = GetCaseEventDetailApi(() => options$.stateful<
                CommandState<ApiCommand<GetCaseEventDetailApiRequest>,
                    ApiResult<GetCaseEventDetailApiResponse>>,
                CommandStateBuilder<ApiCommand<GetCaseEventDetailApiRequest>,
                    ApiResult<GetCaseEventDetailApiResponse>>,
                GetCaseEventDetailApi>(
            'cmdLoad',
            (a) => a.cmdLoad,
            (s) => s?.cmdLoad,
            (b) => b?.cmdLoad,
            (parent, builder) => parent?.cmdLoad = builder)),
        super._();

  factory _$CaseEventDetailActions(CaseEventDetailActionsOptions options) =>
      _$CaseEventDetailActions._(options());

  @override
  CaseEventDetailStateBuilder newBuilder$() => CaseEventDetailStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.request,
        this.model,
        this.cmdLoad,
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
    request.reducer$(reducer);
    model.reducer$(reducer);
    cmdLoad.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    request.middleware$(middleware);
    model.middleware$(middleware);
    cmdLoad.middleware$(middleware);
  }

  @override
  NothingBuilder newResultBuilder$() => Nothing().toBuilder();
}
