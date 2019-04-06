// GENERATED CODE - DO NOT MODIFY BY HAND

part of schedule.detail;

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
  final String wireName = 'movemedical_model/schedule/CaseEventDetailState';

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
    if (object.getCommand != null) {
      result
        ..add('getCommand')
        ..add(serializers.serialize(object.getCommand,
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
        case 'getCommand':
          result.getCommand.replace(serializers.deserialize(value,
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
      ApiResult<GetCaseEventDetailApiResponse>> getCommand;

  factory _$CaseEventDetailState(
          [void updates(CaseEventDetailStateBuilder b)]) =>
      (new CaseEventDetailStateBuilder()..update(updates)).build();

  _$CaseEventDetailState._({this.request, this.model, this.getCommand})
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
        getCommand == other.getCommand;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, request.hashCode), model.hashCode), getCommand.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CaseEventDetailState')
          ..add('request', request)
          ..add('model', model)
          ..add('getCommand', getCommand))
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
      ApiResult<GetCaseEventDetailApiResponse>> _getCommand;
  CommandStateBuilder<ApiCommand<GetCaseEventDetailApiRequest>,
          ApiResult<GetCaseEventDetailApiResponse>>
      get getCommand => _$this._getCommand ??= new CommandStateBuilder<
          ApiCommand<GetCaseEventDetailApiRequest>,
          ApiResult<GetCaseEventDetailApiResponse>>();
  set getCommand(
          CommandStateBuilder<ApiCommand<GetCaseEventDetailApiRequest>,
                  ApiResult<GetCaseEventDetailApiResponse>>
              getCommand) =>
      _$this._getCommand = getCommand;

  CaseEventDetailStateBuilder();

  CaseEventDetailStateBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
      _model = _$v.model?.toBuilder();
      _getCommand = _$v.getCommand?.toBuilder();
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
              getCommand: _getCommand?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        _request?.build();
        _$failedField = 'model';
        _model?.build();
        _$failedField = 'getCommand';
        _getCommand?.build();
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
    CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Null>>,
    CommandStateBuilder<RouteCommand<CaseEventDetailState>, RouteResult<Null>>,
    CaseEventDetailRoute> CaseEventDetailRouteOptions();

class _$CaseEventDetailRoute extends CaseEventDetailRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Null>>,
      CommandStateBuilder<RouteCommand<CaseEventDetailState>,
          RouteResult<Null>>,
      CaseEventDetailRoute> $options;

  final ActionDispatcher<
          CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Null>>>
      $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventDetailState>, RouteResult<Null>,
          CaseEventDetailRoute, String>> $clear;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventDetailState>, RouteResult<Null>,
          CaseEventDetailRoute, String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CaseEventDetailState>,
          RouteResult<Null>,
          CaseEventDetailRoute,
          Command<RouteCommand<CaseEventDetailState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventDetailState>, RouteResult<Null>,
          CaseEventDetailRoute, CommandResult<RouteResult<Null>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventDetailState>, RouteResult<Null>,
          CaseEventDetailRoute, String>> $detach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventDetailState>, RouteResult<Null>,
          CaseEventDetailRoute, String>> $attach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<CaseEventDetailState>, RouteResult<Null>,
          CaseEventDetailRoute, CommandProgress>> $progress;

  _$CaseEventDetailRoute._(this.$options)
      : $replace = $options.action<
            CommandState<RouteCommand<CaseEventDetailState>,
                RouteResult<Null>>>('\$replace', (a) => a?.$replace),
        $clear = $options.action<
            CommandPayload<
                RouteCommand<CaseEventDetailState>,
                RouteResult<Null>,
                CaseEventDetailRoute,
                String>>('\$clear', (a) => a?.$clear),
        $cancel = $options.action<
            CommandPayload<
                RouteCommand<CaseEventDetailState>,
                RouteResult<Null>,
                CaseEventDetailRoute,
                String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<CaseEventDetailState>,
                    RouteResult<Null>,
                    CaseEventDetailRoute,
                    Command<RouteCommand<CaseEventDetailState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<CaseEventDetailState>,
                    RouteResult<Null>,
                    CaseEventDetailRoute,
                    CommandResult<RouteResult<Null>>>>(
            '\$result', (a) => a?.$result),
        $detach = $options.action<
            CommandPayload<
                RouteCommand<CaseEventDetailState>,
                RouteResult<Null>,
                CaseEventDetailRoute,
                String>>('\$detach', (a) => a?.$detach),
        $attach = $options.action<
            CommandPayload<
                RouteCommand<CaseEventDetailState>,
                RouteResult<Null>,
                CaseEventDetailRoute,
                String>>('\$attach', (a) => a?.$attach),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<CaseEventDetailState>,
                RouteResult<Null>,
                CaseEventDetailRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$CaseEventDetailRoute(CaseEventDetailRouteOptions options) =>
      _$CaseEventDetailRoute._(options());

  @override
  CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Null>>
      get $initial =>
          CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Null>>();

  @override
  CommandStateBuilder<RouteCommand<CaseEventDetailState>, RouteResult<Null>>
      $newBuilder() => CommandStateBuilder<RouteCommand<CaseEventDetailState>,
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
// Serializer<CommandStateCaseEventDetailRoute> get $serializer => CommandStateCaseEventDetailRoute.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(CaseEventDetailState)]),
        FullType(RouteResult, [FullType(Null)])
      ]);
}

