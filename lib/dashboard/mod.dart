import '../foundation.dart';

import 'dashboard.dart';

part 'mod.g.dart';

abstract class DashboardModuleActions extends StateActions<DashboardModuleState,
    DashboardModuleStateBuilder, DashboardModuleActions> {
  DashboardActions get dashboard;

  DashboardRoute get dashboardRoute;

  DashboardModuleActions._();

  factory DashboardModuleActions(DashboardModuleActionsOptions options) =
      _$DashboardModuleActions;
}

abstract class DashboardModuleState
    implements Built<DashboardModuleState, DashboardModuleStateBuilder> {
  @nullable
  DashboardState get dashboard;

  @nullable
  CommandState<RouteCommand<DashboardState>, RouteResult<Nothing>>
      get dashboardRoute;

  DashboardModuleState._();

  factory DashboardModuleState([updates(DashboardModuleStateBuilder b)]) =
      _$DashboardModuleState;

  static Serializer<DashboardModuleState> get serializer =>
      _$dashboardModuleStateSerializer;
}
