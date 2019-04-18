// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessagingModuleState> _$messagingModuleStateSerializer =
    new _$MessagingModuleStateSerializer();

class _$MessagingModuleStateSerializer
    implements StructuredSerializer<MessagingModuleState> {
  @override
  final Iterable<Type> types = const [
    MessagingModuleState,
    _$MessagingModuleState
  ];
  @override
  final String wireName = 'movemedical_model/messaging/MessagingModuleState';

  @override
  Iterable serialize(Serializers serializers, MessagingModuleState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(object.list,
            specifiedType: const FullType(ConversationListState)));
    }
    if (object.listRoute != null) {
      result
        ..add('listRoute')
        ..add(serializers.serialize(object.listRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  RouteCommand, const [const FullType(ConversationListState)]),
              const FullType(RouteResult, const [const FullType(Nothing)])
            ])));
    }
    if (object.listFilter != null) {
      result
        ..add('listFilter')
        ..add(serializers.serialize(object.listFilter,
            specifiedType: const FullType(ConversationListFilterState)));
    }
    if (object.listFilterRoute != null) {
      result
        ..add('listFilterRoute')
        ..add(serializers.serialize(object.listFilterRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(RouteCommand,
                  const [const FullType(ConversationListFilterState)]),
              const FullType(RouteResult, const [const FullType(Nothing)])
            ])));
    }
    if (object.conversation != null) {
      result
        ..add('conversation')
        ..add(serializers.serialize(object.conversation,
            specifiedType: const FullType(ConversationState)));
    }
    if (object.conversationRoute != null) {
      result
        ..add('conversationRoute')
        ..add(serializers.serialize(object.conversationRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  RouteCommand, const [const FullType(ConversationState)]),
              const FullType(RouteResult, const [const FullType(Nothing)])
            ])));
    }
    if (object.createConversation != null) {
      result
        ..add('createConversation')
        ..add(serializers.serialize(object.createConversation,
            specifiedType: const FullType(CreateConversationState)));
    }
    if (object.createConversationRoute != null) {
      result
        ..add('createConversationRoute')
        ..add(serializers.serialize(object.createConversationRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(RouteCommand,
                  const [const FullType(CreateConversationState)]),
              const FullType(RouteResult,
                  const [const FullType(CreateConversationApiResponse)])
            ])));
    }
    if (object.conversationUpdate != null) {
      result
        ..add('conversationUpdate')
        ..add(serializers.serialize(object.conversationUpdate,
            specifiedType: const FullType(UpdateConversationState)));
    }
    if (object.updateConversationRoute != null) {
      result
        ..add('updateConversationRoute')
        ..add(serializers.serialize(object.updateConversationRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(RouteCommand,
                  const [const FullType(UpdateConversationState)]),
              const FullType(RouteResult, const [const FullType(Nothing)])
            ])));
    }
    if (object.createMessage != null) {
      result
        ..add('createMessage')
        ..add(serializers.serialize(object.createMessage,
            specifiedType: const FullType(CreateMessageState)));
    }
    if (object.createMessageRoute != null) {
      result
        ..add('createMessageRoute')
        ..add(serializers.serialize(object.createMessageRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  RouteCommand, const [const FullType(CreateMessageState)]),
              const FullType(
                  RouteResult, const [const FullType(CreateMessageApiResponse)])
            ])));
    }

    return result;
  }

  @override
  MessagingModuleState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessagingModuleStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ConversationListState))
              as ConversationListState);
          break;
        case 'listRoute':
          result.listRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(ConversationListState)]),
                    const FullType(RouteResult, const [const FullType(Nothing)])
                  ]))
              as CommandState<RouteCommand<ConversationListState>,
                  RouteResult<Nothing>>);
          break;
        case 'listFilter':
          result.listFilter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ConversationListFilterState))
              as ConversationListFilterState);
          break;
        case 'listFilterRoute':
          result.listFilterRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(ConversationListFilterState)]),
                    const FullType(RouteResult, const [const FullType(Nothing)])
                  ]))
              as CommandState<RouteCommand<ConversationListFilterState>,
                  RouteResult<Nothing>>);
          break;
        case 'conversation':
          result.conversation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ConversationState))
              as ConversationState);
          break;
        case 'conversationRoute':
          result.conversationRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(ConversationState)]),
                    const FullType(RouteResult, const [const FullType(Nothing)])
                  ]))
              as CommandState<RouteCommand<ConversationState>,
                  RouteResult<Nothing>>);
          break;
        case 'createConversation':
          result.createConversation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CreateConversationState))
              as CreateConversationState);
          break;
        case 'createConversationRoute':
          result.createConversationRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(CreateConversationState)]),
                    const FullType(RouteResult,
                        const [const FullType(CreateConversationApiResponse)])
                  ]))
              as CommandState<RouteCommand<CreateConversationState>,
                  RouteResult<CreateConversationApiResponse>>);
          break;
        case 'conversationUpdate':
          result.conversationUpdate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UpdateConversationState))
              as UpdateConversationState);
          break;
        case 'updateConversationRoute':
          result.updateConversationRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(UpdateConversationState)]),
                    const FullType(RouteResult, const [const FullType(Nothing)])
                  ]))
              as CommandState<RouteCommand<UpdateConversationState>,
                  RouteResult<Nothing>>);
          break;
        case 'createMessage':
          result.createMessage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CreateMessageState))
              as CreateMessageState);
          break;
        case 'createMessageRoute':
          result.createMessageRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(CreateMessageState)]),
                    const FullType(RouteResult,
                        const [const FullType(CreateMessageApiResponse)])
                  ]))
              as CommandState<RouteCommand<CreateMessageState>,
                  RouteResult<CreateMessageApiResponse>>);
          break;
      }
    }

    return result.build();
  }
}

