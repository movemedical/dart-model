import '../foundation.dart';

import 'login.dart';

part 'mod.g.dart';

abstract class AuthActions
    extends AppStatefulActions<AuthState, AuthStateBuilder, AuthActions> {
  LoginActions get login;

  AuthState get $initial =>
      AuthState((b) => b..login = login.$initial.toBuilder());

  AuthActions._();

  factory AuthActions(AuthActionsOptions options) = _$AuthActions;
}

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  LoginState get login;

  AuthState._();

  factory AuthState([updates(AuthStateBuilder b)]) = _$AuthState;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
