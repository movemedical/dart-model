import '../foundation.dart';
import 'detail.dart';
import 'list.dart';
import 'list_filter.dart';

part 'mod.g.dart';

abstract class SchedulingModuleActions extends StateActions<
    SchedulingModuleState,
    SchedulingModuleStateBuilder,
    SchedulingModuleActions> {
  CaseEventListActions get list;

  CaseEventListFilterActions get listFilter;

  CaseEventDetailActions get detail;

  SchedulingModuleActions._();

  factory SchedulingModuleActions(SchedulingModuleActionsOptions options) =
      _$SchedulingModuleActions;
}

abstract class SchedulingModuleState
    implements Built<SchedulingModuleState, SchedulingModuleStateBuilder> {
  @nullable
  CaseEventListState get list;

  @nullable
  CaseEventListFilterState get listFilter;

  @nullable
  CaseEventDetailState get detail;

  SchedulingModuleState._();

  factory SchedulingModuleState([updates(SchedulingModuleStateBuilder b)]) =
      _$SchedulingModuleState;

  static Serializer<SchedulingModuleState> get serializer =>
      _$schedulingModuleStateSerializer;
}
