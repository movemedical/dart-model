import '../foundation.dart';

import '../auth/login.dart';

//import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart';
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

import 'drawer.dart';
import 'bottom_bar.dart';

part 'scaffold.g.dart';

////////////////////////////////
/// Actions
////////////////////////////////

abstract class ScaffoldActions
    extends StateActions<ScaffoldState, ScaffoldStateBuilder, ScaffoldActions> {
  DrawerActions get drawer;

  BottomBarActions get bottomBar;

  LoginRoute get loginRoute;

  @override
  ScaffoldState get $initial => ScaffoldState();

  ScaffoldActions._();

  factory ScaffoldActions(ScaffoldActionsOptions options) = _$ScaffoldActions;
}

///
///
///
abstract class ScaffoldState
    implements Built<ScaffoldState, ScaffoldStateBuilder> {
  DrawerState get drawer;

  BottomBarState get bottomBar;

  CommandState<RouteCommand<LoginState>, RouteResult<Null>> get loginRoute;

  ScaffoldState._();

  factory ScaffoldState([updates(ScaffoldStateBuilder b)]) =>
      _$ScaffoldState((b) {
        if (b.drawer == null) b.drawer = DrawerState().toBuilder();
        if (b.drawer.selectedTab == null)
          b.drawer.selectedTab = MobileNavigationElement.DASHBOARD;
        if (b.bottomBar == null) b.bottomBar = BottomBarState().toBuilder();
        if (b.bottomBar.selectedTab == null)
          b.bottomBar.selectedTab = b.drawer.selectedTab;
        updates?.call(b);
      });

  static Serializer<ScaffoldState> get serializer => _$scaffoldStateSerializer;
}
