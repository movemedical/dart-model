import 'dart:convert';
import 'dart:async';

import 'package:test/test.dart';
import 'package:movemedical_api/command.dart';
import 'package:movemedical_model/foundation.dart';
import 'package:movemedical_model/app.dart';
import 'package:movemedical_model/auth/login.dart';

import 'package:movemedical_model/store_io.dart';

void main() async {
  test('Store serialization', () async {
    final store = createIOStore(
        (a) => (a.$initialBuilder
              ..nav = (NavStateBuilder()..messages)
              ..api = (ApiStateBuilder()
                ..url = 'https://integra-qa.movemedical.com'))
            .build(), serviceFactory: (store, register) {
      final router = RouterService(store, store.actions.nav);
      register(router);
    });

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
}

@immutable
class DartRoute {
  final Command<RouteCommand> command;

  DartRoute(this.command);
}

class DartRouterPlugin implements RouterPlugin<DartRoute> {
  @override
  DartRoute createRoute(RouteFuture future) {
    return DartRoute(future.command);
  }

  @override
  Future replace(
      RouteFuture future, DartRoute oldRoute, DartRoute newRoute) async {}

  @override
  Future processPop(RouteFuture future, RouteResult result) async {}

  @override
  Future processPush(RouteFuture future) async {}
}