// GENERATED CODE - DO NOT MODIFY BY HAND

part of messages.detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConversationState> _$conversationStateSerializer =
    new _$ConversationStateSerializer();

class _$ConversationStateSerializer
    implements StructuredSerializer<ConversationState> {
  @override
  final Iterable<Type> types = const [ConversationState, _$ConversationState];
  @override
  final String wireName = 'movemedical_model/messages/ConversationState';

  @override
  Iterable serialize(Serializers serializers, ConversationState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.getCommand != null) {
      result
        ..add('getCommand')
        ..add(serializers.serialize(object.getCommand,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand,
                  const [const FullType(GetConversationApiRequest)]),
              const FullType(
                  ApiResult, const [const FullType(GetConversationApiResponse)])
            ])));
    }

    return result;
  }

  @override
  ConversationState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConversationStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'getCommand':
          result.getCommand.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(GetConversationApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(GetConversationApiResponse)])
                  ]))
              as CommandState<ApiCommand<GetConversationApiRequest>,
                  ApiResult<GetConversationApiResponse>>);
          break;
      }
    }

    return result.build();
  }
}

class _$ConversationState extends ConversationState {
  @override
  final CommandState<ApiCommand<GetConversationApiRequest>,
      ApiResult<GetConversationApiResponse>> getCommand;
  bool __isLoading;

  factory _$ConversationState([void updates(ConversationStateBuilder b)]) =>
      (new ConversationStateBuilder()..update(updates)).build();

  _$ConversationState._({this.getCommand}) : super._();

  @override
  bool get isLoading => __isLoading ??= super.isLoading;

