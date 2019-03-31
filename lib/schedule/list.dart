library state.schedule.list;

import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/model/action/caseEvent/list_case_events_api_case_event.dart';
import 'package:movemedical_api/state/action/caseEvent/list_case_events_api.dart'
    as list_case_events_api;
import '../foundation.dart';

part 'list.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class CaseEventListRoute extends RouteDispatcher<CaseEventListState,
    CaseEventListStateBuilder, Null, CaseEventListActions, CaseEventListRoute> {
  CaseEventListRoute._();

  factory CaseEventListRoute(CaseEventListRouteOptions options) =
      _$CaseEventListRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class CaseEventListActions extends RouteActions<CaseEventListState,
    CaseEventListStateBuilder, Null, CaseEventListActions, CaseEventListRoute> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  list_case_events_api.ListCaseEventsApi get listCommand;

  list_case_events_api.ListCaseEventsApiRequestActions get request;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CaseEventListState get $initial =>
      CaseEventListState((b) => b..listCommand = listCommand.$newBuilder());

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
          ApiResult<list_case_events_api.ListCaseEventsApiResponse>>
      get listCommand;

  @nullable
  list_case_events_api.ListCaseEventsApiRequest get request;

  @memoized
  bool get isLoading => listCommand?.isInProgress ?? false;

  @memoized
  BuiltList<ListCaseEventsApiCaseEvent> get events =>
      ApiResult.listOfState(listCommand);

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  CaseEventListState._();

  factory CaseEventListState([updates(CaseEventListStateBuilder b)]) =
      _$CaseEventListState;

  static Serializer<CaseEventListState> get serializer =>
      _$caseEventListStateSerializer;
}
