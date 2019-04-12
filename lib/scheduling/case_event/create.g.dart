// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateCaseEventState> _$createCaseEventStateSerializer =
    new _$CreateCaseEventStateSerializer();

class _$CreateCaseEventStateSerializer
    implements StructuredSerializer<CreateCaseEventState> {
  @override
  final Iterable<Type> types = const [
    CreateCaseEventState,
    _$CreateCaseEventState
  ];
  @override
  final String wireName =
      'movemedical_model/scheduling/case_event/CreateCaseEventState';

  @override
  Iterable serialize(Serializers serializers, CreateCaseEventState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.request != null) {
      result
        ..add('request')
        ..add(serializers.serialize(object.request,
            specifiedType: const FullType(CreateCaseEventApiRequest)));
    }
    if (object.cmdCreate != null) {
      result
        ..add('cmdCreate')
        ..add(serializers.serialize(object.cmdCreate,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand,
                  const [const FullType(CreateCaseEventApiRequest)]),
              const FullType(
                  ApiResult, const [const FullType(CreateCaseEventApiResponse)])
            ])));
    }

    return result;
  }

  @override
  CreateCaseEventState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateCaseEventStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CreateCaseEventApiRequest))
              as CreateCaseEventApiRequest);
          break;
        case 'cmdCreate':
          result.cmdCreate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(CreateCaseEventApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(CreateCaseEventApiResponse)])
                  ]))
              as CommandState<ApiCommand<CreateCaseEventApiRequest>,
                  ApiResult<CreateCaseEventApiResponse>>);
          break;
      }
    }

    return result.build();
  }
}

class _$CreateCaseEventState extends CreateCaseEventState {
  @override
  final CreateCaseEventApiRequest request;
  @override
  final CommandState<ApiCommand<CreateCaseEventApiRequest>,
      ApiResult<CreateCaseEventApiResponse>> cmdCreate;

  factory _$CreateCaseEventState(
          [void updates(CreateCaseEventStateBuilder b)]) =>
      (new CreateCaseEventStateBuilder()..update(updates)).build();

  _$CreateCaseEventState._({this.request, this.cmdCreate}) : super._();

  @override
  CreateCaseEventState rebuild(void updates(CreateCaseEventStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCaseEventStateBuilder toBuilder() =>
      new CreateCaseEventStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCaseEventState &&
        request == other.request &&
        cmdCreate == other.cmdCreate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, request.hashCode), cmdCreate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateCaseEventState')
          ..add('request', request)
          ..add('cmdCreate', cmdCreate))
        .toString();
  }
}

