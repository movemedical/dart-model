import 'package:movemedical_api/state/action/case_event/list_case_events_api.dart';

import '../../foundation.dart';

export 'package:movemedical_api/state/action/case_event/list_case_events_api.dart';

part 'list_filter.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class CaseEventListFilterRoute extends DialogRoute<
    CaseEventListFilterState,
    CaseEventListFilterStateBuilder,
    ListCaseEventsApiRequest,
    ListCaseEventsApiRequestBuilder,
    CaseEventListFilterActions,
    CaseEventListFilterRoute> {
  CaseEventListFilterRoute._();

  factory CaseEventListFilterRoute(CaseEventListFilterRouteOptions options) =
      _$CaseEventListFilterRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class CaseEventListFilterActions extends DialogActions<
    CaseEventListFilterState,
    CaseEventListFilterStateBuilder,
    ListCaseEventsApiRequest,
    ListCaseEventsApiRequestBuilder,
    CaseEventListFilterActions> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  ListCaseEventsApiRequestActions get request;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CaseEventListFilterState get initialState$ => CaseEventListFilterState();

  ////////////////////////////////////
  /// Middleware
  ////////////////////////////////////

//  @override
//  void $onPush(Store<AppState, AppStateBuilder, AppActions> store,
//      CaseEventListFilterState state) {}

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
