// GENERATED CODE - DO NOT MODIFY BY HAND

part of messages.list_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConversationListFilterState>
    _$conversationListFilterStateSerializer =
    new _$ConversationListFilterStateSerializer();

class _$ConversationListFilterStateSerializer
    implements StructuredSerializer<ConversationListFilterState> {
  @override
  final Iterable<Type> types = const [
    ConversationListFilterState,
    _$ConversationListFilterState
  ];
  @override
  final String wireName =
      'movemedical_model/messages/ConversationListFilterState';

  @override
  Iterable serialize(
      Serializers serializers, ConversationListFilterState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(ListConversationsApiRequest)),
    ];

    return result;
  }

  @override
  ConversationListFilterState deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConversationListFilterStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ListConversationsApiRequest))
              as ListConversationsApiRequest);
          break;
      }
    }

    return result.build();
  }
}

class _$ConversationListFilterState extends ConversationListFilterState {
  @override
  final ListConversationsApiRequest request;

  factory _$ConversationListFilterState(
          [void updates(ConversationListFilterStateBuilder b)]) =>
      (new ConversationListFilterStateBuilder()..update(updates)).build();

  _$ConversationListFilterState._({this.request}) : super._() {
    if (request == null) {
      throw new BuiltValueNullFieldError(
          'ConversationListFilterState', 'request');
    }
  }

