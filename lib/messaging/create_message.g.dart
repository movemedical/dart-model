// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateMessageState> _$createMessageStateSerializer =
    new _$CreateMessageStateSerializer();

class _$CreateMessageStateSerializer
    implements StructuredSerializer<CreateMessageState> {
  @override
  final Iterable<Type> types = const [CreateMessageState, _$CreateMessageState];
  @override
  final String wireName = 'movemedical_model/messaging/CreateMessageState';

  @override
  Iterable serialize(Serializers serializers, CreateMessageState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.cmdCreate != null) {
      result
        ..add('cmdCreate')
        ..add(serializers.serialize(object.cmdCreate,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  ApiCommand, const [const FullType(CreateMessageApiRequest)]),
              const FullType(
                  ApiResult, const [const FullType(CreateMessageApiResponse)])
            ])));
    }

    return result;
  }

  @override
  CreateMessageState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateMessageStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'cmdCreate':
          result.cmdCreate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(CreateMessageApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(CreateMessageApiResponse)])
                  ]))
              as CommandState<ApiCommand<CreateMessageApiRequest>,
                  ApiResult<CreateMessageApiResponse>>);
          break;
      }
    }

    return result.build();
  }
}

class _$CreateMessageState extends CreateMessageState {
  @override
  final CommandState<ApiCommand<CreateMessageApiRequest>,
      ApiResult<CreateMessageApiResponse>> cmdCreate;

  factory _$CreateMessageState([void updates(CreateMessageStateBuilder b)]) =>
      (new CreateMessageStateBuilder()..update(updates)).build();

  _$CreateMessageState._({this.cmdCreate}) : super._();

