// GENERATED CODE - DO NOT MODIFY BY HAND

part of messages.list;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConversationListState> _$conversationListStateSerializer =
    new _$ConversationListStateSerializer();

class _$ConversationListStateSerializer
    implements StructuredSerializer<ConversationListState> {
  @override
  final Iterable<Type> types = const [
    ConversationListState,
    _$ConversationListState
  ];
  @override
  final String wireName = 'movemedical_model/messages/ConversationListState';

  @override
  Iterable serialize(Serializers serializers, ConversationListState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.command != null) {
      result
        ..add('command')
        ..add(serializers.serialize(object.command,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand,
                  const [const FullType(ListConversationsApiRequest)]),
              const FullType(ApiResult,
                  const [const FullType(ListConversationsApiResponse)])
            ])));
    }
    if (object.filter != null) {
      result
        ..add('filter')
        ..add(serializers.serialize(object.filter,
            specifiedType: const FullType(CommandState, const [
              const FullType(RouteCommand,
                  const [const FullType(ConversationListFilterState)]),
              const FullType(RouteResult,
                  const [const FullType(ListConversationsApiRequest)])
            ])));
    }

    return result;
  }

  @override
  ConversationListState deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConversationListStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'command':
          result.command.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(ListConversationsApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(ListConversationsApiResponse)])
                  ]))
              as CommandState<ApiCommand<ListConversationsApiRequest>,
                  ApiResult<ListConversationsApiResponse>>);
          break;
        case 'filter':
          result.filter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(ConversationListFilterState)]),
                    const FullType(RouteResult,
                        const [const FullType(ListConversationsApiRequest)])
                  ]))
              as CommandState<RouteCommand<ConversationListFilterState>,
                  RouteResult<ListConversationsApiRequest>>);
          break;
      }
    }

    return result.build();
  }
}

class _$ConversationListState extends ConversationListState {
  @override
  final CommandState<ApiCommand<ListConversationsApiRequest>,
      ApiResult<ListConversationsApiResponse>> command;
  @override
  final CommandState<RouteCommand<ConversationListFilterState>,
      RouteResult<ListConversationsApiRequest>> filter;
  ListConversationsApiRequest __filterRequest;
  BuiltList<ListConversationsApiConversation> __events;

  factory _$ConversationListState(
          [void updates(ConversationListStateBuilder b)]) =>
      (new ConversationListStateBuilder()..update(updates)).build();

  _$ConversationListState._({this.command, this.filter}) : super._();

  @override
  ListConversationsApiRequest get filterRequest =>
      __filterRequest ??= super.filterRequest;

  @override
  BuiltList<ListConversationsApiConversation> get events =>
      __events ??= super.events;

  @override
  ConversationListState rebuild(void updates(ConversationListStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ConversationListStateBuilder toBuilder() =>
      new ConversationListStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConversationListState &&
        command == other.command &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, command.hashCode), filter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConversationListState')
          ..add('command', command)
          ..add('filter', filter))
        .toString();
  }
}

