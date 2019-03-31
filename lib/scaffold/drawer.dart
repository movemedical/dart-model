import '../foundation.dart';

import '../auth/login.dart';

//import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart';
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

part 'drawer.g.dart';

////////////////////////////////
/// Actions
////////////////////////////////

abstract class DrawerActions
    extends AppStatefulActions<DrawerState, DrawerStateBuilder, DrawerActions> {
  FieldDispatcher<MobileNavigationElement> selectedTab;

  LoginRoute get loginRoute;

  @override
  DrawerState get $initial => DrawerState();

  DrawerActions._();

  factory DrawerActions(DrawerActionsOptions options) = _$DrawerActions;
}

///
///
///
abstract class DrawerState implements Built<DrawerState, DrawerStateBuilder> {
  MobileNavigationElement get selectedTab;

  CommandState<RouteCommand<LoginState>, RouteResult<Null>> get loginRoute;

  DrawerState._();

  factory DrawerState([updates(DrawerStateBuilder b)]) => _$DrawerState((b) {
        if (updates != null) updates(b);
        if (b.selectedTab == null)
          b.selectedTab = MobileNavigationElement.DASHBOARD;
      });

  static Serializer<DrawerState> get serializer => _$drawerStateSerializer;
}
