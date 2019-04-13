import 'auth/login.dart';
import 'dashboard/dashboard.dart';
import 'foundation.dart';

part 'splash.g.dart';

abstract class SplashRoute extends ScreenRoute<SplashState, SplashStateBuilder,
    SplashActions, SplashRoute> {
  SplashRoute._();

  factory SplashRoute(SplashRouteOptions options) = _$SplashRoute;
}

////////////////////////////////
/// Actions
////////////////////////////////

abstract class SplashActions
    extends ScreenActions<SplashState, SplashStateBuilder, SplashActions> {
  LoginRoute get gotoLogin;

  DashboardRoute get gotoDashboard;

  @override
  MobileNavigationElement get $navElement => null;

  @override
  void $middleware(AppMiddlewareBuilder builder) {
    super.$middleware(builder);
  }

  SplashActions._();

  factory SplashActions(SplashActionsOptions options) = _$SplashActions;
}

////////////////////////////////
/// State
////////////////////////////////

abstract class SplashState implements Built<SplashState, SplashStateBuilder> {
  CommandState<RouteCommand<LoginState>, RouteResult<Null>> get gotoLogin;

  CommandState<RouteCommand<DashboardState>, RouteResult<Null>>
      get gotoDashboard;

  SplashState._();

  factory SplashState([updates(SplashStateBuilder b)]) = _$SplashState;

  static Serializer<SplashState> get serializer => _$splashStateSerializer;
}