  @override
  ConversationState rebuild(void updates(ConversationStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ConversationStateBuilder toBuilder() =>
      new ConversationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConversationState && getCommand == other.getCommand;
  }

  @override
  int get hashCode {
    return $jf($jc(0, getCommand.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConversationState')
          ..add('getCommand', getCommand))
        .toString();
  }
}

class ConversationStateBuilder
    implements Builder<ConversationState, ConversationStateBuilder> {
  _$ConversationState _$v;

  CommandStateBuilder<ApiCommand<GetConversationApiRequest>,
      ApiResult<GetConversationApiResponse>> _getCommand;
  CommandStateBuilder<ApiCommand<GetConversationApiRequest>,
          ApiResult<GetConversationApiResponse>>
      get getCommand => _$this._getCommand ??= new CommandStateBuilder<
          ApiCommand<GetConversationApiRequest>,
          ApiResult<GetConversationApiResponse>>();
  set getCommand(
          CommandStateBuilder<ApiCommand<GetConversationApiRequest>,
                  ApiResult<GetConversationApiResponse>>
              getCommand) =>
      _$this._getCommand = getCommand;

  ConversationStateBuilder();

  ConversationStateBuilder get _$this {
    if (_$v != null) {
      _getCommand = _$v.getCommand?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConversationState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConversationState;
  }

  @override
  void update(void updates(ConversationStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ConversationState build() {
    _$ConversationState _$result;
    try {
      _$result =
          _$v ?? new _$ConversationState._(getCommand: _getCommand?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'getCommand';
        _getCommand?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConversationState', _$failedField, e.toString());
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
    CommandState<RouteCommand<ConversationState>, RouteResult<Null>>,
    CommandStateBuilder<RouteCommand<ConversationState>, RouteResult<Null>>,
    ConversationRoute> ConversationRouteOptions();

class _$ConversationRoute extends ConversationRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<ConversationState>, RouteResult<Null>>,
      CommandStateBuilder<RouteCommand<ConversationState>, RouteResult<Null>>,
      ConversationRoute> $options;

  final ActionDispatcher<
          CommandState<RouteCommand<ConversationState>, RouteResult<Null>>>
      $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
          ConversationRoute, String>> $clear;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
          ConversationRoute, String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<ConversationState>,
          RouteResult<Null>,
          ConversationRoute,
          Command<RouteCommand<ConversationState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
          ConversationRoute, CommandResult<RouteResult<Null>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
          ConversationRoute, String>> $detach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
          ConversationRoute, String>> $attach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
          ConversationRoute, CommandProgress>> $progress;

  _$ConversationRoute._(this.$options)
      : $replace = $options.action<
            CommandState<RouteCommand<ConversationState>,
                RouteResult<Null>>>('\$replace', (a) => a?.$replace),
        $clear = $options.action<
            CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
                ConversationRoute, String>>('\$clear', (a) => a?.$clear),
        $cancel = $options.action<
            CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
                ConversationRoute, String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<ConversationState>,
                    RouteResult<Null>,
                    ConversationRoute,
                    Command<RouteCommand<ConversationState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<ConversationState>,
                    RouteResult<Null>,
                    ConversationRoute,
                    CommandResult<RouteResult<Null>>>>(
            '\$result', (a) => a?.$result),
        $detach = $options.action<
            CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
                ConversationRoute, String>>('\$detach', (a) => a?.$detach),
        $attach = $options.action<
            CommandPayload<RouteCommand<ConversationState>, RouteResult<Null>,
                ConversationRoute, String>>('\$attach', (a) => a?.$attach),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<ConversationState>,
                RouteResult<Null>,
                ConversationRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$ConversationRoute(ConversationRouteOptions options) =>
      _$ConversationRoute._(options());

  @override
  CommandState<RouteCommand<ConversationState>, RouteResult<Null>>
      get $initial =>
          CommandState<RouteCommand<ConversationState>, RouteResult<Null>>();

  @override
  CommandStateBuilder<RouteCommand<ConversationState>, RouteResult<Null>>
      $newBuilder() => CommandStateBuilder<RouteCommand<ConversationState>,
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
// Serializer<CommandStateConversationRoute> get $serializer => CommandStateConversationRoute.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(ConversationState)]),
        FullType(RouteResult, [FullType(Null)])
      ]);
}

typedef StatefulActionsOptions<ConversationState, ConversationStateBuilder,
    ConversationActions> ConversationActionsOptions();

class _$ConversationActions extends ConversationActions {
  final StatefulActionsOptions<ConversationState, ConversationStateBuilder,
      ConversationActions> $options;

  final ActionDispatcher<ConversationState> $replace;
  final ActionDispatcher $activatedAction;
  final ActionDispatcher $deactivatedAction;
  final ActionDispatcher $pushAction;
  final ActionDispatcher $popAction;
  final GetConversationApi getCommand;

  _$ConversationActions._(this.$options)
      : $replace =
            $options.action<ConversationState>('\$replace', (a) => a?.$replace),
        $activatedAction =
            $options.action('\$activatedAction', (a) => a?.$activatedAction),
        $deactivatedAction = $options.action(
            '\$deactivatedAction', (a) => a?.$deactivatedAction),
        $pushAction = $options.action('\$pushAction', (a) => a?.$pushAction),
        $popAction = $options.action('\$popAction', (a) => a?.$popAction),
        getCommand = GetConversationApi(() => $options.stateful<
                CommandState<ApiCommand<GetConversationApiRequest>,
                    ApiResult<GetConversationApiResponse>>,
                CommandStateBuilder<ApiCommand<GetConversationApiRequest>,
                    ApiResult<GetConversationApiResponse>>,
                GetConversationApi>(
            'getCommand',
            (a) => a.getCommand,
            (s) => s?.getCommand,
            (b) => b?.getCommand,
            (parent, builder) => parent?.getCommand = builder)),
        super._();

  factory _$ConversationActions(ConversationActionsOptions options) =>
      _$ConversationActions._(options());

  @override
  ConversationStateBuilder $newBuilder() => ConversationStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.getCommand,
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
    getCommand.$reducer(reducer);
  }

  @override
  void $middleware(MiddlewareBuilder middleware) {
    super.$middleware(middleware);
    getCommand.$middleware(middleware);
  }

// @override
// Serializer<ConversationStateConversationActions> get $serializer => ConversationStateConversationActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(ConversationState);
}
