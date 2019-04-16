import 'package:movemedical_api/command.dart';

import 'app.dart';
import 'foundation.dart';
import 's.ser.dart';

Store<AppState, AppStateBuilder, AppActions> createStore(
    AppState Function(AppActions, Serializers) stateBuilder,
    HttpClientFactory httpFactory,
    WebSocketFactory wsFactory,
    {AppActions actions,
    Serializers serializers,
    Iterable<Middleware<AppState, AppStateBuilder, AppActions>> middleware =
        const [],
    ApiService apiService(Store<AppState, AppStateBuilder, AppActions> s),
    Function(Store<AppState, AppStateBuilder, AppActions> s,
            Function(StoreService s) register)
        serviceFactory}) {
  if (actions == null) actions = AppActions();
  if (stateBuilder == null)
    stateBuilder = (AppActions a, Serializers ser) => a.$initial;

  final m = List<Middleware<AppState, AppStateBuilder, AppActions>>();
  final actionMiddleware = actions.$createMiddleware();
  m.add(actionMiddleware);
  if (middleware != null) m.addAll(middleware);

  if (serializers == null) serializers = createSerializers();

  return Store<AppState, AppStateBuilder, AppActions>(
      createSerializers(), actions, stateBuilder(actions, serializers),
      httpFactory: httpFactory,
      wsFactory: wsFactory,
      middleware: middleware, serviceFactory: (store, register) {
    var api = apiService?.call(store) ?? ApiService(store, store.actions.api);
    register(api);
    serviceFactory?.call(store, register);
  });
}
