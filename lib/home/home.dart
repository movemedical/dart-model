import '../foundation.dart';

import '../auth/login.dart';

import 'package:movemedical_api/model/sql/enums/mobile_dashboard_widget_type.dart';
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

part 'home.g.dart';

////////////////////////////////
/// Actions
////////////////////////////////

abstract class HomeActions
    extends AppStatefulActions<HomeState, HomeStateBuilder, HomeActions> {
  FieldDispatcher<MobileNavigationElement> selectedTab;

  LoginRoute get loginRoute;

  @override
  HomeState get $initial => HomeState();

  HomeActions._();

  factory HomeActions(HomeActionsOptions options) = _$HomeActions;
}

///
///
///
abstract class HomeState implements Built<HomeState, HomeStateBuilder> {
  MobileNavigationElement get selectedTab;

  CommandState<RouteCommand<LoginState>, RouteResult<Null>> get loginRoute;

  HomeState._();

  factory HomeState([updates(HomeStateBuilder b)]) => _$HomeState((b) {
        if (updates != null) updates(b);
        if (b.selectedTab == null)
          b.selectedTab = MobileNavigationElement.DASHBOARD;
      });

  static Serializer<HomeState> get serializer => _$homeStateSerializer;
}