class CreateCaseEventStateBuilder
    implements Builder<CreateCaseEventState, CreateCaseEventStateBuilder> {
  _$CreateCaseEventState _$v;

  CreateCaseEventApiRequestBuilder _request;
  CreateCaseEventApiRequestBuilder get request =>
      _$this._request ??= new CreateCaseEventApiRequestBuilder();
  set request(CreateCaseEventApiRequestBuilder request) =>
      _$this._request = request;

  CommandStateBuilder<ApiCommand<CreateCaseEventApiRequest>,
      ApiResult<CreateCaseEventApiResponse>> _cmdCreate;
  CommandStateBuilder<ApiCommand<CreateCaseEventApiRequest>,
          ApiResult<CreateCaseEventApiResponse>>
      get cmdCreate => _$this._cmdCreate ??= new CommandStateBuilder<
          ApiCommand<CreateCaseEventApiRequest>,
          ApiResult<CreateCaseEventApiResponse>>();
  set cmdCreate(
          CommandStateBuilder<ApiCommand<CreateCaseEventApiRequest>,
                  ApiResult<CreateCaseEventApiResponse>>
              cmdCreate) =>
      _$this._cmdCreate = cmdCreate;

  CreateCaseEventStateBuilder();

  CreateCaseEventStateBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
      _cmdCreate = _$v.cmdCreate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCaseEventState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateCaseEventState;
  }

  @override
  void update(void updates(CreateCaseEventStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateCaseEventState build() {
    _$CreateCaseEventState _$result;
    try {
      _$result = _$v ??
          new _$CreateCaseEventState._(
              request: _request?.build(), cmdCreate: _cmdCreate?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        _request?.build();
        _$failedField = 'cmdCreate';
        _cmdCreate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateCaseEventState', _$failedField, e.toString());
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
    CommandState<RouteCommand<CreateCaseEventState>,
        RouteResult<CreateCaseEventApiResponse>>,
    CommandStateBuilder<RouteCommand<CreateCaseEventState>,
        RouteResult<CreateCaseEventApiResponse>>,
    CreateCaseEventRoute> CreateCaseEventRouteOptions();

class _$CreateCaseEventRoute extends CreateCaseEventRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>,
      CommandStateBuilder<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>,
      CreateCaseEventRoute> $options;

  final ActionDispatcher<
      CommandState<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>> $replace;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>,
          CreateCaseEventRoute,
          String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>,
          CreateCaseEventRoute,
          Command<RouteCommand<CreateCaseEventState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>,
          CreateCaseEventRoute,
          CommandResult<RouteResult<CreateCaseEventApiResponse>>>> $result;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>,
          CreateCaseEventRoute,
          CommandProgress>> $progress;

  _$CreateCaseEventRoute._(this.$options)
      : $replace = $options.action<
                CommandState<RouteCommand<CreateCaseEventState>,
                    RouteResult<CreateCaseEventApiResponse>>>(
            '\$replace', (a) => a?.$replace),
        $cancel = $options.action<
            CommandPayload<
                RouteCommand<CreateCaseEventState>,
                RouteResult<CreateCaseEventApiResponse>,
                CreateCaseEventRoute,
                String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<CreateCaseEventState>,
                    RouteResult<CreateCaseEventApiResponse>,
                    CreateCaseEventRoute,
                    Command<RouteCommand<CreateCaseEventState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<CreateCaseEventState>,
                    RouteResult<CreateCaseEventApiResponse>,
                    CreateCaseEventRoute,
                    CommandResult<RouteResult<CreateCaseEventApiResponse>>>>(
            '\$result', (a) => a?.$result),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<CreateCaseEventState>,
                RouteResult<CreateCaseEventApiResponse>,
                CreateCaseEventRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$CreateCaseEventRoute(CreateCaseEventRouteOptions options) =>
      _$CreateCaseEventRoute._(options());

  @override
  CommandState<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>
      get $initial => CommandState<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>();

  @override
  CommandStateBuilder<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>
      $newBuilder() => CommandStateBuilder<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>();

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
        FullType(RouteCommand, [FullType(CreateCaseEventState)]),
        FullType(RouteResult, [FullType(CreateCaseEventApiResponse)])
      ]);

  @override
  RouteCommandBuilder<CreateCaseEventState> newCommandBuilder() =>
      RouteCommand<CreateCaseEventState>().toBuilder();

  @override
  RouteResultBuilder<CreateCaseEventApiResponse> newResultBuilder() =>
      RouteResult<CreateCaseEventApiResponse>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  CreateCaseEventStateBuilder newCommandPayloadBuilder() =>
      CreateCaseEventState().toBuilder();

  @override
  CreateCaseEventApiResponseBuilder newResultPayloadBuilder() =>
      CreateCaseEventApiResponse().toBuilder();

  @override
  Serializer<CreateCaseEventState> get commandPayloadSerializer =>
      CreateCaseEventState.serializer;

  @override
  Serializer<CreateCaseEventApiResponse> get resultPayloadSerializer =>
      CreateCaseEventApiResponse.serializer;
}

typedef StatefulActionsOptions<
    CreateCaseEventState,
    CreateCaseEventStateBuilder,
    CreateCaseEventActions> CreateCaseEventActionsOptions();

class _$CreateCaseEventActions extends CreateCaseEventActions {
  final StatefulActionsOptions<CreateCaseEventState,
      CreateCaseEventStateBuilder, CreateCaseEventActions> $options;

  final ActionDispatcher<CreateCaseEventState> $replace;
  final ActionDispatcher<Null> $activated;
  final ActionDispatcher<Null> $deactivated;
  final ActionDispatcher<CreateCaseEventState> $pushing;
  final ActionDispatcher<CreateCaseEventApiResponse> $popping;
  final CreateCaseEventApiRequestActions request;
  final CreateCaseEventApi cmdCreate;

  _$CreateCaseEventActions._(this.$options)
      : $replace = $options.action<CreateCaseEventState>(
            '\$replace', (a) => a?.$replace),
        $activated = $options.action<Null>('\$activated', (a) => a?.$activated),
        $deactivated =
            $options.action<Null>('\$deactivated', (a) => a?.$deactivated),
        $pushing = $options.action<CreateCaseEventState>(
            '\$pushing', (a) => a?.$pushing),
        $popping = $options.action<CreateCaseEventApiResponse>(
            '\$popping', (a) => a?.$popping),
        request = CreateCaseEventApiRequestActions(() => $options.stateful<
                CreateCaseEventApiRequest,
                CreateCaseEventApiRequestBuilder,
                CreateCaseEventApiRequestActions>(
            'request',
            (a) => a.request,
            (s) => s?.request,
            (b) => b?.request,
            (parent, builder) => parent?.request = builder)),
        cmdCreate = CreateCaseEventApi(() => $options.stateful<
                CommandState<ApiCommand<CreateCaseEventApiRequest>,
                    ApiResult<CreateCaseEventApiResponse>>,
                CommandStateBuilder<ApiCommand<CreateCaseEventApiRequest>,
                    ApiResult<CreateCaseEventApiResponse>>,
                CreateCaseEventApi>(
            'cmdCreate',
            (a) => a.cmdCreate,
            (s) => s?.cmdCreate,
            (b) => b?.cmdCreate,
            (parent, builder) => parent?.cmdCreate = builder)),
        super._();

  factory _$CreateCaseEventActions(CreateCaseEventActionsOptions options) =>
      _$CreateCaseEventActions._(options());

  @override
  CreateCaseEventStateBuilder $newBuilder() => CreateCaseEventStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.request,
        this.cmdCreate,
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
    cmdCreate.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    request.$middleware(middleware);
    cmdCreate.$middleware(middleware);
  }

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CreateCaseEventState);

  @override
  CreateCaseEventApiResponseBuilder $newResultBuilder() =>
      CreateCaseEventApiResponse().toBuilder();
}
