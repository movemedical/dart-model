import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

import '../foundation.dart';

part 'bottom_bar.g.dart';
//import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart';

////////////////////////////////
/// Actions
////////////////////////////////

abstract class BottomBarActions extends StateActions<BottomBarState,
    BottomBarStateBuilder, BottomBarActions> {
  FieldDispatcher<MobileNavigationElement> get selectedTab;

  @override
  BottomBarState get initialState$ => BottomBarState();

  BottomBarActions._();

  factory BottomBarActions(BottomBarActionsOptions options) =
      _$BottomBarActions;
}

///
///
///
abstract class BottomBarState
    implements Built<BottomBarState, BottomBarStateBuilder> {
  @nullable
  MobileNavigationElement get selectedTab;

  BottomBarState._();

  factory BottomBarState([updates(BottomBarStateBuilder b)]) =>
      _$BottomBarState((b) {
        updates?.call(b);
        b.selectedTab ??= MobileNavigationElement.DASHBOARD;
      });

  static Serializer<BottomBarState> get serializer =>
      _$bottomBarStateSerializer;
}
