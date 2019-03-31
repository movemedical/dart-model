library app;

import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_response.dart';

import 'foundation.dart';
import 'nav.dart';

export 'nav.dart';

part 'app.g.dart';

abstract class AppActions
    extends AppStatefulActions<AppState, AppStateBuilder, AppActions> {
  ApiActions get api;

  NavActions get nav;

  ////////////////////
  /// Actions
  ////////////////////

  ActionDispatcher<Null> get reset;

  @override
  AppState get $initial => (AppStateBuilder()
        ..api = ApiState().toBuilder()
        ..nav = NavState().toBuilder())
      .build();

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
  }

  ////////////////////
  /// Reducer
  ////////////////////
  @override
  Reducer<AppState, AppStateBuilder, dynamic> $createReducer() {
    final b = AppReducerBuilder();
    $reducer(b);
    return b.build();
  }

  ////////////////////
  /// Middleware
  ////////////////////
  @override
  Middleware<AppState, AppStateBuilder, AppActions> $createMiddleware() {
    final b = AppMiddlewareBuilder();
    $middleware(b);
    return b.build();
  }

  AppActions._();

  factory AppActions() => _$AppActions(() =>
      StatefulActionsOptions.root<AppState, AppStateBuilder, AppActions>());
}

////////////////////
/// State
////////////////////

abstract class AppState implements Built<AppState, AppStateBuilder> {
  ApiState get api;

  NavState get nav;

  ////////////////////
  /// Computed
  ////////////////////

  bool get isLoggedIn => api?.activeLogin != null;

  bool get isLoggingIn => api?.isLoggingIn ?? false;

  LoginResponse get session => api?.activeLogin;

  GetUiSetupMobileApiResponse get setup => api?.activeSetup;

  AppState._();

  factory AppState([updates(AppStateBuilder b)]) = _$AppState;

  factory AppState.initial() => (AppStateBuilder()
        ..api = ApiState().toBuilder()
        ..nav = NavState().toBuilder())
      .build();

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
