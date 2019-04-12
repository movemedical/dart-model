import 'package:http/io_client.dart' as http_io;
import 'package:movemedical_api/command.dart';
import 'package:movemedical_model/app.dart';
import 'package:movemedical_model/foundation.dart';
import 'package:movemedical_model/store.dart' as s;
import 'package:web_socket_channel/io.dart' as ws;

Store<AppState, AppStateBuilder, AppActions> createIOStore(
        AppState Function(AppActions) state,
        {AppActions actions,
        Iterable<Middleware<AppState, AppStateBuilder, AppActions>> middleware =
            const [],
        ApiService apiService(Store<AppState, AppStateBuilder, AppActions> s),
        Function(Store<AppState, AppStateBuilder, AppActions> s,
                Function(StoreService s) register)
            serviceFactory}) =>
    s.createStore(
        state,
        () => http_io.IOClient(),
        (dynamic url,
                {Iterable<String> protocols,
                Map<String, dynamic> headers,
                Duration pingInterval}) =>
            ws.IOWebSocketChannel.connect(url,
                protocols: protocols,
                headers: headers,
                pingInterval: pingInterval),
        actions: actions,
        middleware: middleware,
        apiService: apiService,
        serviceFactory: serviceFactory);
