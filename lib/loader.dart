import 'auth/login.dart';
import 'home/home.dart';
import 'foundation.dart';

part 'loader.g.dart';

////////////////////////////////
/// Actions
////////////////////////////////

abstract class LoaderActions
    extends AppStatefulActions<LoaderState, LoaderStateBuilder, LoaderActions> {
  LoginRoute get loginRoute;

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
  CommandState<RouteCommand<LoginState>, RouteResult<Null>> get loginRoute;

  LoaderState._();

  factory LoaderState([updates(LoaderStateBuilder b)]) = _$LoaderState;

  static Serializer<LoaderState> get serializer => _$loaderStateSerializer;
}
