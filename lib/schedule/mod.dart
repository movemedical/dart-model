import '../foundation.dart';
import 'detail.dart';
import 'list.dart';
import 'list_filter.dart';

part 'mod.g.dart';

abstract class ScheduleActions
    extends StateActions<ScheduleState, ScheduleStateBuilder, ScheduleActions> {
  CaseEventListActions get list;

  CaseEventListFilterActions get listFilter;

  CaseEventDetailActions get detail;

  ScheduleActions._();

  factory ScheduleActions(ScheduleActionsOptions options) = _$ScheduleActions;
}

abstract class ScheduleState
    implements Built<ScheduleState, ScheduleStateBuilder> {
  @nullable
  CaseEventListState get list;

  @nullable
  CaseEventListFilterState get listFilter;

  @nullable
  CaseEventDetailState get detail;

  ScheduleState._();

  factory ScheduleState([updates(ScheduleStateBuilder b)]) = _$ScheduleState;

  static Serializer<ScheduleState> get serializer => _$scheduleStateSerializer;
}