  @override
  ConversationListFilterState rebuild(
          void updates(ConversationListFilterStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ConversationListFilterStateBuilder toBuilder() =>
      new ConversationListFilterStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConversationListFilterState && request == other.request;
  }

  @override
  int get hashCode {
    return $jf($jc(0, request.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConversationListFilterState')
          ..add('request', request))
        .toString();
  }
}

class ConversationListFilterStateBuilder
    implements
        Builder<ConversationListFilterState,
            ConversationListFilterStateBuilder> {
  _$ConversationListFilterState _$v;

  ListConversationsApiRequestBuilder _request;
  ListConversationsApiRequestBuilder get request =>
      _$this._request ??= new ListConversationsApiRequestBuilder();
  set request(ListConversationsApiRequestBuilder request) =>
      _$this._request = request;

  ConversationListFilterStateBuilder();

  ConversationListFilterStateBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConversationListFilterState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ConversationListFilterState;
  }

  @override
  void update(void updates(ConversationListFilterStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ConversationListFilterState build() {
    _$ConversationListFilterState _$result;
    try {
      _$result =
          _$v ?? new _$ConversationListFilterState._(request: request.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        request.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ConversationListFilterState', _$failedField, e.toString());
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
    CommandState<RouteCommand<ConversationListFilterState>,
        RouteResult<ListConversationsApiRequest>>,
    CommandStateBuilder<RouteCommand<ConversationListFilterState>,
        RouteResult<ListConversationsApiRequest>>,
    ConversationListFilterRoute> ConversationListFilterRouteOptions();

class _$ConversationListFilterRoute extends ConversationListFilterRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>>,
      CommandStateBuilder<RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>>,
      ConversationListFilterRoute> $options;

  final ActionDispatcher<
      CommandState<RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>>> $replace;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>,
          ConversationListFilterRoute,
          String>> $clear;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>,
          ConversationListFilterRoute,
          String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>,
          ConversationListFilterRoute,
          Command<RouteCommand<ConversationListFilterState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>,
          ConversationListFilterRoute,
          CommandResult<RouteResult<ListConversationsApiRequest>>>> $result;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>,
          ConversationListFilterRoute,
          String>> $detach;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>,
          ConversationListFilterRoute,
          String>> $attach;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>,
          ConversationListFilterRoute,
          CommandProgress>> $progress;

  _$ConversationListFilterRoute._(this.$options)
      : $replace = $options.action<
                CommandState<RouteCommand<ConversationListFilterState>,
                    RouteResult<ListConversationsApiRequest>>>(
            '\$replace', (a) => a?.$replace),
        $clear = $options.action<
            CommandPayload<
                RouteCommand<ConversationListFilterState>,
                RouteResult<ListConversationsApiRequest>,
                ConversationListFilterRoute,
                String>>('\$clear', (a) => a?.$clear),
        $cancel = $options.action<
            CommandPayload<
                RouteCommand<ConversationListFilterState>,
                RouteResult<ListConversationsApiRequest>,
                ConversationListFilterRoute,
                String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<ConversationListFilterState>,
                    RouteResult<ListConversationsApiRequest>,
                    ConversationListFilterRoute,
                    Command<RouteCommand<ConversationListFilterState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<ConversationListFilterState>,
                    RouteResult<ListConversationsApiRequest>,
                    ConversationListFilterRoute,
                    CommandResult<RouteResult<ListConversationsApiRequest>>>>(
            '\$result', (a) => a?.$result),
        $detach = $options.action<
            CommandPayload<
                RouteCommand<ConversationListFilterState>,
                RouteResult<ListConversationsApiRequest>,
                ConversationListFilterRoute,
                String>>('\$detach', (a) => a?.$detach),
        $attach = $options.action<
            CommandPayload<
                RouteCommand<ConversationListFilterState>,
                RouteResult<ListConversationsApiRequest>,
                ConversationListFilterRoute,
                String>>('\$attach', (a) => a?.$attach),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<ConversationListFilterState>,
                RouteResult<ListConversationsApiRequest>,
                ConversationListFilterRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$ConversationListFilterRoute(
          ConversationListFilterRouteOptions options) =>
      _$ConversationListFilterRoute._(options());

  @override
  CommandState<RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>>
      get $initial => CommandState<RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>>();

  @override
  CommandStateBuilder<RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>>
      $newBuilder() => CommandStateBuilder<
          RouteCommand<ConversationListFilterState>,
          RouteResult<ListConversationsApiRequest>>();

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
// Serializer<CommandStateConversationListFilterRoute> get $serializer => CommandStateConversationListFilterRoute.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(ConversationListFilterState)]),
        FullType(RouteResult, [FullType(ListConversationsApiRequest)])
      ]);
}

typedef StatefulActionsOptions<
    ConversationListFilterState,
    ConversationListFilterStateBuilder,
    ConversationListFilterActions> ConversationListFilterActionsOptions();

class _$ConversationListFilterActions extends ConversationListFilterActions {
  final StatefulActionsOptions<
      ConversationListFilterState,
      ConversationListFilterStateBuilder,
      ConversationListFilterActions> $options;

  final ActionDispatcher<ConversationListFilterState> $replace;
  final ActionDispatcher $activatedAction;
  final ActionDispatcher $deactivatedAction;
  final ActionDispatcher $pushAction;
  final ActionDispatcher $popAction;
  final ListConversationsApiRequestActions request;

  _$ConversationListFilterActions._(this.$options)
      : $replace = $options.action<ConversationListFilterState>(
            '\$replace', (a) => a?.$replace),
        $activatedAction =
            $options.action('\$activatedAction', (a) => a?.$activatedAction),
        $deactivatedAction = $options.action(
            '\$deactivatedAction', (a) => a?.$deactivatedAction),
        $pushAction = $options.action('\$pushAction', (a) => a?.$pushAction),
        $popAction = $options.action('\$popAction', (a) => a?.$popAction),
        request = ListConversationsApiRequestActions(() => $options.stateful<
                ListConversationsApiRequest,
                ListConversationsApiRequestBuilder,
                ListConversationsApiRequestActions>(
            'request',
            (a) => a.request,
            (s) => s?.request,
            (b) => b?.request,
            (parent, builder) => parent?.request = builder)),
        super._();

  factory _$ConversationListFilterActions(
          ConversationListFilterActionsOptions options) =>
      _$ConversationListFilterActions._(options());

  @override
  ConversationListFilterStateBuilder $newBuilder() =>
      ConversationListFilterStateBuilder();

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
        this.$activatedAction,
        this.$deactivatedAction,
        this.$pushAction,
        this.$popAction,
      ]);

  @override
  void $reducer(ReducerBuilder reducer) {
    super.$reducer(reducer);
    request.$reducer(reducer);
  }

  @override
  void $middleware(MiddlewareBuilder middleware) {
    super.$middleware(middleware);
    request.$middleware(middleware);
  }

// @override
// Serializer<ConversationListFilterStateConversationListFilterActions> get $serializer => ConversationListFilterStateConversationListFilterActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType =>
      _$fullType ??= FullType(ConversationListFilterState);
}