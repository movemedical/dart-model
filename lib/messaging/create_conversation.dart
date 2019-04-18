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
    CreateConversationActions> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  CreateConversationApiRequestActions get request;

  CreateConversationApi get cmdCreate;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CreateConversationState get initialState$ =>
      CreateConversationState((b) => b);

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
  CreateConversationApiRequest get request;

  @nullable
  CommandState<ApiCommand<CreateConversationApiRequest>,
      ApiResult<CreateConversationApiResponse>> get cmdCreate;

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  CreateConversationState._();

  factory CreateConversationState(
          [updates(CreateConversationStateBuilder b)]) =>
      _$CreateConversationState((b) {
        updates?.call(b);
        b.request ??= CreateConversationApiRequest().toBuilder();
      });

  static Serializer<CreateConversationState> get serializer =>
      _$createConversationStateSerializer;
}
