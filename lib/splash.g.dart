// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SplashState> _$splashStateSerializer = new _$SplashStateSerializer();

class _$SplashStateSerializer implements StructuredSerializer<SplashState> {
  @override
  final Iterable<Type> types = const [SplashState, _$SplashState];
  @override
  final String wireName = 'movemedical_model/SplashState';

  @override
  Iterable serialize(Serializers serializers, SplashState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  SplashState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new SplashStateBuilder().build();
  }
}

class _$SplashState extends SplashState {
  factory _$SplashState([void updates(SplashStateBuilder b)]) =>
      (new SplashStateBuilder()..update(updates)).build();

  _$SplashState._() : super._();

  @override
  SplashState rebuild(void updates(SplashStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SplashStateBuilder toBuilder() => new SplashStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplashState;
  }

  @override
  int get hashCode {
    return 136543255;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('SplashState').toString();
  }
}

class SplashStateBuilder implements Builder<SplashState, SplashStateBuilder> {
  _$SplashState _$v;

  SplashStateBuilder();

  @override
  void replace(SplashState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SplashState;
  }

  @override
  void update(void updates(SplashStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SplashState build() {
    final _$result = _$v ?? new _$SplashState._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// ModuxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides

typedef StatefulActionsOptions<
    CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>,
    CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Nothing>>,
    SplashRoute> SplashRouteOptions();

class _$SplashRoute extends SplashRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>,
      CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Nothing>>,
      SplashRoute> options$;

  final ActionDispatcher<
      CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>> replace$;
  final ActionDispatcher<String> cancel$;
  final ActionDispatcher<Command<RouteCommand<SplashState>>> execute$;
  final ActionDispatcher<CommandResult<RouteResult<Nothing>>> result$;
  final ActionDispatcher<CommandProgress> progress$;

  _$SplashRoute._(this.options$)
      : replace$ = options$.action<
                CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>>(
            'replace\$', (a) => a?.replace$),
        cancel$ = options$.action<String>('cancel\$', (a) => a?.cancel$),
        execute$ = options$.action<Command<RouteCommand<SplashState>>>(
            'execute\$', (a) => a?.execute$),
        result$ = options$.action<CommandResult<RouteResult<Nothing>>>(
            'result\$', (a) => a?.result$),
        progress$ =
            options$.action<CommandProgress>('progress\$', (a) => a?.progress$),
        super._();

  factory _$SplashRoute(SplashRouteOptions options) =>
      _$SplashRoute._(options());

  @override
  CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>
      get initialState$ =>
          CommandState<RouteCommand<SplashState>, RouteResult<Nothing>>();

  @override
  CommandStateBuilder<RouteCommand<SplashState>, RouteResult<Nothing>>
      newBuilder$() => CommandStateBuilder<RouteCommand<SplashState>,
          RouteResult<Nothing>>();

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
        this.cancel$,
        this.execute$,
        this.result$,
        this.progress$,
      ]);

  @override
  RouteCommandBuilder<SplashState> newCommandBuilder() =>
      RouteCommand<SplashState>().toBuilder();

  @override
  RouteResultBuilder<Nothing> newResultBuilder() =>
      RouteResult<Nothing>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  SplashStateBuilder newCommandPayloadBuilder() => SplashState().toBuilder();

  @override
  NothingBuilder newResultPayloadBuilder() => Nothing().toBuilder();

  @override
  Serializer<SplashState> get commandPayloadSerializer =>
      SplashState.serializer;

  @override
  Serializer<Nothing> get resultPayloadSerializer => Nothing.serializer;
}

typedef StatefulActionsOptions<SplashState, SplashStateBuilder,
    SplashActions> SplashActionsOptions();

class _$SplashActions extends SplashActions {
  final StatefulActionsOptions<SplashState, SplashStateBuilder, SplashActions>
      options$;

  final ActionDispatcher<SplashState> replace$;
  final ActionDispatcher<Null> activated$;
  final ActionDispatcher<Null> deactivated$;
  final ActionDispatcher<SplashState> pushing$;
  final ActionDispatcher<Nothing> popping$;

  _$SplashActions._(this.options$)
      : replace$ =
            options$.action<SplashState>('replace\$', (a) => a?.replace$),
        activated$ = options$.action<Null>('activated\$', (a) => a?.activated$),
        deactivated$ =
            options$.action<Null>('deactivated\$', (a) => a?.deactivated$),
        pushing$ =
            options$.action<SplashState>('pushing\$', (a) => a?.pushing$),
        popping$ = options$.action<Nothing>('popping\$', (a) => a?.popping$),
        super._();

  factory _$SplashActions(SplashActionsOptions options) =>
      _$SplashActions._(options());

  @override
  SplashState get initialState$ => SplashState();

  @override
  SplashStateBuilder newBuilder$() => SplashStateBuilder();

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
        this.activated$,
        this.deactivated$,
        this.pushing$,
        this.popping$,
      ]);

  @override
  NothingBuilder newResultBuilder$() => Nothing().toBuilder();
}
