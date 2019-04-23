import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/state/action/case_event/create_case_event_api.dart';
import 'package:movemedical_api/state/action/case_event/list_case_types_api.dart';
import 'package:movemedical_api/state/action/case_event/list_procedures_for_scheduling_api.dart';
import 'package:movemedical_api/state/action/case_event/list_sub_procedures_api.dart';
import 'package:movemedical_api/state/action/case_event/list_surgeon_physicians_for_scheduling_api.dart';
import 'package:movemedical_api/state/action/case_event/list_hcr_matrix_api.dart';
import 'package:movemedical_api/state/action/case_event/list_hospitals_for_scheduling_api.dart';
import 'package:movemedical_api/state/action/directory/search_hcr_teams_api.dart';
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart';
import 'package:movemedical_api/model/procedure.dart';
import 'package:movemedical_api/model/sub_procedure.dart';
import 'package:movemedical_api/model/physician.dart';
import 'package:movemedical_api/model/hcr_team.dart';
import 'package:movemedical_api/model/case_type.dart';
import 'package:movemedical_api/model/remove_or_refactor/hospital.dart';

import '../../foundation.dart';

export 'package:movemedical_api/state/action/case_event/create_case_event_api.dart';
export 'package:movemedical_api/state/action/case_event/create_case_event_api.dart';
export 'package:movemedical_api/state/action/case_event/list_case_types_api.dart';
export 'package:movemedical_api/state/action/case_event/list_procedures_for_scheduling_api.dart';
export 'package:movemedical_api/state/action/case_event/list_sub_procedures_api.dart';
export 'package:movemedical_api/state/action/case_event/list_surgeon_physicians_for_scheduling_api.dart';
export 'package:movemedical_api/state/action/case_event/list_hcr_matrix_api.dart';
export 'package:movemedical_api/state/action/case_event/list_hospitals_for_scheduling_api.dart';
export 'package:movemedical_api/state/action/directory/search_hcr_teams_api.dart';
export 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart';
export 'package:movemedical_api/model/procedure.dart';
export 'package:movemedical_api/model/sub_procedure.dart';
export 'package:movemedical_api/model/physician.dart';
export 'package:movemedical_api/model/hcr_team.dart';
export 'package:movemedical_api/model/case_type.dart';
export 'package:movemedical_api/model/remove_or_refactor/hospital.dart';

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
    CreateCaseEventActions> {
  CreateCaseEventApiRequestActions get request;

  FieldDispatcher<GetUiSetupAllApiBizUnit> get bizUnit;

  FieldDispatcher<CaseType> get caseType;

  FieldDispatcher<Procedure> get procedure;

  FieldDispatcher<SubProcedure> get subProcedure;

  FieldDispatcher<Physician> get physician;

  FieldDispatcher<Hospital> get hospital;

  FieldDispatcher<HcrTeam> get hcrTeam;

  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

  CreateCaseEventApi get create;

  ListCaseTypesApi get listCaseTypes;

  ListSurgeonPhysiciansForSchedulingApi get listSurgeonPhysicians;

  ListHospitalsForSchedulingApi get listHospitals;

  SearchHcrTeamsApi get searchHcrTeams;

  ListProceduresForSchedulingApi get listProcedures;

  ListSubProceduresApi get listSubProcedures;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  CreateCaseEventState get initialState$ => CreateCaseEventState((b) => b);

  ////////////////////////////////////
  /// Middleware
  ////////////////////////////////////

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);

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
  GetUiSetupAllApiBizUnit get bizUnit;

  @nullable
  CaseType get caseType;

  @nullable
  Procedure get procedure;

  @nullable
  SubProcedure get subProcedure;

  @nullable
  Physician get physician;

  @nullable
  Hospital get hospital;

  @nullable
  HcrTeam get hcrTeam;

  @nullable
  CommandState<ApiCommand<CreateCaseEventApiRequest>,
      ApiResult<CreateCaseEventApiResponse>> get create;

  @nullable
  CommandState<ApiCommand<SearchHcrTeamsApiRequest>,
      ApiResult<SearchHcrTeamsApiResponse>> get searchHcrTeams;

  @nullable
  CommandState<ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
          ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>
      get listSurgeonPhysicians;

  @nullable
  CommandState<ApiCommand<ListHospitalsForSchedulingApiRequest>,
      ApiResult<ListHospitalsForSchedulingApiResponse>> get listHospitals;

  @nullable
  CommandState<ApiCommand<ListProceduresForSchedulingApiRequest>,
      ApiResult<ListProceduresForSchedulingApiResponse>> get listProcedures;

  @nullable
  CommandState<ApiCommand<ListSubProceduresApiRequest>,
      ApiResult<ListSubProceduresApiResponse>> get listSubProcedures;

  @nullable
  CommandState<ApiCommand<ListCaseTypesApiRequest>,
      ApiResult<ListCaseTypesApiResponse>> get listCaseTypes;

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  CreateCaseEventState._();

  factory CreateCaseEventState([updates(CreateCaseEventStateBuilder b)]) =>
      _$CreateCaseEventState((b) {
        updates?.call(b);
        b.request ??= CreateCaseEventApiRequest().toBuilder();
      });

  static Serializer<CreateCaseEventState> get serializer =>
      _$createCaseEventStateSerializer;
}
