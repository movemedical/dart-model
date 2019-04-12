import '../foundation.dart';

import '../auth/login.dart';

//import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart';
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

import '../dashboard/dashboard.dart';
import '../messages/list.dart';

part 'bottom_bar.g.dart';

////////////////////////////////
/// Actions
////////////////////////////////

abstract class BottomBarActions extends StateActions<BottomBarState,
    BottomBarStateBuilder, BottomBarActions> {
  FieldDispatcher<MobileNavigationElement> get selectedTab;

  DashboardRoute get gotoDashboard;

  ConversationListRoute get gotoConversationList;

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
  @nullable
  MobileNavigationElement get selectedTab;

  @nullable
  CommandState<RouteCommand<DashboardState>, RouteResult<Empty>>
      get gotoDashboard;

  @nullable
  CommandState<RouteCommand<ConversationListState>, RouteResult<Empty>>
      get gotoConversationList;

  BottomBarState._();

  factory BottomBarState([updates(BottomBarStateBuilder b)]) =>
      _$BottomBarState((b) {
        updates?.call(b);
        b.selectedTab ??= MobileNavigationElement.DASHBOARD;
      });

  static Serializer<BottomBarState> get serializer =>
      _$bottomBarStateSerializer;
}