typedef StatefulActionsOptions<
    CaseEventDetailState,
    CaseEventDetailStateBuilder,
    CaseEventDetailActions> CaseEventDetailActionsOptions();

class _$CaseEventDetailActions extends CaseEventDetailActions {
  final StatefulActionsOptions<CaseEventDetailState,
      CaseEventDetailStateBuilder, CaseEventDetailActions> $options;

  final ActionDispatcher<CaseEventDetailState> $replace;
  final ActionDispatcher<Null> $activated;
  final ActionDispatcher<Null> $deactivated;
  final ActionDispatcher<CaseEventDetailState> $pushing;
  final ActionDispatcher<Null> $popping;
  final GetCaseEventDetailApiRequestActions request;
  final GetCaseEventDetailApiResponseActions model;
  final GetCaseEventDetailApi getCommand;

  _$CaseEventDetailActions._(this.$options)
      : $replace = $options.action<CaseEventDetailState>(
            '\$replace', (a) => a?.$replace),
        $activated = $options.action<Null>('\$activated', (a) => a?.$activated),
        $deactivated =
            $options.action<Null>('\$deactivated', (a) => a?.$deactivated),
        $pushing = $options.action<CaseEventDetailState>(
            '\$pushing', (a) => a?.$pushing),
        $popping = $options.action<Null>('\$popping', (a) => a?.$popping),
        request = GetCaseEventDetailApiRequestActions(() => $options.stateful<
                GetCaseEventDetailApiRequest,
                GetCaseEventDetailApiRequestBuilder,
                GetCaseEventDetailApiRequestActions>(
            'request',
            (a) => a.request,
            (s) => s?.request,
            (b) => b?.request,
            (parent, builder) => parent?.request = builder)),
        model = GetCaseEventDetailApiResponseActions(() => $options.stateful<
                GetCaseEventDetailApiResponse,
                GetCaseEventDetailApiResponseBuilder,
                GetCaseEventDetailApiResponseActions>(
            'model',
            (a) => a.model,
            (s) => s?.model,
            (b) => b?.model,
            (parent, builder) => parent?.model = builder)),
        getCommand = GetCaseEventDetailApi(() => $options.stateful<
                CommandState<ApiCommand<GetCaseEventDetailApiRequest>,
                    ApiResult<GetCaseEventDetailApiResponse>>,
                CommandStateBuilder<ApiCommand<GetCaseEventDetailApiRequest>,
                    ApiResult<GetCaseEventDetailApiResponse>>,
                GetCaseEventDetailApi>(
            'getCommand',
            (a) => a.getCommand,
            (s) => s?.getCommand,
            (b) => b?.getCommand,
            (parent, builder) => parent?.getCommand = builder)),
        super._();

  factory _$CaseEventDetailActions(CaseEventDetailActionsOptions options) =>
      _$CaseEventDetailActions._(options());

  @override
  CaseEventDetailStateBuilder $newBuilder() => CaseEventDetailStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.request,
        this.model,
        this.getCommand,
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
    model.$reducer(reducer);
    getCommand.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    request.$middleware(middleware);
    model.$middleware(middleware);
    getCommand.$middleware(middleware);
  }

// @override
// Serializer<CaseEventDetailStateCaseEventDetailActions> get $serializer => CaseEventDetailStateCaseEventDetailActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CaseEventDetailState);
}
