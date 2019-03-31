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

abstract class CaseEventDetailRoute extends RouteDispatcher<
    CaseEventDetailState,
    CaseEventDetailStateBuilder,
    Null,
    CaseEventDetailActions,
    CaseEventDetailRoute> {
  CaseEventDetailRoute._();

  factory CaseEventDetailRoute(CaseEventDetailRouteOptions options) =
      _$CaseEventDetailRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class CaseEventDetailActions extends RouteActions<
    CaseEventDetailState,
    CaseEventDetailStateBuilder,
    Null,
    CaseEventDetailActions,
    CaseEventDetailRoute> {
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
  /// Construction
  ////////////////////////////////////

  CaseEventDetailActions._();

  factory CaseEventDetailActions(CaseEventDetailActionsOptions options) =
      _$CaseEventDetailActions;
}

class CaseEventDetailController {}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class CaseEventDetailState
    implements Built<CaseEventDetailState, CaseEventDetailStateBuilder> {
  @nullable
  CommandState<ApiCommand<GetCaseEventDetailApiRequest>,
      ApiResult<GetCaseEventDetailApiResponse>> get getCommand;

  @memoized
  bool get isLoading => getCommand?.isInProgress ?? false;

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  CaseEventDetailState._();

  factory CaseEventDetailState([updates(CaseEventDetailStateBuilder b)]) =
      _$CaseEventDetailState;

  static Serializer<CaseEventDetailState> get serializer =>
      _$caseEventDetailStateSerializer;
}