class _$MessagingModuleState extends MessagingModuleState {
  @override
  final ConversationListState list;
  @override
  final CommandState<RouteCommand<ConversationListState>, RouteResult<Nothing>>
      listRoute;
  @override
  final ConversationListFilterState listFilter;
  @override
  final CommandState<RouteCommand<ConversationListFilterState>,
      RouteResult<Nothing>> listFilterRoute;
  @override
  final ConversationState conversation;
  @override
  final CommandState<RouteCommand<ConversationState>, RouteResult<Nothing>>
      conversationRoute;
  @override
  final CreateConversationState createConversation;
  @override
  final CommandState<RouteCommand<CreateConversationState>,
      RouteResult<CreateConversationApiResponse>> createConversationRoute;
  @override
  final UpdateConversationState conversationUpdate;
  @override
  final CommandState<RouteCommand<UpdateConversationState>,
      RouteResult<Nothing>> updateConversationRoute;
  @override
  final CreateMessageState createMessage;
  @override
  final CommandState<RouteCommand<CreateMessageState>,
      RouteResult<CreateMessageApiResponse>> createMessageRoute;

  factory _$MessagingModuleState(
          [void updates(MessagingModuleStateBuilder b)]) =>
      (new MessagingModuleStateBuilder()..update(updates)).build();

  _$MessagingModuleState._(
      {this.list,
      this.listRoute,
      this.listFilter,
      this.listFilterRoute,
      this.conversation,
      this.conversationRoute,
      this.createConversation,
      this.createConversationRoute,
      this.conversationUpdate,
      this.updateConversationRoute,
      this.createMessage,
      this.createMessageRoute})
      : super._();

  @override
  MessagingModuleState rebuild(void updates(MessagingModuleStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MessagingModuleStateBuilder toBuilder() =>
      new MessagingModuleStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessagingModuleState &&
        list == other.list &&
        listRoute == other.listRoute &&
        listFilter == other.listFilter &&
        listFilterRoute == other.listFilterRoute &&
        conversation == other.conversation &&
        conversationRoute == other.conversationRoute &&
        createConversation == other.createConversation &&
        createConversationRoute == other.createConversationRoute &&
        conversationUpdate == other.conversationUpdate &&
        updateConversationRoute == other.updateConversationRoute &&
        createMessage == other.createMessage &&
        createMessageRoute == other.createMessageRoute;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, list.hashCode),
                                                listRoute.hashCode),
                                            listFilter.hashCode),
                                        listFilterRoute.hashCode),
                                    conversation.hashCode),
                                conversationRoute.hashCode),
                            createConversation.hashCode),
                        createConversationRoute.hashCode),
                    conversationUpdate.hashCode),
                updateConversationRoute.hashCode),
            createMessage.hashCode),
        createMessageRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MessagingModuleState')
          ..add('list', list)
          ..add('listRoute', listRoute)
          ..add('listFilter', listFilter)
          ..add('listFilterRoute', listFilterRoute)
          ..add('conversation', conversation)
          ..add('conversationRoute', conversationRoute)
          ..add('createConversation', createConversation)
          ..add('createConversationRoute', createConversationRoute)
          ..add('conversationUpdate', conversationUpdate)
          ..add('updateConversationRoute', updateConversationRoute)
          ..add('createMessage', createMessage)
          ..add('createMessageRoute', createMessageRoute))
        .toString();
  }
}

