library messages.list_filter;

import 'package:movemedical_api/state/action/messaging/conversations/list_conversations_api.dart';
import '../foundation.dart';

part 'list_filter.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class ConversationListFilterRoute extends RouteDispatcher<
    ConversationListFilterState,
    ConversationListFilterStateBuilder,
    ListConversationsApiRequest,
    ConversationListFilterActions,
    ConversationListFilterRoute> {
  ConversationListFilterRoute._();

  factory ConversationListFilterRoute(
          ConversationListFilterRouteOptions options) =
      _$ConversationListFilterRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class ConversationListFilterActions extends RouteActions<
    ConversationListFilterState,
    ConversationListFilterStateBuilder,
    ListConversationsApiRequest,
    ConversationListFilterActions,
    ConversationListFilterRoute> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  ListConversationsApiRequestActions request;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  ConversationListFilterState get $initial => ConversationListFilterState();

  ////////////////////////////////////
  /// Reducers
  ////////////////////////////////////

  ////////////////////////////////////
  /// Middleware
  ////////////////////////////////////

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  ConversationListFilterActions._();

  factory ConversationListFilterActions(
          ConversationListFilterActionsOptions options) =
      _$ConversationListFilterActions;
}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class ConversationListFilterState
    implements
        Built<ConversationListFilterState, ConversationListFilterStateBuilder> {
  ListConversationsApiRequest get request;

  ConversationListFilterState._();

  factory ConversationListFilterState(
          [updates(ConversationListFilterStateBuilder b)]) =
      _$ConversationListFilterState;

  static Serializer<ConversationListFilterState> get serializer =>
      _$conversationListFilterStateSerializer;
}