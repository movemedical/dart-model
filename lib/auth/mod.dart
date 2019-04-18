import '../foundation.dart';
import 'login.dart';

part 'mod.g.dart';

abstract class AuthModuleActions extends StateActions<AuthModuleState,
    AuthModuleStateBuilder, AuthModuleActions> {
  LoginActions get login;

  LoginRoute get loginRoute;

  AuthModuleState get initialState$ =>
      AuthModuleState((b) => b..login = login.initialBuilder$);

  AuthModuleActions._();

  factory AuthModuleActions(AuthModuleActionsOptions options) =
      _$AuthModuleActions;
}

abstract class AuthModuleState
    implements Built<AuthModuleState, AuthModuleStateBuilder> {
  LoginState get login;

  @nullable
  CommandState<RouteCommand<LoginState>, RouteResult<Nothing>> get loginRoute;

  AuthModuleState._();

  factory AuthModuleState([updates(AuthModuleStateBuilder b)]) =
      _$AuthModuleState;

  static Serializer<AuthModuleState> get serializer =>
      _$authModuleStateSerializer;
}
