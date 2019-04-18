library messages.detail;

import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/state/action/messaging/conversations/get_conversation_api.dart';

import '../foundation.dart';

part 'detail.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class ConversationRoute extends ScreenRoute<ConversationState,
    ConversationStateBuilder, ConversationActions, ConversationRoute> {
  ConversationRoute._();

  factory ConversationRoute(ConversationRouteOptions options) =
      _$ConversationRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class ConversationActions extends ScreenActions<ConversationState,
    ConversationStateBuilder, ConversationActions> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  GetConversationApi get getCommand;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  ConversationState get initialState$ => ConversationState((b) => b);

  @override
  MobileNavigationElement get navElement$ => MobileNavigationElement.MESSAGES;

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  ConversationActions._();

  factory ConversationActions(ConversationActionsOptions options) =
      _$ConversationActions;
}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class ConversationState
    implements Built<ConversationState, ConversationStateBuilder> {
  @nullable
  CommandState<ApiCommand<GetConversationApiRequest>,
      ApiResult<GetConversationApiResponse>> get getCommand;

  @memoized
  bool get isLoading => getCommand?.isInProgress ?? false;

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  ConversationState._();

  factory ConversationState([updates(ConversationStateBuilder b)]) =
      _$ConversationState;

  static Serializer<ConversationState> get serializer =>
      _$conversationStateSerializer;
}
