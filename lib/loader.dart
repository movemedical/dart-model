import 'foundation.dart';
import 'auth/login.dart';
import 'dashboard/dashboard.dart';

part 'loader.g.dart';

////////////////////////////////
/// Actions
////////////////////////////////

abstract class LoaderActions
    extends StateActions<LoaderState, LoaderStateBuilder, LoaderActions> {
  LoginRoute get gotoLogin;

  DashboardRoute get gotoDashboard;

  @override
  void $middleware(AppMiddlewareBuilder builder) {
    super.$middleware(builder);
  }

  LoaderActions._();

  factory LoaderActions(LoaderActionsOptions options) = _$LoaderActions;
}

////////////////////////////////
/// State
////////////////////////////////

abstract class LoaderState implements Built<LoaderState, LoaderStateBuilder> {
  CommandState<RouteCommand<LoginState>, RouteResult<Null>> get gotoLogin;

  CommandState<RouteCommand<DashboardState>, RouteResult<Null>>
      get gotoDashboard;

  LoaderState._();

  factory LoaderState([updates(LoaderStateBuilder b)]) = _$LoaderState;

  static Serializer<LoaderState> get serializer => _$loaderStateSerializer;
}