class ConversationListStateBuilder
    implements Builder<ConversationListState, ConversationListStateBuilder> {
  _$ConversationListState _$v;

  CommandStateBuilder<ApiCommand<ListConversationsApiRequest>,
      ApiResult<ListConversationsApiResponse>> _command;
  CommandStateBuilder<ApiCommand<ListConversationsApiRequest>,
          ApiResult<ListConversationsApiResponse>>
      get command => _$this._command ??= new CommandStateBuilder<
          ApiCommand<ListConversationsApiRequest>,
          ApiResult<ListConversationsApiResponse>>();
  set command(
          CommandStateBuilder<ApiCommand<ListConversationsApiRequest>,
                  ApiResult<ListConversationsApiResponse>>
              command) =>
      _$this._command = command;

  CommandStateBuilder<RouteCommand<ConversationListFilterState>,
      RouteResult<ListConversationsApiRequest>> _filter;
  CommandStateBuilder<RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>>
      get filter => _$this._filter ??= new CommandStateBuilder<
          RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>>();
  set filter(
          CommandStateBuilder<RouteCommand<ConversationListFilterState>,
                  RouteResult<ListConversationsApiRequest>>
              filter) =>
      _$this._filter = filter;

  ConversationListStateBuilder();

  ConversationListStateBuilder get _$this {
    if (_$v != null) {
      _command = _$v.command?.toBuilder();
      _filter = _$v.filter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConversationListState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConversationListState;
  }

  @override
  void update(void updates(ConversationListStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ConversationListState build() {
    _$ConversationListState _$result;
    try {
      _$result = _$v ??
          new _$ConversationListState._(
              command: _command?.build(), filter: _filter?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'command';
        _command?.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConversationListState', _$failedField, e.toString());
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
    CommandState<RouteCommand<ConversationListState>, RouteResult<Null>>,
    CommandStateBuilder<RouteCommand<ConversationListState>, RouteResult<Null>>,
    ConversationListRoute> ConversationListRouteOptions();

class _$ConversationListRoute extends ConversationListRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<ConversationListState>, RouteResult<Null>>,
      CommandStateBuilder<RouteCommand<ConversationListState>,
          RouteResult<Null>>,
      ConversationListRoute> $options;

  final ActionDispatcher<
          CommandState<RouteCommand<ConversationListState>, RouteResult<Null>>>
      $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationListState>, RouteResult<Null>,
          ConversationListRoute, String>> $clear;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationListState>, RouteResult<Null>,
          ConversationListRoute, String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<ConversationListState>,
          RouteResult<Null>,
          ConversationListRoute,
          Command<RouteCommand<ConversationListState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationListState>, RouteResult<Null>,
          ConversationListRoute, CommandResult<RouteResult<Null>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationListState>, RouteResult<Null>,
          ConversationListRoute, String>> $detach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationListState>, RouteResult<Null>,
          ConversationListRoute, String>> $attach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<ConversationListState>, RouteResult<Null>,
          ConversationListRoute, CommandProgress>> $progress;

  _$ConversationListRoute._(this.$options)
      : $replace = $options.action<
            CommandState<RouteCommand<ConversationListState>,
                RouteResult<Null>>>('\$replace', (a) => a?.$replace),
        $clear = $options.action<
            CommandPayload<
                RouteCommand<ConversationListState>,
                RouteResult<Null>,
                ConversationListRoute,
                String>>('\$clear', (a) => a?.$clear),
        $cancel = $options.action<
            CommandPayload<
                RouteCommand<ConversationListState>,
                RouteResult<Null>,
                ConversationListRoute,
                String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<ConversationListState>,
                    RouteResult<Null>,
                    ConversationListRoute,
                    Command<RouteCommand<ConversationListState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<ConversationListState>,
                    RouteResult<Null>,
                    ConversationListRoute,
                    CommandResult<RouteResult<Null>>>>(
            '\$result', (a) => a?.$result),
        $detach = $options.action<
            CommandPayload<
                RouteCommand<ConversationListState>,
                RouteResult<Null>,
                ConversationListRoute,
                String>>('\$detach', (a) => a?.$detach),
        $attach = $options.action<
            CommandPayload<
                RouteCommand<ConversationListState>,
                RouteResult<Null>,
                ConversationListRoute,
                String>>('\$attach', (a) => a?.$attach),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<ConversationListState>,
                RouteResult<Null>,
                ConversationListRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$ConversationListRoute(ConversationListRouteOptions options) =>
      _$ConversationListRoute._(options());

  @override
  CommandState<RouteCommand<ConversationListState>, RouteResult<Null>>
      get $initial => CommandState<RouteCommand<ConversationListState>,
          RouteResult<Null>>();

  @override
  CommandStateBuilder<RouteCommand<ConversationListState>, RouteResult<Null>>
      $newBuilder() => CommandStateBuilder<RouteCommand<ConversationListState>,
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
// Serializer<CommandStateConversationListRoute> get $serializer => CommandStateConversationListRoute.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(ConversationListState)]),
        FullType(RouteResult, [FullType(Null)])
      ]);
}

typedef StatefulActionsOptions<
    ConversationListState,
    ConversationListStateBuilder,
    ConversationListActions> ConversationListActionsOptions();

class _$ConversationListActions extends ConversationListActions {
  final StatefulActionsOptions<ConversationListState,
      ConversationListStateBuilder, ConversationListActions> $options;

  final ActionDispatcher<ConversationListState> $replace;
  final ActionDispatcher $activatedAction;
  final ActionDispatcher $deactivatedAction;
  final ActionDispatcher $pushAction;
  final ActionDispatcher $popAction;
  final ListConversationsApi command;
  final ConversationListFilterRoute filter;

  _$ConversationListActions._(this.$options)
      : $replace = $options.action<ConversationListState>(
            '\$replace', (a) => a?.$replace),
        $activatedAction =
            $options.action('\$activatedAction', (a) => a?.$activatedAction),
        $deactivatedAction = $options.action(
            '\$deactivatedAction', (a) => a?.$deactivatedAction),
        $pushAction = $options.action('\$pushAction', (a) => a?.$pushAction),
        $popAction = $options.action('\$popAction', (a) => a?.$popAction),
        command = ListConversationsApi(() => $options.stateful<
                CommandState<ApiCommand<ListConversationsApiRequest>,
                    ApiResult<ListConversationsApiResponse>>,
                CommandStateBuilder<ApiCommand<ListConversationsApiRequest>,
                    ApiResult<ListConversationsApiResponse>>,
                ListConversationsApi>(
            'command',
            (a) => a.command,
            (s) => s?.command,
            (b) => b?.command,
            (parent, builder) => parent?.command = builder)),
        filter = ConversationListFilterRoute(() => $options.stateful<
                CommandState<RouteCommand<ConversationListFilterState>,
                    RouteResult<ListConversationsApiRequest>>,
                CommandStateBuilder<RouteCommand<ConversationListFilterState>,
                    RouteResult<ListConversationsApiRequest>>,
                ConversationListFilterRoute>(
            'filter',
            (a) => a.filter,
            (s) => s?.filter,
            (b) => b?.filter,
            (parent, builder) => parent?.filter = builder)),
        super._();

  factory _$ConversationListActions(ConversationListActionsOptions options) =>
      _$ConversationListActions._(options());

  @override
  ConversationListStateBuilder $newBuilder() => ConversationListStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.command,
        this.filter,
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
    command.$reducer(reducer);
    filter.$reducer(reducer);
  }

  @override
  void $middleware(MiddlewareBuilder middleware) {
    super.$middleware(middleware);
    command.$middleware(middleware);
    filter.$middleware(middleware);
  }

// @override
// Serializer<ConversationListStateConversationListActions> get $serializer => ConversationListStateConversationListActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(ConversationListState);
}
