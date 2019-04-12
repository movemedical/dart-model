library messages.list_filter;

import 'package:movemedical_api/state/action/messaging/conversations/list_conversations_api.dart';

import '../foundation.dart';

export 'package:movemedical_api/state/action/messaging/conversations/list_conversations_api.dart';

part 'list_filter.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class ConversationListFilterRoute extends DialogRoute<
    ConversationListFilterState,
    ConversationListFilterStateBuilder,
    ListConversationsApiRequest,
    ListConversationsApiRequestBuilder,
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

abstract class ConversationListFilterActions extends DialogActions<
    ConversationListFilterState,
    ConversationListFilterStateBuilder,
    ListConversationsApiRequest,
    ListConversationsApiRequestBuilder,
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
