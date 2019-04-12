library nav;

import 'dart:collection';

import 'foundation.dart';

import 'scaffold/scaffold.dart';
import 'auth/mod.dart';
import 'schedule/mod.dart';
import 'messages/mod.dart';
import 'directory/mod.dart';
import 'splash.dart';
import 'dashboard/dashboard.dart';

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

  SplashRoute get gotoSplash;

  SplashActions get splash;

  ScaffoldActions get scaffold;

  DashboardActions get dashboard;

  AuthActions get auth;

  ScheduleActions get schedule;

  MessagesActions get messages;

  DirectoryActions get dir;

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

  @nullable
  CommandState<RouteCommand<SplashState>, RouteResult<Empty>> get gotoSplash;

  ////////////////////
  /// Modules
  ////////////////////

  @nullable
  SplashState get splash;

  @nullable
  ScaffoldState get scaffold;

  @nullable
  DashboardState get dashboard;

  @nullable
  AuthState get auth;

  @nullable
  ScheduleState get schedule;

  @nullable
  MessagesState get messages;

  @nullable
  DirectoryState get dir;

  NavState._();

  factory NavState([updates(NavStateBuilder b)]) => _$NavState((b) {
        updates?.call(b);
        b.stack ??= ListBuilder<String>();
        b.scaffold ??= ScaffoldState().toBuilder();
      });

  static Serializer<NavState> get serializer => _$navStateSerializer;
}
