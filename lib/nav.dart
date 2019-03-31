library nav;

import 'dart:collection';

import 'foundation.dart';

import 'auth/mod.dart';
import 'home/home.dart';
import 'schedule/mod.dart';
import 'messages/mod.dart';
import 'directory/mod.dart';

part 'nav.g.dart';

///
abstract class NavActions
    extends AppStatefulActions<NavState, NavStateBuilder, NavActions>
    implements HasRouterActions {
  FieldDispatcher<BuiltList<String>> get stack;

  @override
  NavState get $initial => NavState((b) => b..stack = ListBuilder());

  ////////////////////
  /// Modules
  ////////////////////

  AuthActions get auth;

  HomeActions get home;

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

  ////////////////////
  /// Modules
  ////////////////////

  @nullable
  AuthState get auth;

  @nullable
  HomeState get home;

  @nullable
  ScheduleState get schedule;

  @nullable
  MessagesState get messages;

  @nullable
  DirectoryState get dir;

  NavState._();

  factory NavState([updates(NavStateBuilder b)]) = _$NavState;

  static Serializer<NavState> get serializer => _$navStateSerializer;
}
