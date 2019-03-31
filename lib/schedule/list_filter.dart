library state.schedule.list_filter;

import 'package:movemedical_api/state/action/caseEvent/list_case_events_api.dart';
import '../foundation.dart';

part 'list_filter.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class CaseEventListFilterRoute extends RouteDispatcher<
    CaseEventListFilterState,
    CaseEventListFilterStateBuilder,
    Null,
    CaseEventListFilterActions,
    CaseEventListFilterRoute> {
  CaseEventListFilterRoute._();

  factory CaseEventListFilterRoute(CaseEventListFilterRouteOptions options) =
      _$CaseEventListFilterRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class CaseEventListFilterActions extends RouteActions<
    CaseEventListFilterState,
    CaseEventListFilterStateBuilder,
    Null,
    CaseEventListFilterActions,
    CaseEventListFilterRoute> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  ListCaseEventsApiRequestActions get request;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CaseEventListFilterState get $initial => CaseEventListFilterState();

  ////////////////////////////////////
  /// Reducers
  ////////////////////////////////////

  ////////////////////////////////////
  /// Middleware
  ////////////////////////////////////

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  CaseEventListFilterActions._();

  factory CaseEventListFilterActions(
      CaseEventListFilterActionsOptions options) = _$CaseEventListFilterActions;
}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class CaseEventListFilterState
    implements
        Built<CaseEventListFilterState, CaseEventListFilterStateBuilder> {
  ListCaseEventsApiRequest get request;

  CaseEventListFilterState._();

  factory CaseEventListFilterState(
          [updates(CaseEventListFilterStateBuilder b)]) =
      _$CaseEventListFilterState;

  static Serializer<CaseEventListFilterState> get serializer =>
      _$caseEventListFilterStateSerializer;
}
