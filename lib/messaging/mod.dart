import '../foundation.dart';
import 'create_conversation.dart';
import 'create_message.dart';
import 'detail.dart';
import 'list.dart';
import 'list_filter.dart';
import 'update_conversation.dart';

part 'mod.g.dart';

abstract class MessagingModuleActions extends StateActions<MessagingModuleState,
    MessagingModuleStateBuilder, MessagingModuleActions> {
  ConversationListActions get list;

  ConversationListRoute get listRoute;

  ConversationListFilterActions get listFilter;

  ConversationListFilterRoute get listFilterRoute;

  ConversationActions get conversation;

  ConversationRoute get conversationRoute;

  CreateConversationActions get createConversation;

  CreateConversationRoute get createConversationRoute;

  UpdateConversationActions get updateConversation;

  UpdateConversationRoute get updateConversationRoute;

  CreateMessageActions get createMessage;

  CreateMessageRoute get createMessageRoute;

  MessagingModuleActions._();

  factory MessagingModuleActions(MessagingModuleActionsOptions options) =
      _$MessagingModuleActions;
}

abstract class MessagingModuleState
    implements Built<MessagingModuleState, MessagingModuleStateBuilder> {
  @nullable
  ConversationListState get list;

  @nullable
  CommandState<RouteCommand<ConversationListState>, RouteResult<Nothing>>
      get listRoute;

  @nullable
  ConversationListFilterState get listFilter;

  @nullable
  CommandState<RouteCommand<ConversationListFilterState>, RouteResult<Nothing>>
      get listFilterRoute;

  @nullable
  ConversationState get conversation;

  @nullable
  CommandState<RouteCommand<ConversationState>, RouteResult<Nothing>>
      get conversationRoute;

  @nullable
  CreateConversationState get createConversation;

  @nullable
  CommandState<RouteCommand<CreateConversationState>,
      RouteResult<CreateConversationApiResponse>> get createConversationRoute;

  @nullable
  UpdateConversationState get conversationUpdate;

  @nullable
  CommandState<RouteCommand<UpdateConversationState>, RouteResult<Nothing>>
      get updateConversationRoute;

  @nullable
  CreateMessageState get createMessage;

  @nullable
  CommandState<RouteCommand<CreateMessageState>,
      RouteResult<CreateMessageApiResponse>> get createMessageRoute;

  MessagingModuleState._();

  factory MessagingModuleState([updates(MessagingModuleStateBuilder b)]) =
      _$MessagingModuleState;

  static Serializer<MessagingModuleState> get serializer =>
      _$messagingModuleStateSerializer;
}
