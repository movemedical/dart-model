import 'dart:convert';
import 'dart:async';

import 'package:test/test.dart';
import 'package:movemedical_api/command.dart';
import 'package:movemedical_model/foundation.dart';
import 'package:movemedical_model/app.dart';
import 'package:movemedical_model/auth/login.dart';

import 'package:movemedical_model/store_io.dart';

Store<AppState, AppStateBuilder, AppActions> storeFactory() => createIOStore(
        (a, ser) => (a.$initialBuilder
              ..nav = (NavStateBuilder()..messaging)
              ..api = (ApiStateBuilder()
                ..url = 'https://dev.movemedical.com'
                ..appVersion = '1.0.0'
                ..platformVersion = 'Dart'))
            .build(), serviceFactory: (store, register) {
      final router = RouterService(store, store.actions.nav);
      register(router);
    });

void main() async {
  test('Store serialization', () async {
    final store = storeFactory();
    store.actionsStream.listen((data) {
      print('Action: ${data.action.name}');
    });

    // Navigate to Login
//    final result = await store.executeCommand(store.actions.nav.home.loginRoute,
//        store.actions.nav.home.loginRoute.create());

    final serialized =
        store.serializers.serializeWith(AppState.serializer, store.state);

    final deserialized =
        store.serializers.deserializeWith(AppState.serializer, serialized);

    print(deserialized);
//    print(json.decode(json.encode(serialized)));
  });

  test('ApiService login', () async {
    final store = storeFactory();
    final api = store.service<ApiService>();

    store.actions.api.loginCommand.onResult((event, result) {
      print('Result!!! -> ${result}');
    });

    final future = store.actions.api.loginCommand(
        request: LoginRequest((b) => b
          ..session = ''
          ..email = 'admin@movemedical.com'
          ..password = 'move'));

    final result = await future;

    final setupFuture = store.actions.api.setupCommand(
        builder: (b) => b
          ..appVersion = '1.0.0'
          ..platformVersion = 'Dart 2.2',
        timeout: Duration(seconds: 600));

    final setupResult = await setupFuture;
    print(result);
    print(setupResult);

    final appState =
        await store.json.serialize(AppState.serializer, store.state);

    print(utf8.decode(appState));
  });
}

@immutable
class DartRoute {
  final Command<RouteCommand> command;

  DartRoute(this.command);
}

class DartRouterPlugin implements RouterPlugin<DartRoute> {
  @override
  set mutator(RouterServiceMutator mutator) {}

  @override
  Future replace(ActiveRoute oldRoute, ActiveRoute newRoute) {}

  @override
  Future pushReplacement(ActiveRoute route) {}

  @override
  bool canPop() {}

  @override
  Future<bool> pop(ActiveRoute active, dynamic result) async {
    return true;
  }

  @override
  Future push(ActiveRoute route) {}

  @override
  Future pushAndRemoveUntil(ActiveRoute route, bool test(R)) {}

  @override
  DartRoute createRoute(RouteFuture future) {}
}
