import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/model/action/case_event/list_case_events_api_case_event.dart';
import 'package:movemedical_api/state/action/case_event/list_case_events_api.dart'
    as list_case_events_api;

import '../../foundation.dart';

part 'list.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class CaseEventListRoute extends ScreenRoute<CaseEventListState,
    CaseEventListStateBuilder, CaseEventListActions, CaseEventListRoute> {
  CaseEventListRoute._();

  factory CaseEventListRoute(CaseEventListRouteOptions options) =
      _$CaseEventListRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class CaseEventListActions extends ScreenActions<CaseEventListState,
    CaseEventListStateBuilder, CaseEventListActions> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  list_case_events_api.ListCaseEventsApi get list;

  list_case_events_api.ListCaseEventsApiRequestActions get request;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CaseEventListState get initialState$ =>
      CaseEventListState((b) => b..listCommand = list.initialBuilder$);

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  CaseEventListActions._();

  factory CaseEventListActions(CaseEventListActionsOptions options) =
      _$CaseEventListActions;
}

class CaseEventListController {}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class CaseEventListState
    implements Built<CaseEventListState, CaseEventListStateBuilder> {
  @nullable
  CommandState<ApiCommand<list_case_events_api.ListCaseEventsApiRequest>,
      ApiResult<list_case_events_api.ListCaseEventsApiResponse>> get list;

  @nullable
  list_case_events_api.ListCaseEventsApiRequest get request;

  bool get isLoading => list?.isInProgress ?? false;

  @memoized
  BuiltList<ListCaseEventsApiCaseEvent> get events =>
      ApiResult.listOfState(list);

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  CaseEventListState._();

  factory CaseEventListState([updates(CaseEventListStateBuilder b)]) =
      _$CaseEventListState;

  static Serializer<CaseEventListState> get serializer =>
      _$caseEventListStateSerializer;
}
