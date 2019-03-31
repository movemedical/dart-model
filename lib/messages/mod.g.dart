// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessagesState> _$messagesStateSerializer =
    new _$MessagesStateSerializer();

class _$MessagesStateSerializer implements StructuredSerializer<MessagesState> {
  @override
  final Iterable<Type> types = const [MessagesState, _$MessagesState];
  @override
  final String wireName = 'movemedical_model/messages/MessagesState';

  @override
  Iterable serialize(Serializers serializers, MessagesState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(object.list,
            specifiedType: const FullType(ConversationListState)));
    }
    if (object.listFilter != null) {
      result
        ..add('listFilter')
        ..add(serializers.serialize(object.listFilter,
            specifiedType: const FullType(ConversationListFilterState)));
    }
    if (object.conversation != null) {
      result
        ..add('conversation')
        ..add(serializers.serialize(object.conversation,
            specifiedType: const FullType(ConversationState)));
    }

    return result;
  }

  @override
  MessagesState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessagesStateBuilder();

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
        case 'listFilter':
          result.listFilter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ConversationListFilterState))
              as ConversationListFilterState);
          break;
        case 'conversation':
          result.conversation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ConversationState))
              as ConversationState);
          break;
      }
    }

    return result.build();
  }
}

class _$MessagesState extends MessagesState {
  @override
  final ConversationListState list;
  @override
  final ConversationListFilterState listFilter;
  @override
  final ConversationState conversation;

  factory _$MessagesState([void updates(MessagesStateBuilder b)]) =>
      (new MessagesStateBuilder()..update(updates)).build();

  _$MessagesState._({this.list, this.listFilter, this.conversation})
      : super._();

  @override
  MessagesState rebuild(void updates(MessagesStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MessagesStateBuilder toBuilder() => new MessagesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessagesState &&
        list == other.list &&
        listFilter == other.listFilter &&
        conversation == other.conversation;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, list.hashCode), listFilter.hashCode),
        conversation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MessagesState')
          ..add('list', list)
          ..add('listFilter', listFilter)
          ..add('conversation', conversation))
        .toString();
  }
}

class MessagesStateBuilder
    implements Builder<MessagesState, MessagesStateBuilder> {
  _$MessagesState _$v;

  ConversationListStateBuilder _list;
  ConversationListStateBuilder get list =>
      _$this._list ??= new ConversationListStateBuilder();
  set list(ConversationListStateBuilder list) => _$this._list = list;

  ConversationListFilterStateBuilder _listFilter;
  ConversationListFilterStateBuilder get listFilter =>
      _$this._listFilter ??= new ConversationListFilterStateBuilder();
  set listFilter(ConversationListFilterStateBuilder listFilter) =>
      _$this._listFilter = listFilter;

  ConversationStateBuilder _conversation;
  ConversationStateBuilder get conversation =>
      _$this._conversation ??= new ConversationStateBuilder();
  set conversation(ConversationStateBuilder conversation) =>
      _$this._conversation = conversation;

  MessagesStateBuilder();

  MessagesStateBuilder get _$this {
    if (_$v != null) {
      _list = _$v.list?.toBuilder();
      _listFilter = _$v.listFilter?.toBuilder();
      _conversation = _$v.conversation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessagesState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MessagesState;
  }

  @override
  void update(void updates(MessagesStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MessagesState build() {
    _$MessagesState _$result;
    try {
      _$result = _$v ??
          new _$MessagesState._(
              list: _list?.build(),
              listFilter: _listFilter?.build(),
              conversation: _conversation?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'listFilter';
        _listFilter?.build();
        _$failedField = 'conversation';
        _conversation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MessagesState', _$failedField, e.toString());
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

typedef StatefulActionsOptions<MessagesState, MessagesStateBuilder,
    MessagesActions> MessagesActionsOptions();

class _$MessagesActions extends MessagesActions {
  final StatefulActionsOptions<MessagesState, MessagesStateBuilder,
      MessagesActions> $options;

  final ActionDispatcher<MessagesState> $replace;
  final ConversationListActions list;
  final ConversationListFilterActions listFilter;
  final ConversationActions conversation;

  _$MessagesActions._(this.$options)
      : $replace =
            $options.action<MessagesState>('\$replace', (a) => a?.$replace),
        list = ConversationListActions(() => $options.stateful<
                ConversationListState,
                ConversationListStateBuilder,
                ConversationListActions>('list', (a) => a.list, (s) => s?.list,
            (b) => b?.list, (parent, builder) => parent?.list = builder)),
        listFilter = ConversationListFilterActions(() => $options.stateful<
                ConversationListFilterState,
                ConversationListFilterStateBuilder,
                ConversationListFilterActions>(
            'listFilter',
            (a) => a.listFilter,
            (s) => s?.listFilter,
            (b) => b?.listFilter,
            (parent, builder) => parent?.listFilter = builder)),
        conversation = ConversationActions(() => $options.stateful<
                ConversationState,
                ConversationStateBuilder,
                ConversationActions>(
            'conversation',
            (a) => a.conversation,
            (s) => s?.conversation,
            (b) => b?.conversation,
            (parent, builder) => parent?.conversation = builder)),
        super._();

  factory _$MessagesActions(MessagesActionsOptions options) =>
      _$MessagesActions._(options());

  @override
  MessagesState get $initial => MessagesState();

  @override
  MessagesStateBuilder $newBuilder() => MessagesStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.list,
        this.listFilter,
        this.conversation,
      ]);

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    list.$reducer(reducer);
    listFilter.$reducer(reducer);
    conversation.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    list.$middleware(middleware);
    listFilter.$middleware(middleware);
    conversation.$middleware(middleware);
  }

// @override
// Serializer<MessagesStateMessagesActions> get $serializer => MessagesStateMessagesActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(MessagesState);
}
