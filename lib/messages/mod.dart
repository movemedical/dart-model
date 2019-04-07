import '../foundation.dart';

import 'list.dart';
import 'list_filter.dart';
import 'convo.dart';

part 'mod.g.dart';

abstract class MessagesActions
    extends StateActions<MessagesState, MessagesStateBuilder, MessagesActions> {
  ConversationListActions get list;

  ConversationListFilterActions get listFilter;

  ConversationActions get conversation;

  MessagesActions._();

  factory MessagesActions(MessagesActionsOptions options) = _$MessagesActions;
}

abstract class MessagesState
    implements Built<MessagesState, MessagesStateBuilder> {
  @nullable
  ConversationListState get list;

  @nullable
  ConversationListFilterState get listFilter;

  @nullable
  ConversationState get conversation;

  MessagesState._();

  factory MessagesState([updates(MessagesStateBuilder b)]) = _$MessagesState;

  static Serializer<MessagesState> get serializer => _$messagesStateSerializer;
}
