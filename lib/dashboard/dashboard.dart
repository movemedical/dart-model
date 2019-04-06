import '../foundation.dart';

import '../auth/login.dart';

import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart';
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

part 'dashboard.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class DashboardRoute extends ScreenRoute<DashboardState,
    DashboardStateBuilder, DashboardActions, DashboardRoute> {
  DashboardRoute._();

  factory DashboardRoute(DashboardRouteOptions options) = _$DashboardRoute;
}

////////////////////////////////
/// Actions
////////////////////////////////

abstract class DashboardActions extends ScreenActions<DashboardState,
    DashboardStateBuilder, DashboardActions, DashboardRoute> {
  @override
  MobileNavigationElement get $navElement => MobileNavigationElement.DASHBOARD;

  @override
  DashboardState get $initial => DashboardState();

  DashboardActions._();

  factory DashboardActions(DashboardActionsOptions options) =
      _$DashboardActions;
}

///
///
///
abstract class DashboardState
    implements Built<DashboardState, DashboardStateBuilder> {
  DashboardState._();

  factory DashboardState([void updates(DashboardStateBuilder b)]) =>
      _$DashboardState((b) {
        updates?.call(b);
      });

  static Serializer<DashboardState> get serializer =>
      _$dashboardStateSerializer;
}