  @override
  CreateMessageState rebuild(void updates(CreateMessageStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateMessageStateBuilder toBuilder() =>
      new CreateMessageStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateMessageState && cmdCreate == other.cmdCreate;
  }

  @override
  int get hashCode {
    return $jf($jc(0, cmdCreate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateMessageState')
          ..add('cmdCreate', cmdCreate))
        .toString();
  }
}

class CreateMessageStateBuilder
    implements Builder<CreateMessageState, CreateMessageStateBuilder> {
  _$CreateMessageState _$v;

  CommandStateBuilder<ApiCommand<CreateMessageApiRequest>,
      ApiResult<CreateMessageApiResponse>> _cmdCreate;
  CommandStateBuilder<ApiCommand<CreateMessageApiRequest>,
          ApiResult<CreateMessageApiResponse>>
      get cmdCreate => _$this._cmdCreate ??= new CommandStateBuilder<
          ApiCommand<CreateMessageApiRequest>,
          ApiResult<CreateMessageApiResponse>>();
  set cmdCreate(
          CommandStateBuilder<ApiCommand<CreateMessageApiRequest>,
                  ApiResult<CreateMessageApiResponse>>
              cmdCreate) =>
      _$this._cmdCreate = cmdCreate;

  CreateMessageStateBuilder();

  CreateMessageStateBuilder get _$this {
    if (_$v != null) {
      _cmdCreate = _$v.cmdCreate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateMessageState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateMessageState;
  }

  @override
  void update(void updates(CreateMessageStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateMessageState build() {
    _$CreateMessageState _$result;
    try {
      _$result =
          _$v ?? new _$CreateMessageState._(cmdCreate: _cmdCreate?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cmdCreate';
        _cmdCreate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateMessageState', _$failedField, e.toString());
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
    CommandState<RouteCommand<CreateMessageState>,
        RouteResult<CreateMessageApiResponse>>,
    CommandStateBuilder<RouteCommand<CreateMessageState>,
        RouteResult<CreateMessageApiResponse>>,
    CreateMessageRoute> CreateMessageRouteOptions();

class _$CreateMessageRoute extends CreateMessageRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>>,
      CommandStateBuilder<RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>>,
      CreateMessageRoute> $options;

  final ActionDispatcher<
      CommandState<RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>>> $replace;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>,
          CreateMessageRoute,
          String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>,
          CreateMessageRoute,
          Command<RouteCommand<CreateMessageState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>,
          CreateMessageRoute,
          CommandResult<RouteResult<CreateMessageApiResponse>>>> $result;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>,
          CreateMessageRoute,
          CommandProgress>> $progress;

  _$CreateMessageRoute._(this.$options)
      : $replace = $options.action<
                CommandState<RouteCommand<CreateMessageState>,
                    RouteResult<CreateMessageApiResponse>>>(
            '\$replace', (a) => a?.$replace),
        $cancel = $options.action<
            CommandPayload<
                RouteCommand<CreateMessageState>,
                RouteResult<CreateMessageApiResponse>,
                CreateMessageRoute,
                String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<CreateMessageState>,
                    RouteResult<CreateMessageApiResponse>,
                    CreateMessageRoute,
                    Command<RouteCommand<CreateMessageState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<CreateMessageState>,
                    RouteResult<CreateMessageApiResponse>,
                    CreateMessageRoute,
                    CommandResult<RouteResult<CreateMessageApiResponse>>>>(
            '\$result', (a) => a?.$result),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<CreateMessageState>,
                RouteResult<CreateMessageApiResponse>,
                CreateMessageRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$CreateMessageRoute(CreateMessageRouteOptions options) =>
      _$CreateMessageRoute._(options());

  @override
  CommandState<RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>>
      get $initial => CommandState<RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>>();

  @override
  CommandStateBuilder<RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>>
      $newBuilder() => CommandStateBuilder<RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>>();

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
        FullType(RouteCommand, [FullType(CreateMessageState)]),
        FullType(RouteResult, [FullType(CreateMessageApiResponse)])
      ]);

  @override
  RouteCommandBuilder<CreateMessageState> newCommandBuilder() =>
      RouteCommand<CreateMessageState>().toBuilder();

  @override
  RouteResultBuilder<CreateMessageApiResponse> newResultBuilder() =>
      RouteResult<CreateMessageApiResponse>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  CreateMessageStateBuilder newCommandPayloadBuilder() =>
      CreateMessageState().toBuilder();

  @override
  CreateMessageApiResponseBuilder newResultPayloadBuilder() =>
      CreateMessageApiResponse().toBuilder();

  @override
  Serializer<CreateMessageState> get commandPayloadSerializer =>
      CreateMessageState.serializer;

  @override
  Serializer<CreateMessageApiResponse> get resultPayloadSerializer =>
      CreateMessageApiResponse.serializer;
}

typedef StatefulActionsOptions<CreateMessageState, CreateMessageStateBuilder,
    CreateMessageActions> CreateMessageActionsOptions();

class _$CreateMessageActions extends CreateMessageActions {
  final StatefulActionsOptions<CreateMessageState, CreateMessageStateBuilder,
      CreateMessageActions> $options;

  final ActionDispatcher<CreateMessageState> $replace;
  final ActionDispatcher<Null> $activated;
  final ActionDispatcher<Null> $deactivated;
  final ActionDispatcher<CreateMessageState> $pushing;
  final ActionDispatcher<CreateMessageApiResponse> $popping;
  final CreateMessageApi cmdCreate;

  _$CreateMessageActions._(this.$options)
      : $replace = $options.action<CreateMessageState>(
            '\$replace', (a) => a?.$replace),
        $activated = $options.action<Null>('\$activated', (a) => a?.$activated),
        $deactivated =
            $options.action<Null>('\$deactivated', (a) => a?.$deactivated),
        $pushing = $options.action<CreateMessageState>(
            '\$pushing', (a) => a?.$pushing),
        $popping = $options.action<CreateMessageApiResponse>(
            '\$popping', (a) => a?.$popping),
        cmdCreate = CreateMessageApi(() => $options.stateful<
                CommandState<ApiCommand<CreateMessageApiRequest>,
                    ApiResult<CreateMessageApiResponse>>,
                CommandStateBuilder<ApiCommand<CreateMessageApiRequest>,
                    ApiResult<CreateMessageApiResponse>>,
                CreateMessageApi>(
            'cmdCreate',
            (a) => a.cmdCreate,
            (s) => s?.cmdCreate,
            (b) => b?.cmdCreate,
            (parent, builder) => parent?.cmdCreate = builder)),
        super._();

  factory _$CreateMessageActions(CreateMessageActionsOptions options) =>
      _$CreateMessageActions._(options());

  @override
  CreateMessageStateBuilder $newBuilder() => CreateMessageStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
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
    cmdCreate.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    cmdCreate.$middleware(middleware);
  }

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CreateMessageState);

  @override
  CreateMessageApiResponseBuilder $newResultBuilder() =>
      CreateMessageApiResponse().toBuilder();
}
