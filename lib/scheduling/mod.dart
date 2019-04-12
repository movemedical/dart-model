import '../foundation.dart';
import 'case_event/create.dart';
import 'case_event/detail.dart';
import 'case_event/list.dart';
import 'case_event/list_filter.dart';

part 'mod.g.dart';

abstract class SchedulingModuleActions extends StateActions<
    SchedulingModuleState,
    SchedulingModuleStateBuilder,
    SchedulingModuleActions> {
  CaseEventListActions get caseEventList;

  CaseEventListRoute get caseEventListRoute;

  CaseEventListFilterActions get caseEventListFilter;

  CaseEventListFilterRoute get caseEventListFilterRoute;

  CreateCaseEventActions get createCaseEvent;

  CreateCaseEventRoute get createCaseEventRoute;

  CaseEventDetailActions get caseEventDetail;

  CaseEventDetailRoute get caseEventDetailRoute;

  SchedulingModuleActions._();

  factory SchedulingModuleActions(SchedulingModuleActionsOptions options) =
      _$SchedulingModuleActions;
}

abstract class SchedulingModuleState
    implements Built<SchedulingModuleState, SchedulingModuleStateBuilder> {
  @nullable
  CaseEventListState get caseEventList;

  @nullable
  CommandState<RouteCommand<CaseEventListState>, RouteResult<Nothing>>
      get caseEventListRoute;

  @nullable
  CaseEventListFilterState get caseEventListFilter;

  @nullable
  CommandState<RouteCommand<CaseEventListFilterState>,
      RouteResult<ListCaseEventsApiRequest>> get caseEventListFilterRoute;

  @nullable
  CreateCaseEventState get createCaseEvent;

  @nullable
  CommandState<RouteCommand<CreateCaseEventState>,
      RouteResult<CreateCaseEventApiResponse>> get createCaseEventRoute;

  @nullable
  CaseEventDetailState get caseEventDetail;

  @nullable
  CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Nothing>>
      get caseEventDetailRoute;

  SchedulingModuleState._();

  factory SchedulingModuleState([updates(SchedulingModuleStateBuilder b)]) =
      _$SchedulingModuleState;

  static Serializer<SchedulingModuleState> get serializer =>
      _$schedulingModuleStateSerializer;
}
