import 'package:movemedical_api/command.dart';

import 'app.dart';
import 'foundation.dart';
import 's.ser.dart';

Store<AppState, AppStateBuilder, AppActions> createStore(
    AppState Function(AppActions) state,
    HttpClientFactory httpFactory,
    WebSocketFactory wsFactory,
    {AppActions actions,
    Iterable<Middleware<AppState, AppStateBuilder, AppActions>> middleware =
        const [],
    ApiService apiService(Store<AppState, AppStateBuilder, AppActions> s),
    Function(Store<AppState, AppStateBuilder, AppActions> s,
            Function(StoreService s) register)
        serviceFactory}) {
  if (actions == null) actions = AppActions();
  if (state == null) state = (AppActions a) => a.$initial;

  final m = List<Middleware<AppState, AppStateBuilder, AppActions>>();
  final actionMiddleware = actions.$createMiddleware();
  m.add(actionMiddleware);
  if (middleware != null) m.addAll(middleware);

  return Store<AppState, AppStateBuilder, AppActions>(
      createSerializers(), actions, state(actions),
      httpFactory: httpFactory,
      wsFactory: wsFactory,
      middleware: middleware, serviceFactory: (store, register) {
    var api = apiService?.call(store) ?? ApiService(store, store.actions.api);
    register(api);
    serviceFactory?.call(store, register);
  });
}
