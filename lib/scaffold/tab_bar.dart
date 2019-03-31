import '../foundation.dart';

import '../auth/login.dart';

//import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart';
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

part 'tab_bar.g.dart';

////////////////////////////////
/// Actions
////////////////////////////////

abstract class TabBarActions
    extends AppStatefulActions<TabBarState, TabBarStateBuilder, TabBarActions> {
  FieldDispatcher<MobileNavigationElement> selectedTab;

  @override
  TabBarState get $initial => TabBarState();

  TabBarActions._();

  factory TabBarActions(TabBarActionsOptions options) = _$TabBarActions;
}

///
///
///
abstract class TabBarState implements Built<TabBarState, TabBarStateBuilder> {
  MobileNavigationElement get selectedTab;

  TabBarState._();

  factory TabBarState([updates(TabBarStateBuilder b)]) => _$TabBarState((b) {
        if (updates != null) updates(b);
        if (b.selectedTab == null)
          b.selectedTab = MobileNavigationElement.DASHBOARD;
      });

  static Serializer<TabBarState> get serializer => _$tabBarStateSerializer;
}
