library messages.update;

import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/state/action/messaging/conversations/update_conversation_api.dart';

import '../foundation.dart';

part 'update_conversation.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class UpdateConversationRoute extends DialogRoute<
    UpdateConversationState,
    UpdateConversationStateBuilder,
    Nothing,
    NothingBuilder,
    UpdateConversationActions,
    UpdateConversationRoute> {
  UpdateConversationRoute._();

  factory UpdateConversationRoute(UpdateConversationRouteOptions options) =
      _$UpdateConversationRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class UpdateConversationActions extends DialogActions<
    UpdateConversationState,
    UpdateConversationStateBuilder,
    Nothing,
    NothingBuilder,
    UpdateConversationActions,
    UpdateConversationRoute> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  UpdateConversationState get $initial => UpdateConversationState((b) => b);

  @override
  MobileNavigationElement get $navElement => MobileNavigationElement.MESSAGES;

  @override
  Future<bool> $onWillPop() async {
    return true;
  }

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  UpdateConversationActions._();

  factory UpdateConversationActions(UpdateConversationActionsOptions options) =
      _$UpdateConversationActions;
}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class UpdateConversationState
    implements Built<UpdateConversationState, UpdateConversationStateBuilder> {
  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  UpdateConversationState._();

  factory UpdateConversationState([updates(UpdateConversationStateBuilder b)]) =
      _$UpdateConversationState;

  static Serializer<UpdateConversationState> get serializer =>
      _$updateConversationStateSerializer;
}
