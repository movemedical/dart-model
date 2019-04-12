import 'package:movemedical_api/command.dart';

import '../dashboard/dashboard.dart';
import '../foundation.dart';

part 'login.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class LoginRoute extends ScreenRoute<LoginState, LoginStateBuilder,
    LoginActions, LoginRoute> {
  LoginRoute._();

  factory LoginRoute(LoginRouteOptions options) = _$LoginRoute;
}

////////////////////////////////
/// Actions
////////////////////////////////

abstract class LoginActions extends ScreenActions<LoginState, LoginStateBuilder,
    LoginActions, LoginRoute> {
  LoginRequestActions get request;

  DashboardRoute get dashboardRoute;

  @override
  MobileNavigationElement get $navElement => null;

  @override
  LoginState get $initial =>
      LoginState.of(email: '', password: '', session: '');

  LoginActions._();

  factory LoginActions(LoginActionsOptions options) = _$LoginActions;
}

////////////////////////////////
/// State
////////////////////////////////

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  LoginRequest get request;

  CommandState<RouteCommand<DashboardState>, RouteResult<Nothing>>
      get dashboardRoute;

  factory LoginState.of({String email, String password, String session}) =>
      (LoginStateBuilder()
            ..request = (LoginRequestBuilder()
              ..email = email
              ..password = password
              ..session = session))
          .build();

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  static Serializer<LoginState> get serializer => _$loginStateSerializer;
}
