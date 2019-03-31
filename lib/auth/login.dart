import '../foundation.dart';

import 'package:movemedical_api/command.dart';

part 'login.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class LoginRoute extends RouteDispatcher<LoginState, LoginStateBuilder,
    Null, LoginActions, LoginRoute> {
  LoginRoute._();

  factory LoginRoute(LoginRouteOptions options) = _$LoginRoute;
}

////////////////////////////////
/// Actions
////////////////////////////////

abstract class LoginActions extends AppRouteActions<LoginState,
    LoginStateBuilder, Null, LoginActions, LoginRoute> {
  LoginRequestActions get request;

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
