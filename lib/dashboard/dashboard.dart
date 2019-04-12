import '../foundation.dart';

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
