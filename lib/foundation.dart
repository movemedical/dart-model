import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:modux/modux.dart';
import 'app.dart';

import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

export 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';
export 'package:built_collection/built_collection.dart';
export 'package:built_value/built_value.dart';
export 'package:built_value/serializer.dart';
export 'package:meta/meta.dart';
export 'package:modux/modux.dart';

export 'app.dart';
export 'nav.dart';

part 'foundation.g.dart';

///
///
///
class AppMiddlewareBuilder
    extends MiddlewareBuilder<AppState, AppStateBuilder, AppActions> {
  @override
  void add<Payload>(
      ActionName<Payload> aMgr,
      MiddlewareHandler<AppState, AppStateBuilder, AppActions, Payload>
          handler) {
    super.add(aMgr, handler);
  }
}

///
///
///
class AppReducerBuilder extends ReducerBuilder<AppState, AppStateBuilder> {
  @override
  void add<Payload>(ActionName<Payload> actionName,
      Reducer<AppState, AppStateBuilder, Payload> reducer) {
    super.add(actionName, reducer);
  }
}

///
///
///
class AppNestedReducerBuilder<
        NestedState extends Built<NestedState, NestedStateBuilder>,
        NestedStateBuilder extends Builder<NestedState, NestedStateBuilder>>
    extends NestedReducerBuilder<AppState, AppStateBuilder, NestedState,
        NestedStateBuilder> {
  AppNestedReducerBuilder(
      AppReducerBuilder builder,
      NestedState Function(AppState) stateMapper,
      NestedStateBuilder Function(AppStateBuilder) builderMapper)
      : super(builder, stateMapper, builderMapper);
}

///
///
///
class AppNestedMiddlewareBuilder<
    NestedState extends Built<NestedState, NestedStateBuilder>,
    NestedStateBuilder extends Builder<NestedState, NestedStateBuilder>,
    NestedActions extends AppStatefulActions<NestedState, NestedStateBuilder,
        NestedActions>> extends NestedMiddlewareBuilder<
    AppState,
    AppStateBuilder,
    AppActions,
    NestedState,
    NestedStateBuilder,
    NestedActions> {
  AppNestedMiddlewareBuilder(
      AppMiddlewareBuilder builder,
      NestedState Function(AppState) stateMapper,
      NestedActions Function(AppActions) actionMapper)
      : super(builder, stateMapper, actionMapper);
}

///
abstract class AppModelActions<
        LocalState extends Built<LocalState, LocalStateBuilder>,
        LocalStateBuilder extends Builder<LocalState, LocalStateBuilder>,
        LocalActions extends AppStatefulActions<LocalState, LocalStateBuilder,
            LocalActions>>
    extends ModelActions<LocalState, LocalStateBuilder, LocalActions> {
  AppStatefulActions();

  @override
  @mustCallSuper
  @protected
  void $reducer(covariant AppReducerBuilder reducer) {
    super.$reducer(reducer);
  }

  @override
  @mustCallSuper
  @protected
  void $middleware(covariant AppMiddlewareBuilder builder) {
    super.$middleware(builder);
  }
}

///
abstract class AppStatefulActions<
        LocalState extends Built<LocalState, LocalStateBuilder>,
        LocalStateBuilder extends Builder<LocalState, LocalStateBuilder>,
        LocalActions extends AppStatefulActions<LocalState, LocalStateBuilder,
            LocalActions>>
    extends StatefulActions<LocalState, LocalStateBuilder, LocalActions> {
  AppStatefulActions();

  @override
  @mustCallSuper
  @protected
  void $reducer(covariant AppReducerBuilder reducer) {
    super.$reducer(reducer);
  }

  @override
  @mustCallSuper
  @protected
  void $middleware(covariant AppMiddlewareBuilder builder) {
    super.$middleware(builder);
  }
}

