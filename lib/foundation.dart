import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:modux/modux.dart';
import 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

import 'app.dart';

export 'package:built_collection/built_collection.dart';
export 'package:built_value/built_value.dart';
export 'package:built_value/serializer.dart';
export 'package:meta/meta.dart';
export 'package:modux/modux.dart';
export 'package:movemedical_api/model/sql/enums/mobile_navigation_element.dart';

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
    NestedActions extends StateActions<NestedState, NestedStateBuilder,
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
        LocalActions extends AppModelActions<LocalState, LocalStateBuilder,
            LocalActions>>
    extends ModelActions<LocalState, LocalStateBuilder, LocalActions> {
  @override
  @mustCallSuper
  @protected
  void reducer$(covariant AppReducerBuilder reducer) {
    super.reducer$(reducer);
  }

  @override
  @mustCallSuper
  @protected
  void middleware$(covariant AppMiddlewareBuilder builder) {
    super.middleware$(builder);
  }
}

///
abstract class StateActions<
        LocalState extends Built<LocalState, LocalStateBuilder>,
        LocalStateBuilder extends Builder<LocalState, LocalStateBuilder>,
        LocalActions extends StateActions<LocalState, LocalStateBuilder,
            LocalActions>>
    extends StatefulActions<LocalState, LocalStateBuilder, LocalActions> {
  @override
  @mustCallSuper
  @protected
  void reducer$(covariant AppReducerBuilder reducer) {
    super.reducer$(reducer);
  }

  @override
  @mustCallSuper
  @protected
  void middleware$(covariant AppMiddlewareBuilder builder) {
    super.middleware$(builder);
  }
}

///
abstract class BusActions<Actions extends BusActions<Actions>>
    extends StatelessActions<Actions> {
  @override
  @mustCallSuper
  @protected
  void reducer$(covariant AppReducerBuilder reducer) {
    super.reducer$(reducer);
  }

  @override
  @mustCallSuper
  @protected
  void middleware$(covariant AppMiddlewareBuilder builder) {
    super.middleware$(builder);
  }
}

///
abstract class AppRouteActions<
    LocalState extends Built<LocalState, LocalStateBuilder>,
    LocalStateBuilder extends Builder<LocalState, LocalStateBuilder>,
    Result extends Built<Result, ResultBuilder>,
    ResultBuilder extends Builder<Result, ResultBuilder>,
    LocalActions extends AppRouteActions<LocalState, LocalStateBuilder, Result,
        ResultBuilder, LocalActions>> extends RouteActions<LocalState,
    LocalStateBuilder, Result, ResultBuilder, LocalActions> {
  @override
  @mustCallSuper
  @protected
  void reducer$(covariant AppReducerBuilder reducer) {
    super.reducer$(reducer);
  }

  @override
  @mustCallSuper
  @protected
  void middleware$(covariant AppMiddlewareBuilder builder) {
    super.middleware$(builder);
  }

  @override
  Store<AppState, AppStateBuilder, AppActions> get store$ =>
      super.store$ as Store<AppState, AppStateBuilder, AppActions>;
}

///
abstract class ScreenRoute<
        State extends Built<State, StateBuilder>,
        StateBuilder extends Builder<State, StateBuilder>,
        Actions extends ScreenActions<State, StateBuilder, Actions>,
        D extends ScreenRoute<State, StateBuilder, Actions, D>>
    extends RouteDispatcher<State, StateBuilder, Nothing, NothingBuilder,
        Actions, D> {}

///
abstract class ScreenActions<
    LocalState extends Built<LocalState, LocalStateBuilder>,
    LocalStateBuilder extends Builder<LocalState, LocalStateBuilder>,
    LocalActions extends ScreenActions<LocalState, LocalStateBuilder,
        LocalActions>> extends AppRouteActions<LocalState, LocalStateBuilder,
    Nothing, NothingBuilder, LocalActions> {
  MobileNavigationElement _navElement$;

  MobileNavigationElement get navElement$ =>
      _navElement$ ??= _mobileNavigationElementFor(store$, name$);

//  @override
//  void $onPush(covariant Store<AppState, AppStateBuilder, AppActions> store,
//      LocalState state) {}
//
//  @override
//  void $onPop(covariant Store<AppState, AppStateBuilder, AppActions> store,
//      LocalState state, Nothing result) {}
//
//  @override
//  void $didActivate(
//      covariant Store<AppState, AppStateBuilder, AppActions> store,
//      LocalState state) {}
//
//  @override
//  void $didDeactivate(
//      covariant Store<AppState, AppStateBuilder, AppActions> store,
//      LocalState state) {
//    super.$didDeactivate(store, state);
//    $cancelAllCommands(store);
//  }
//
//  void $cancelAllCommands(
//      covariant Store<AppState, AppStateBuilder, AppActions> store) {
//    $visitCommands((owner, dispatcher) {
//      final id = dispatcher.$mapState(store.state)?.command?.id;
//      if (id != null) {
//        dispatcher.cancel();
//      }
//    });
//  }
}

///
abstract class DialogRoute<
    State extends Built<State, StateBuilder>,
    StateBuilder extends Builder<State, StateBuilder>,
    Result extends Built<Result, ResultBuilder>,
    ResultBuilder extends Builder<Result, ResultBuilder>,
    Actions extends DialogActions<State, StateBuilder, Result, ResultBuilder,
        Actions>,
    D extends DialogRoute<State, StateBuilder, Result, ResultBuilder, Actions,
        D>> extends RouteDispatcher<State, StateBuilder, Result, ResultBuilder,
    Actions, D> {}

///
abstract class DialogActions<
    LocalState extends Built<LocalState, LocalStateBuilder>,
    LocalStateBuilder extends Builder<LocalState, LocalStateBuilder>,
    Result extends Built<Result, ResultBuilder>,
    ResultBuilder extends Builder<Result, ResultBuilder>,
    LocalActions extends DialogActions<LocalState, LocalStateBuilder, Result,
        ResultBuilder, LocalActions>> extends AppRouteActions<LocalState,
    LocalStateBuilder, Result, ResultBuilder, LocalActions> {
  MobileNavigationElement _navElement$;

  MobileNavigationElement get navElement$ =>
      _navElement$ ??= _mobileNavigationElementFor(store$, name$);
}

MobileNavigationElement _mobileNavigationElementFor(
    Store<AppState, AppStateBuilder, AppActions> store, String name) {
  if (name.startsWith(store.actions.nav.messaging.name$)) {
    return MobileNavigationElement.MESSAGES;
  } else if (name.startsWith(store.actions.nav.dashboard.name$)) {
    return MobileNavigationElement.DASHBOARD;
  } else if (name.startsWith(store.actions.nav.scheduling.name$)) {
    return MobileNavigationElement.SCHEDULE;
  }

  return null;
}
