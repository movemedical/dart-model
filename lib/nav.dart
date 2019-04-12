library nav;

import 'auth/mod.dart';
import 'dashboard/mod.dart';
import 'directory/mod.dart';
import 'foundation.dart';
import 'messaging/mod.dart';
import 'scaffold/scaffold.dart';
import 'scheduling/mod.dart';
import 'splash.dart';

part 'nav.g.dart';

///
abstract class NavActions
    extends StateActions<NavState, NavStateBuilder, NavActions>
    implements HasRouterActions {
  FieldDispatcher<BuiltList<String>> get stack;

  @override
  NavState get $initial => NavState((b) => b..stack = ListBuilder());

  ////////////////////
  /// Modules
  ////////////////////

  SplashActions get splash;

  SplashRoute get splashRoute;

  ScaffoldActions get scaffold;

  DashboardModuleActions get dashboard;

  AuthModuleActions get auth;

  SchedulingModuleActions get scheduling;

  MessagingModuleActions get messaging;

  DirectoryModuleActions get directory;

  NavActions._();

  factory NavActions(NavActionsOptions options) = _$NavActions;
}

///
abstract class NavState
    implements Built<NavState, NavStateBuilder>, HasRouterState {
  /// Stack of RouteAction names that act as keys for the current
  /// RouteController stack.
  @nullable
  BuiltList<String> get stack;

  ////////////////////
  /// Modules
  ////////////////////

  @nullable
  SplashState get splash;

  @nullable
  CommandState<RouteCommand<SplashState>, RouteResult<Nothing>> get splashRoute;

  @nullable
  ScaffoldState get scaffold;

  @nullable
  DashboardModuleState get dashboard;

  @nullable
  AuthModuleState get auth;

  @nullable
  SchedulingModuleState get scheduling;

  @nullable
  MessagingModuleState get messaging;

  @nullable
  DirectoryModuleState get directory;

  NavState._();

  factory NavState([updates(NavStateBuilder b)]) => _$NavState((b) {
        updates?.call(b);
        b.stack ??= ListBuilder<String>();
        b.scaffold ??= ScaffoldState().toBuilder();
      });

  static Serializer<NavState> get serializer => _$navStateSerializer;
}