///
abstract class AppStatelessActions<Actions extends AppStatelessActions<Actions>>
    extends StatelessActions<Actions> {
  @override
  @mustCallSuper
  @protected
  void $reducer(covariant AppReducerBuilder reducer) {
    super.$reducer(reducer);
  }

  @override
  @mustCallSuper
  @protected
  void $middleware(covariant AppMiddlewareBuilder builder) {
    super.$middleware(builder);
  }
}

///
abstract class AppRouteActions<
    LocalState extends Built<LocalState, LocalStateBuilder>,
    LocalStateBuilder extends Builder<LocalState, LocalStateBuilder>,
    Returns,
    LocalActions extends AppRouteActions<LocalState, LocalStateBuilder, Returns,
        LocalActions, Route>,
    Route extends RouteDispatcher<LocalState, LocalStateBuilder, Returns,
        LocalActions, Route>> extends RouteActions<LocalState,
    LocalStateBuilder, Returns, LocalActions, Route> {
  AppRouteActions();

  @override
  @mustCallSuper
  @protected
  void $reducer(covariant AppReducerBuilder reducer) {
    super.$reducer(reducer);
  }

  @override
  @mustCallSuper
  @protected
  void $middleware(covariant AppMiddlewareBuilder builder) {
    super.$middleware(builder);
  }
}

///
abstract class ScreenActions<
    LocalState extends Built<LocalState, LocalStateBuilder>,
    LocalStateBuilder extends Builder<LocalState, LocalStateBuilder>,
    LocalActions extends ScreenActions<LocalState, LocalStateBuilder,
        LocalActions, Route>,
    Route extends RouteDispatcher<LocalState, LocalStateBuilder, Null,
        LocalActions, Route>> extends AppRouteActions<LocalState,
    LocalStateBuilder, Null, LocalActions, Route> {
  MobileNavigationElement get $navElement;

  void $onPush(covariant Store<AppState, AppStateBuilder, AppActions> store,
      LocalState state) {}

  void $onPop(covariant Store<AppState, AppStateBuilder, AppActions> store,
      LocalState state, Null result) {}

  void $didActivate(
      covariant Store<AppState, AppStateBuilder, AppActions> store,
      LocalState state) {}

  void $didDeactivate(
      covariant Store<AppState, AppStateBuilder, AppActions> store,
      LocalState state) {
    super.$didDeactivate(store, state);
    $cancelAllCommands(store);
  }

  void $cancelAllCommands(
      covariant Store<AppState, AppStateBuilder, AppActions> store) {
    $forEachCommand(store, (owner, dispatcher) {
      dispatcher.cancel(dispatcher.$mapState(store.state)?.command?.id);
    });
  }
}

abstract class ScreenRoute<
        State extends Built<State, StateBuilder>,
        StateBuilder extends Builder<State, StateBuilder>,
        Actions extends ScreenActions<State, StateBuilder, Actions, D>,
        D extends ScreenRoute<State, StateBuilder, Actions, D>>
    extends RouteDispatcher<State, StateBuilder, Null, Actions, D> {}

///
abstract class DialogActions<
    LocalState extends Built<LocalState, LocalStateBuilder>,
    LocalStateBuilder extends Builder<LocalState, LocalStateBuilder>,
    LocalActions extends DialogActions<LocalState, LocalStateBuilder,
        LocalActions, Route>,
    Route extends RouteDispatcher<LocalState, LocalStateBuilder, Null,
        LocalActions, Route>> extends AppRouteActions<LocalState,
    LocalStateBuilder, Null, LocalActions, Route> {}

abstract class DialogDispatcher<
        State extends Built<State, StateBuilder>,
        StateBuilder extends Builder<State, StateBuilder>,
        Actions extends DialogActions<State, StateBuilder, Actions, D>,
        D extends DialogDispatcher<State, StateBuilder, Actions, D>>
    extends RouteDispatcher<State, StateBuilder, Null, Actions, D> {}
