library app;

import 'package:movemedical_api/command.dart';
import 'package:movemedical_api/model/action/user/get_ui_setup_mobile_api_response.dart';
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_biz_unit.dart';
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_user.dart';
import 'package:movemedical_api/model/action/user/get_ui_setup_all_api_response.dart';

import 'foundation.dart';
import 'nav.dart';

export 'nav.dart';

part 'app.g.dart';

abstract class AppActions
    extends StateActions<AppState, AppStateBuilder, AppActions> {
  ApiActions get api;

  NavActions get nav;

  ////////////////////
  /// Actions
  ////////////////////

  ActionDispatcher<Null> get reset;

  @override
  AppState get initialState$ => (AppStateBuilder()
        ..api = ApiState().toBuilder()
        ..nav = NavState().toBuilder())
      .build();

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
  }

  @override
  Reducer<AppState, AppStateBuilder, dynamic> createReducer$() {
    final b = AppReducerBuilder();
    reducer$(b);
    return b.build();
  }

  @override
  Middleware<AppState, AppStateBuilder, AppActions> createMiddleware$() {
    final b = AppMiddlewareBuilder();
    middleware$(b);
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

  ////////////////////////////////////////////////////////////
  /// User / Session
  ////////////////////////////////////////////////////////////

  bool get isLoggedIn => api?.activeLogin?.moveSessionId != null;

  bool get isLoggingIn => api?.loginCommand?.isInProgress ?? false;

  LoginResponse get session => api?.activeLogin;

  GetUiSetupMobileApiResponse get setup => api?.activeSetup;

  GetUiSetupAllApiBizUnit get defaultBizUnit => user?.orgInfo?.defaultBizUnit;

  BuiltList<GetUiSetupAllApiBizUnit> get bizUnits =>
      api?.activeSetup?.uiSetup?.user?.orgInfo?.bizUnits ?? BuiltList();

  GetUiSetupAllApiUser get user => api?.activeSetup?.uiSetup?.user;

  GetUiSetupAllApiResponse get uiSetup => api?.activeSetup?.uiSetup;

  /////////////////////
  /// Construction
  /////////////////////
  AppState._();

  factory AppState([updates(AppStateBuilder b)]) => _$AppState((b) {
        updates?.call(b);
        b.api ??= ApiState().toBuilder();
        b.nav ??= NavState().toBuilder();
      });

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
