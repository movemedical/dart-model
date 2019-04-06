library schedule.detail;

import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/state/action/caseEvent/get_case_event_detail_api.dart';
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_case_doc.dart';
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_case_event.dart';
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_display_rules.dart';
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_event.dart';
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_loan.dart';
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_request.dart';
import 'package:movemedical_api/model/action/caseEvent/get_case_event_detail_api_response.dart';
import '../foundation.dart';

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
    CaseEventDetailState,
    CaseEventDetailStateBuilder,
    CaseEventDetailActions,
    CaseEventDetailRoute> {
  GetCaseEventDetailApiRequestActions get request;

  GetCaseEventDetailApiResponseActions get model;

  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  GetCaseEventDetailApi get getCommand;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CaseEventDetailState get $initial => CaseEventDetailState((b) => b);

  ////////////////////////////////////
  /// Config
  ////////////////////////////////////

  @override
  MobileNavigationElement get $navElement => MobileNavigationElement.DASHBOARD;

  ////////////////////////////////////
  /// Middleware
  ////////////////////////////////////

  @override
  void $onPush(Store<AppState, AppStateBuilder, AppActions> store,
      CaseEventDetailState state) {
    if (state.request != null) {
      getCommand(state.request);
    }
  }

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
      ApiResult<GetCaseEventDetailApiResponse>> get getCommand;

  bool get specifyArgs => request == null && model == null;

  bool get isLoading => getCommand?.isInProgress ?? false;

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
