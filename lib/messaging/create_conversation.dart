import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/state/action/messaging/messages/create_conversation_api.dart';

import '../foundation.dart';

export 'package:movemedical_api/state/action/messaging/messages/create_conversation_api.dart';

part 'create_conversation.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class CreateConversationRoute extends DialogRoute<
    CreateConversationState,
    CreateConversationStateBuilder,
    CreateConversationApiResponse,
    CreateConversationApiResponseBuilder,
    CreateConversationActions,
    CreateConversationRoute> {
  CreateConversationRoute._();

  factory CreateConversationRoute(CreateConversationRouteOptions options) =
      _$CreateConversationRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class CreateConversationActions extends DialogActions<
    CreateConversationState,
    CreateConversationStateBuilder,
    CreateConversationApiResponse,
    CreateConversationApiResponseBuilder,
    CreateConversationActions,
    CreateConversationRoute> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  CreateConversationApi get cmdCreate;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CreateConversationState get $initial => CreateConversationState((b) => b);

  @override
  MobileNavigationElement get $navElement => MobileNavigationElement.MESSAGES;

  @override
  Future<bool> $onWillPop() async {
    return true;
  }

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  CreateConversationActions._();

  factory CreateConversationActions(CreateConversationActionsOptions options) =
      _$CreateConversationActions;
}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class CreateConversationState
    implements Built<CreateConversationState, CreateConversationStateBuilder> {
  @nullable
  CommandState<ApiCommand<CreateConversationApiRequest>,
      ApiResult<CreateConversationApiResponse>> get cmdCreate;

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  CreateConversationState._();

  factory CreateConversationState([updates(CreateConversationStateBuilder b)]) =
      _$CreateConversationState;

  static Serializer<CreateConversationState> get serializer =>
      _$createConversationStateSerializer;
}
