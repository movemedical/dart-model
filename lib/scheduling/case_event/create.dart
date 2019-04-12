import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/state/action/case_event/create_case_event_api.dart';

import '../../foundation.dart';

export 'package:movemedical_api/state/action/case_event/create_case_event_api.dart';

part 'create.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class CreateCaseEventRoute extends DialogRoute<
    CreateCaseEventState,
    CreateCaseEventStateBuilder,
    CreateCaseEventApiResponse,
    CreateCaseEventApiResponseBuilder,
    CreateCaseEventActions,
    CreateCaseEventRoute> {
  CreateCaseEventRoute._();

  factory CreateCaseEventRoute(CreateCaseEventRouteOptions options) =
      _$CreateCaseEventRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class CreateCaseEventActions extends DialogActions<
    CreateCaseEventState,
    CreateCaseEventStateBuilder,
    CreateCaseEventApiResponse,
    CreateCaseEventApiResponseBuilder,
    CreateCaseEventActions,
    CreateCaseEventRoute> {
  CreateCaseEventApiRequestActions get request;

  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  CreateCaseEventApi get cmdCreate;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CreateCaseEventState get $initial => CreateCaseEventState((b) => b);

  ////////////////////////////////////
  /// Middleware
  ////////////////////////////////////

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);

//    middleware.nest(this)
//      ..add(cmdLoad.$result, (api, next, action) {
//        if (action?.payload?.payload is GetCreateCaseEventApiResponse) {
//          model.$reset(action.payload.payload as GetCreateCaseEventApiResponse);
//        }
//      });
  }

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  CreateCaseEventActions._();

  factory CreateCaseEventActions(CreateCaseEventActionsOptions options) =
      _$CreateCaseEventActions;
}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class CreateCaseEventState
    implements Built<CreateCaseEventState, CreateCaseEventStateBuilder> {
  @nullable
  CreateCaseEventApiRequest get request;

  @nullable
  CommandState<ApiCommand<CreateCaseEventApiRequest>,
      ApiResult<CreateCaseEventApiResponse>> get cmdCreate;

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  CreateCaseEventState._();

  factory CreateCaseEventState([updates(CreateCaseEventStateBuilder b)]) =
      _$CreateCaseEventState;

  static Serializer<CreateCaseEventState> get serializer =>
      _$createCaseEventStateSerializer;
}
