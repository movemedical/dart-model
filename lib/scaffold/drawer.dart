import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

import '../auth/login.dart';
import '../foundation.dart';

part 'drawer.g.dart';
//import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class DrawerRoute extends ScreenRoute<DrawerState, DrawerStateBuilder,
    DrawerActions, DrawerRoute> {
  DrawerRoute._();

  factory DrawerRoute(DrawerRouteOptions options) = _$DrawerRoute;
}

////////////////////////////////
/// Actions
////////////////////////////////

abstract class DrawerActions
    extends ScreenActions<DrawerState, DrawerStateBuilder, DrawerActions> {
  FieldDispatcher<MobileNavigationElement> selectedTab;

  LoginRoute get loginRoute;

  @override
  DrawerState get $initial => DrawerState();

  @override
  MobileNavigationElement get $navElement => null;

  DrawerActions._();

  factory DrawerActions(DrawerActionsOptions options) = _$DrawerActions;
}

///
///
///
abstract class DrawerState implements Built<DrawerState, DrawerStateBuilder> {
  @nullable
  MobileNavigationElement get selectedTab;

  @nullable
  CommandState<RouteCommand<LoginState>, RouteResult<Null>> get loginRoute;

  DrawerState._();

  factory DrawerState([updates(DrawerStateBuilder b)]) => _$DrawerState((b) {
        updates?.call(b);
        b.selectedTab ??= MobileNavigationElement.DASHBOARD;
      });

  static Serializer<DrawerState> get serializer => _$drawerStateSerializer;
}
