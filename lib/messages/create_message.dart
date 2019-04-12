import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/state/action/messaging/messages/create_message_api.dart';
export 'package:movemedical_api/state/action/messaging/messages/create_message_api.dart';

import '../foundation.dart';

part 'create_message.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class CreateMessageRoute extends DialogRoute<
    CreateMessageState,
    CreateMessageStateBuilder,
    CreateMessageApiResponse,
    CreateMessageApiResponseBuilder,
    CreateMessageActions,
    CreateMessageRoute> {
  CreateMessageRoute._();

  factory CreateMessageRoute(CreateMessageRouteOptions options) =
      _$CreateMessageRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class CreateMessageActions extends DialogActions<
    CreateMessageState,
    CreateMessageStateBuilder,
    CreateMessageApiResponse,
    CreateMessageApiResponseBuilder,
    CreateMessageActions,
    CreateMessageRoute> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  CreateMessageApi get cmdCreate;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CreateMessageState get $initial => CreateMessageState((b) => b);

  @override
  Future<bool> $onWillPop() async {
    return true;
  }

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  CreateMessageActions._();

  factory CreateMessageActions(CreateMessageActionsOptions options) =
      _$CreateMessageActions;
}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class CreateMessageState
    implements Built<CreateMessageState, CreateMessageStateBuilder> {
  @nullable
  CommandState<ApiCommand<CreateMessageApiRequest>,
      ApiResult<CreateMessageApiResponse>> get cmdCreate;

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  CreateMessageState._();

  factory CreateMessageState([updates(CreateMessageStateBuilder b)]) =
      _$CreateMessageState;

  static Serializer<CreateMessageState> get serializer =>
      _$createMessageStateSerializer;
}
