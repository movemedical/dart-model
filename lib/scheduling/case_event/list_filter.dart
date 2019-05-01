import 'package:movemedical_api/model/action/case_event/list_procedures_for_search_api_procedure.dart';
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart';
import 'package:movemedical_api/model/case_type.dart';
import 'package:movemedical_api/model/hcr_team.dart';
import 'package:movemedical_api/model/physician.dart';
import 'package:movemedical_api/model/remove_or_refactor/hospital.dart';
import 'package:movemedical_api/state/action/case_event/list_case_events_api.dart';
import 'package:movemedical_api/state/action/case_event/list_case_types_api.dart';
import 'package:movemedical_api/state/action/case_event/list_hospitals_for_scheduling_api.dart';
import 'package:movemedical_api/state/action/case_event/list_procedures_for_search_api.dart';
import 'package:movemedical_api/state/action/case_event/list_surgeon_physicians_for_scheduling_api.dart';
import 'package:movemedical_api/state/action/directory/search_hcr_teams_api.dart';

import '../../foundation.dart';

export 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart';
export 'package:movemedical_api/model/case_type.dart';
export 'package:movemedical_api/state/action/case_event/list_case_events_api.dart';
export 'package:movemedical_api/state/action/case_event/list_case_events_api.dart';
export 'package:movemedical_api/state/action/case_event/list_case_types_api.dart';

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

  FieldDispatcher<BuiltList<GetUiSetupAllApiBizUnit>> get bizUnits;

  ListCaseTypesApi get listCaseTypes;

  FieldDispatcher<BuiltList<CaseType>> get caseTypes;

  ListHospitalsForSchedulingApi get listHospitals;

  FieldDispatcher<BuiltList<Hospital>> get hospitals;

  ListSurgeonPhysiciansForSchedulingApi get listPhysicians;

  FieldDispatcher<BuiltList<Physician>> get physicians;

  SearchHcrTeamsApi get searchHcrTeams;

  FieldDispatcher<BuiltList<HcrTeam>> get hcrTeams;

  ListProceduresForSearchApi get listProcedures;

  FieldDispatcher<BuiltList<ListProceduresForSearchApiProcedure>>
      get procedures;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CaseEventListFilterState get initialState$ => CaseEventListFilterState();

  ////////////////////////////////////
  /// Middleware
  ////////////////////////////////////

  @override
  void middleware$(AppMiddlewareBuilder builder) {
    super.middleware$(builder);
    builder.nest(this)
      ..add(
          bizUnits,
          (api, next, Action<BuiltList<GetUiSetupAllApiBizUnit>> action) =>
              request.bizUnitIds.value$ =
                  toListOrNull(action?.payload?.map((t) => t?.id)))
      ..add(
          caseTypes,
          (api, next, Action<BuiltList<CaseType>> action) => request.caseTypeIds.value$ =
              toListOrNull(action?.payload?.map((t) => t?.id)))
      ..add(
          hospitals,
          (api, next, Action<BuiltList<Hospital>> action) => request.facilityIds
              .value$ = toListOrNull(action?.payload?.map((t) => t?.id)))
      ..add(
          physicians,
          (api, next, Action<BuiltList<Physician>> action) => request.surgeonIds
              .value$ = toListOrNull(action?.payload?.map((t) => t?.id)))
      ..add(procedures, (api, next, Action<BuiltList<ListProceduresForSearchApiProcedure>> action) => request.procedureIds.value$ = toListOrNull(action?.payload?.map((t) => t?.id)))
      ..add(hcrTeams, (api, next, Action<BuiltList<HcrTeam>> action) => request.hcrIds.value$ = toListOrNull(action?.payload?.map((t) => t?.id)));
  }

  BuiltList<T> toListOrNull<T>(Iterable<T> iterable) {
    if (iterable == null) return null;
    return BuiltList<T>(iterable);
  }

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

  BuiltList<GetUiSetupAllApiBizUnit> get bizUnits;

  CommandState<ApiCommand<ListCaseTypesApiRequest>,
      ApiResult<ListCaseTypesApiResponse>> get listCaseTypes;

  BuiltList<CaseType> get caseTypes;

  CommandState<ApiCommand<ListHospitalsForSchedulingApiRequest>,
      ApiResult<ListHospitalsForSchedulingApiResponse>> get listHospitals;

  BuiltList<Hospital> get hospitals;

  CommandState<ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
          ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>
      get listPhysicians;

  BuiltList<Physician> get physicians;

  CommandState<ApiCommand<SearchHcrTeamsApiRequest>,
      ApiResult<SearchHcrTeamsApiResponse>> get listHcrTeams;

  BuiltList<HcrTeam> get hcrTeams;

  CommandState<ApiCommand<ListProceduresForSearchApiRequest>,
      ApiResult<ListProceduresForSearchApiResponse>> get listProcedures;

  BuiltList<ListProceduresForSearchApiProcedure> get procedures;

  CaseEventListFilterState._();

  factory CaseEventListFilterState(
          [updates(CaseEventListFilterStateBuilder b)]) =
      _$CaseEventListFilterState;

  static Serializer<CaseEventListFilterState> get serializer =>
      _$caseEventListFilterStateSerializer;
}
