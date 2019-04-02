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

abstract class ScaffoldActions extends AppStatefulActions<ScaffoldState,
    ScaffoldStateBuilder, ScaffoldActions> {
  DrawerActions get drawer;

  BottomBarActions get tabBar;

  FieldDispatcher<MobileNavigationElement> selectedTab;

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

  BottomBarState get tabBar;

  MobileNavigationElement get selectedTab;

  CommandState<RouteCommand<LoginState>, RouteResult<Null>> get loginRoute;

  ScaffoldState._();

  factory ScaffoldState([updates(ScaffoldStateBuilder b)]) =>
      _$ScaffoldState((b) {
        if (updates != null) updates(b);
        if (b.selectedTab == null)
          b.selectedTab = MobileNavigationElement.DASHBOARD;
      });

  static Serializer<ScaffoldState> get serializer => _$scaffoldStateSerializer;
}
