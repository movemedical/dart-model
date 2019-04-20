import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_request.dart';
import 'package:movemedical_api/model/action/case_event/get_case_event_detail_api_response.dart';
import 'package:movemedical_api/state/action/case_event/get_case_event_detail_api.dart';

import '../../foundation.dart';

part 'detail.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class CaseEventDetailRoute extends ScreenRoute<CaseEventDetailState,
    CaseEventDetailStateBuilder, CaseEventDetailActions, CaseEventDetailRoute> {
  CaseEventDetailRoute._();

  factory CaseEventDetailRoute(CaseEventDetailRouteOptions options) =
      _$CaseEventDetailRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class CaseEventDetailActions extends ScreenActions<
    CaseEventDetailState, CaseEventDetailStateBuilder, CaseEventDetailActions> {
  GetCaseEventDetailApiRequestActions get request;

  GetCaseEventDetailApiResponseActions get model;

  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  GetCaseEventDetailApi get cmdLoad;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CaseEventDetailState get initialState$ => CaseEventDetailState((b) => b);

  ////////////////////////////////////
  /// Middleware
  ////////////////////////////////////

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);

    middleware.nest(this)
      ..add(cmdLoad.result$, (api, next, action) {
        if (action?.payload is GetCaseEventDetailApiResponse) {
          model.reset$(action.payload as GetCaseEventDetailApiResponse);
        }
      });
  }

//  @override
//  void $onPush(Store<AppState, AppStateBuilder, AppActions> store,
//      CaseEventDetailState state) {
//    if (state.request != null) {
//      cmdLoad(state.request);
//    }
//  }

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  CaseEventDetailActions._();

  factory CaseEventDetailActions(CaseEventDetailActionsOptions options) =
      _$CaseEventDetailActions;
}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class CaseEventDetailState
    implements Built<CaseEventDetailState, CaseEventDetailStateBuilder> {
  @nullable
  GetCaseEventDetailApiRequest get request;

  @nullable
  GetCaseEventDetailApiResponse get model;

  @nullable
  CommandState<ApiCommand<GetCaseEventDetailApiRequest>,
      ApiResult<GetCaseEventDetailApiResponse>> get cmdLoad;

  bool get specifyArgs => request == null && model == null;

  bool get isLoading => cmdLoad?.isInProgress ?? false;

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  CaseEventDetailState._();

  factory CaseEventDetailState.load(
          {String id, int caseNumber, bool skipPresence = false}) =>
      CaseEventDetailState((b) => b
        ..request = (GetCaseEventDetailApiRequestBuilder()
          ..id = id
          ..caseNumber = caseNumber
          ..skipPresence = skipPresence));

  factory CaseEventDetailState([updates(CaseEventDetailStateBuilder b)]) =
      _$CaseEventDetailState;

  static Serializer<CaseEventDetailState> get serializer =>
      _$caseEventDetailStateSerializer;
}