class MessagingModuleStateBuilder
    implements Builder<MessagingModuleState, MessagingModuleStateBuilder> {
  _$MessagingModuleState _$v;

  ConversationListStateBuilder _list;
  ConversationListStateBuilder get list =>
      _$this._list ??= new ConversationListStateBuilder();
  set list(ConversationListStateBuilder list) => _$this._list = list;

  CommandStateBuilder<RouteCommand<ConversationListState>, RouteResult<Nothing>>
      _listRoute;
  CommandStateBuilder<RouteCommand<ConversationListState>, RouteResult<Nothing>>
      get listRoute => _$this._listRoute ??= new CommandStateBuilder<
          RouteCommand<ConversationListState>, RouteResult<Nothing>>();
  set listRoute(
          CommandStateBuilder<RouteCommand<ConversationListState>,
                  RouteResult<Nothing>>
              listRoute) =>
      _$this._listRoute = listRoute;

  ConversationListFilterStateBuilder _listFilter;
  ConversationListFilterStateBuilder get listFilter =>
      _$this._listFilter ??= new ConversationListFilterStateBuilder();
  set listFilter(ConversationListFilterStateBuilder listFilter) =>
      _$this._listFilter = listFilter;

  CommandStateBuilder<RouteCommand<ConversationListFilterState>,
      RouteResult<Nothing>> _listFilterRoute;
  CommandStateBuilder<RouteCommand<ConversationListFilterState>,
          RouteResult<Nothing>>
      get listFilterRoute =>
          _$this._listFilterRoute ??= new CommandStateBuilder<
              RouteCommand<ConversationListFilterState>,
              RouteResult<Nothing>>();
  set listFilterRoute(
          CommandStateBuilder<RouteCommand<ConversationListFilterState>,
                  RouteResult<Nothing>>
              listFilterRoute) =>
      _$this._listFilterRoute = listFilterRoute;

  ConversationStateBuilder _conversation;
  ConversationStateBuilder get conversation =>
      _$this._conversation ??= new ConversationStateBuilder();
  set conversation(ConversationStateBuilder conversation) =>
      _$this._conversation = conversation;

  CommandStateBuilder<RouteCommand<ConversationState>, RouteResult<Nothing>>
      _conversationRoute;
  CommandStateBuilder<RouteCommand<ConversationState>, RouteResult<Nothing>>
      get conversationRoute =>
          _$this._conversationRoute ??= new CommandStateBuilder<
              RouteCommand<ConversationState>, RouteResult<Nothing>>();
  set conversationRoute(
          CommandStateBuilder<RouteCommand<ConversationState>,
                  RouteResult<Nothing>>
              conversationRoute) =>
      _$this._conversationRoute = conversationRoute;

  CreateConversationStateBuilder _createConversation;
  CreateConversationStateBuilder get createConversation =>
      _$this._createConversation ??= new CreateConversationStateBuilder();
  set createConversation(CreateConversationStateBuilder createConversation) =>
      _$this._createConversation = createConversation;

  CommandStateBuilder<RouteCommand<CreateConversationState>,
      RouteResult<CreateConversationApiResponse>> _createConversationRoute;
  CommandStateBuilder<RouteCommand<CreateConversationState>,
          RouteResult<CreateConversationApiResponse>>
      get createConversationRoute =>
          _$this._createConversationRoute ??= new CommandStateBuilder<
              RouteCommand<CreateConversationState>,
              RouteResult<CreateConversationApiResponse>>();
  set createConversationRoute(
          CommandStateBuilder<RouteCommand<CreateConversationState>,
                  RouteResult<CreateConversationApiResponse>>
              createConversationRoute) =>
      _$this._createConversationRoute = createConversationRoute;

  UpdateConversationStateBuilder _conversationUpdate;
  UpdateConversationStateBuilder get conversationUpdate =>
      _$this._conversationUpdate ??= new UpdateConversationStateBuilder();
  set conversationUpdate(UpdateConversationStateBuilder conversationUpdate) =>
      _$this._conversationUpdate = conversationUpdate;

  CommandStateBuilder<RouteCommand<UpdateConversationState>,
      RouteResult<Nothing>> _updateConversationRoute;
  CommandStateBuilder<RouteCommand<UpdateConversationState>,
          RouteResult<Nothing>>
      get updateConversationRoute =>
          _$this._updateConversationRoute ??= new CommandStateBuilder<
              RouteCommand<UpdateConversationState>, RouteResult<Nothing>>();
  set updateConversationRoute(
          CommandStateBuilder<RouteCommand<UpdateConversationState>,
                  RouteResult<Nothing>>
              updateConversationRoute) =>
      _$this._updateConversationRoute = updateConversationRoute;

  CreateMessageStateBuilder _createMessage;
  CreateMessageStateBuilder get createMessage =>
      _$this._createMessage ??= new CreateMessageStateBuilder();
  set createMessage(CreateMessageStateBuilder createMessage) =>
      _$this._createMessage = createMessage;

  CommandStateBuilder<RouteCommand<CreateMessageState>,
      RouteResult<CreateMessageApiResponse>> _createMessageRoute;
  CommandStateBuilder<RouteCommand<CreateMessageState>,
          RouteResult<CreateMessageApiResponse>>
      get createMessageRoute =>
          _$this._createMessageRoute ??= new CommandStateBuilder<
              RouteCommand<CreateMessageState>,
              RouteResult<CreateMessageApiResponse>>();
  set createMessageRoute(
          CommandStateBuilder<RouteCommand<CreateMessageState>,
                  RouteResult<CreateMessageApiResponse>>
              createMessageRoute) =>
      _$this._createMessageRoute = createMessageRoute;

  MessagingModuleStateBuilder();

  MessagingModuleStateBuilder get _$this {
    if (_$v != null) {
      _list = _$v.list?.toBuilder();
      _listRoute = _$v.listRoute?.toBuilder();
      _listFilter = _$v.listFilter?.toBuilder();
      _listFilterRoute = _$v.listFilterRoute?.toBuilder();
      _conversation = _$v.conversation?.toBuilder();
      _conversationRoute = _$v.conversationRoute?.toBuilder();
      _createConversation = _$v.createConversation?.toBuilder();
      _createConversationRoute = _$v.createConversationRoute?.toBuilder();
      _conversationUpdate = _$v.conversationUpdate?.toBuilder();
      _updateConversationRoute = _$v.updateConversationRoute?.toBuilder();
      _createMessage = _$v.createMessage?.toBuilder();
      _createMessageRoute = _$v.createMessageRoute?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessagingModuleState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MessagingModuleState;
  }

  @override
  void update(void updates(MessagingModuleStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MessagingModuleState build() {
    _$MessagingModuleState _$result;
    try {
      _$result = _$v ??
          new _$MessagingModuleState._(
              list: _list?.build(),
              listRoute: _listRoute?.build(),
              listFilter: _listFilter?.build(),
              listFilterRoute: _listFilterRoute?.build(),
              conversation: _conversation?.build(),
              conversationRoute: _conversationRoute?.build(),
              createConversation: _createConversation?.build(),
              createConversationRoute: _createConversationRoute?.build(),
              conversationUpdate: _conversationUpdate?.build(),
              updateConversationRoute: _updateConversationRoute?.build(),
              createMessage: _createMessage?.build(),
              createMessageRoute: _createMessageRoute?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'listRoute';
        _listRoute?.build();
        _$failedField = 'listFilter';
        _listFilter?.build();
        _$failedField = 'listFilterRoute';
        _listFilterRoute?.build();
        _$failedField = 'conversation';
        _conversation?.build();
        _$failedField = 'conversationRoute';
        _conversationRoute?.build();
        _$failedField = 'createConversation';
        _createConversation?.build();
        _$failedField = 'createConversationRoute';
        _createConversationRoute?.build();
        _$failedField = 'conversationUpdate';
        _conversationUpdate?.build();
        _$failedField = 'updateConversationRoute';
        _updateConversationRoute?.build();
        _$failedField = 'createMessage';
        _createMessage?.build();
        _$failedField = 'createMessageRoute';
        _createMessageRoute?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MessagingModuleState', _$failedField, e.toString());
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
    MessagingModuleState,
    MessagingModuleStateBuilder,
    MessagingModuleActions> MessagingModuleActionsOptions();

class _$MessagingModuleActions extends MessagingModuleActions {
  final StatefulActionsOptions<MessagingModuleState,
      MessagingModuleStateBuilder, MessagingModuleActions> options$;

  final ActionDispatcher<MessagingModuleState> replace$;
  final ConversationListActions list;
  final ConversationListRoute listRoute;
  final ConversationListFilterActions listFilter;
  final ConversationListFilterRoute listFilterRoute;
  final ConversationActions conversation;
  final ConversationRoute conversationRoute;
  final CreateConversationActions createConversation;
  final CreateConversationRoute createConversationRoute;
  final UpdateConversationActions updateConversation;
  final UpdateConversationRoute updateConversationRoute;
  final CreateMessageActions createMessage;
  final CreateMessageRoute createMessageRoute;

  _$MessagingModuleActions._(this.options$)
      : replace$ = options$.action<MessagingModuleState>(
            'replace\$', (a) => a?.replace$),
        list = ConversationListActions(() => options$.stateful<
                ConversationListState,
                ConversationListStateBuilder,
                ConversationListActions>('list', (a) => a.list, (s) => s?.list,
            (b) => b?.list, (parent, builder) => parent?.list = builder)),
        listRoute = ConversationListRoute(() => options$.stateful<
                CommandState<RouteCommand<ConversationListState>,
                    RouteResult<Nothing>>,
                CommandStateBuilder<RouteCommand<ConversationListState>,
                    RouteResult<Nothing>>,
                ConversationListRoute>(
            'listRoute',
            (a) => a.listRoute,
            (s) => s?.listRoute,
            (b) => b?.listRoute,
            (parent, builder) => parent?.listRoute = builder)),
        listFilter = ConversationListFilterActions(() => options$.stateful<
                ConversationListFilterState,
                ConversationListFilterStateBuilder,
                ConversationListFilterActions>(
            'listFilter',
            (a) => a.listFilter,
            (s) => s?.listFilter,
            (b) => b?.listFilter,
            (parent, builder) => parent?.listFilter = builder)),
        listFilterRoute = ConversationListFilterRoute(() => options$.stateful<
                CommandState<RouteCommand<ConversationListFilterState>,
                    RouteResult<ListConversationsApiRequest>>,
                CommandStateBuilder<RouteCommand<ConversationListFilterState>,
                    RouteResult<ListConversationsApiRequest>>,
                ConversationListFilterRoute>(
            'listFilterRoute',
            (a) => a.listFilterRoute,
            (s) => s?.listFilterRoute,
            (b) => b?.listFilterRoute,
            (parent, builder) => parent?.listFilterRoute = builder)),
        conversation = ConversationActions(() => options$.stateful<
                ConversationState,
                ConversationStateBuilder,
                ConversationActions>(
            'conversation',
            (a) => a.conversation,
            (s) => s?.conversation,
            (b) => b?.conversation,
            (parent, builder) => parent?.conversation = builder)),
        conversationRoute = ConversationRoute(() =>
            options$.stateful<
                    CommandState<RouteCommand<ConversationState>,
                        RouteResult<Nothing>>,
                    CommandStateBuilder<RouteCommand<ConversationState>,
                        RouteResult<Nothing>>,
                    ConversationRoute>(
                'conversationRoute',
                (a) => a.conversationRoute,
                (s) => s?.conversationRoute,
                (b) => b?.conversationRoute,
                (parent, builder) => parent?.conversationRoute = builder)),
        createConversation = CreateConversationActions(() => options$.stateful<
                CreateConversationState,
                CreateConversationStateBuilder,
                CreateConversationActions>(
            'createConversation',
            (a) => a.createConversation,
            (s) => s?.createConversation,
            (b) => b?.createConversation,
            (parent, builder) => parent?.createConversation = builder)),
        createConversationRoute = CreateConversationRoute(() =>
            options$.stateful<
                    CommandState<RouteCommand<CreateConversationState>,
                        RouteResult<CreateConversationApiResponse>>,
                    CommandStateBuilder<RouteCommand<CreateConversationState>,
                        RouteResult<CreateConversationApiResponse>>,
                    CreateConversationRoute>(
                'createConversationRoute',
                (a) => a.createConversationRoute,
                (s) => s?.createConversationRoute,
                (b) => b?.createConversationRoute,
                (parent, builder) =>
                    parent?.createConversationRoute = builder)),
        updateConversation = UpdateConversationActions(() => options$.stateful<
                UpdateConversationState,
                UpdateConversationStateBuilder,
                UpdateConversationActions>(
            'updateConversation',
            (a) => a.updateConversation,
            (s) => s?.updateConversation,
            (b) => b?.updateConversation,
            (parent, builder) => parent?.updateConversation = builder)),
        updateConversationRoute = UpdateConversationRoute(() =>
            options$.stateful<
                    CommandState<RouteCommand<UpdateConversationState>,
                        RouteResult<Nothing>>,
                    CommandStateBuilder<RouteCommand<UpdateConversationState>,
                        RouteResult<Nothing>>,
                    UpdateConversationRoute>(
                'updateConversationRoute',
                (a) => a.updateConversationRoute,
                (s) => s?.updateConversationRoute,
                (b) => b?.updateConversationRoute,
                (parent, builder) =>
                    parent?.updateConversationRoute = builder)),
        createMessage = CreateMessageActions(() => options$.stateful<
                CreateMessageState,
                CreateMessageStateBuilder,
                CreateMessageActions>(
            'createMessage',
            (a) => a.createMessage,
            (s) => s?.createMessage,
            (b) => b?.createMessage,
            (parent, builder) => parent?.createMessage = builder)),
        createMessageRoute = CreateMessageRoute(() => options$.stateful<
                CommandState<RouteCommand<CreateMessageState>,
                    RouteResult<CreateMessageApiResponse>>,
                CommandStateBuilder<RouteCommand<CreateMessageState>,
                    RouteResult<CreateMessageApiResponse>>,
                CreateMessageRoute>(
            'createMessageRoute',
            (a) => a.createMessageRoute,
            (s) => s?.createMessageRoute,
            (b) => b?.createMessageRoute,
            (parent, builder) => parent?.createMessageRoute = builder)),
        super._();

  factory _$MessagingModuleActions(MessagingModuleActionsOptions options) =>
      _$MessagingModuleActions._(options());

  @override
  MessagingModuleState get initialState$ => MessagingModuleState();

  @override
  MessagingModuleStateBuilder newBuilder$() => MessagingModuleStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.list,
        this.listRoute,
        this.listFilter,
        this.listFilterRoute,
        this.conversation,
        this.conversationRoute,
        this.createConversation,
        this.createConversationRoute,
        this.updateConversation,
        this.updateConversationRoute,
        this.createMessage,
        this.createMessageRoute,
      ]);

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
      ]);

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    list.reducer$(reducer);
    listRoute.reducer$(reducer);
    listFilter.reducer$(reducer);
    listFilterRoute.reducer$(reducer);
    conversation.reducer$(reducer);
    conversationRoute.reducer$(reducer);
    createConversation.reducer$(reducer);
    createConversationRoute.reducer$(reducer);
    updateConversation.reducer$(reducer);
    updateConversationRoute.reducer$(reducer);
    createMessage.reducer$(reducer);
    createMessageRoute.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    list.middleware$(middleware);
    listRoute.middleware$(middleware);
    listFilter.middleware$(middleware);
    listFilterRoute.middleware$(middleware);
    conversation.middleware$(middleware);
    conversationRoute.middleware$(middleware);
    createConversation.middleware$(middleware);
    createConversationRoute.middleware$(middleware);
    updateConversation.middleware$(middleware);
    updateConversationRoute.middleware$(middleware);
    createMessage.middleware$(middleware);
    createMessageRoute.middleware$(middleware);
  }
}
