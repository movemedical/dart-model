import '../foundation.dart';

import '../auth/login.dart';

//import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart';
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

part 'bottom_bar.g.dart';

////////////////////////////////
/// Actions
////////////////////////////////

abstract class BottomBarActions extends AppStatefulActions<BottomBarState,
    BottomBarStateBuilder, BottomBarActions> {
  FieldDispatcher<MobileNavigationElement> selectedTab;

  @override
  BottomBarState get $initial => BottomBarState();

  BottomBarActions._();

  factory BottomBarActions(BottomBarActionsOptions options) =
      _$BottomBarActions;
}

///
///
///
abstract class BottomBarState
    implements Built<BottomBarState, BottomBarStateBuilder> {
  MobileNavigationElement get selectedTab;

  BottomBarState._();

  factory BottomBarState([updates(BottomBarStateBuilder b)]) =>
      _$BottomBarState((b) {
        if (updates != null) updates(b);
        if (b.selectedTab == null)
          b.selectedTab = MobileNavigationElement.DASHBOARD;
      });

  static Serializer<BottomBarState> get serializer =>
      _$bottomBarStateSerializer;
}
