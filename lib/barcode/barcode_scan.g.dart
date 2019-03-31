// GENERATED CODE - DO NOT MODIFY BY HAND

part of barcode.scan;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BarcodeScanState> _$barcodeScanStateSerializer =
    new _$BarcodeScanStateSerializer();

class _$BarcodeScanStateSerializer
    implements StructuredSerializer<BarcodeScanState> {
  @override
  final Iterable<Type> types = const [BarcodeScanState, _$BarcodeScanState];
  @override
  final String wireName = 'movemedical_model/barcode/BarcodeScanState';

  @override
  Iterable serialize(Serializers serializers, BarcodeScanState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  BarcodeScanState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new BarcodeScanStateBuilder().build();
  }
}

class _$BarcodeScanState extends BarcodeScanState {
  factory _$BarcodeScanState([void updates(BarcodeScanStateBuilder b)]) =>
      (new BarcodeScanStateBuilder()..update(updates)).build();

  _$BarcodeScanState._() : super._();

  @override
  BarcodeScanState rebuild(void updates(BarcodeScanStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BarcodeScanStateBuilder toBuilder() =>
      new BarcodeScanStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BarcodeScanState;
  }

  @override
  int get hashCode {
    return 961649029;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('BarcodeScanState').toString();
  }
}

class BarcodeScanStateBuilder
    implements Builder<BarcodeScanState, BarcodeScanStateBuilder> {
  _$BarcodeScanState _$v;

  BarcodeScanStateBuilder();

  @override
  void replace(BarcodeScanState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BarcodeScanState;
  }

  @override
  void update(void updates(BarcodeScanStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BarcodeScanState build() {
    final _$result = _$v ?? new _$BarcodeScanState._();
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
    CommandState<RouteCommand<BarcodeScanState>, RouteResult<String>>,
    CommandStateBuilder<RouteCommand<BarcodeScanState>, RouteResult<String>>,
    BarcodeScanRoute> BarcodeScanRouteOptions();

class _$BarcodeScanRoute extends BarcodeScanRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<BarcodeScanState>, RouteResult<String>>,
      CommandStateBuilder<RouteCommand<BarcodeScanState>, RouteResult<String>>,
      BarcodeScanRoute> $options;

  final ActionDispatcher<
          CommandState<RouteCommand<BarcodeScanState>, RouteResult<String>>>
      $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
          BarcodeScanRoute, String>> $clear;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
          BarcodeScanRoute, String>> $cancel;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
          BarcodeScanRoute, Command<RouteCommand<BarcodeScanState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
          BarcodeScanRoute, CommandResult<RouteResult<String>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
          BarcodeScanRoute, String>> $detach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
          BarcodeScanRoute, String>> $attach;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
          BarcodeScanRoute, CommandProgress>> $progress;

  _$BarcodeScanRoute._(this.$options)
      : $replace = $options.action<
            CommandState<RouteCommand<BarcodeScanState>,
                RouteResult<String>>>('\$replace', (a) => a?.$replace),
        $clear = $options.action<
            CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
                BarcodeScanRoute, String>>('\$clear', (a) => a?.$clear),
        $cancel = $options.action<
            CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
                BarcodeScanRoute, String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<BarcodeScanState>,
                    RouteResult<String>,
                    BarcodeScanRoute,
                    Command<RouteCommand<BarcodeScanState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<BarcodeScanState>,
                    RouteResult<String>,
                    BarcodeScanRoute,
                    CommandResult<RouteResult<String>>>>(
            '\$result', (a) => a?.$result),
        $detach = $options.action<
            CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
                BarcodeScanRoute, String>>('\$detach', (a) => a?.$detach),
        $attach = $options.action<
            CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<String>,
                BarcodeScanRoute, String>>('\$attach', (a) => a?.$attach),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<BarcodeScanState>,
                RouteResult<String>,
                BarcodeScanRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$BarcodeScanRoute(BarcodeScanRouteOptions options) =>
      _$BarcodeScanRoute._(options());

  @override
  CommandState<RouteCommand<BarcodeScanState>, RouteResult<String>>
      get $initial =>
          CommandState<RouteCommand<BarcodeScanState>, RouteResult<String>>();

  @override
  CommandStateBuilder<RouteCommand<BarcodeScanState>, RouteResult<String>>
      $newBuilder() => CommandStateBuilder<RouteCommand<BarcodeScanState>,
          RouteResult<String>>();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.$clear,
        this.$cancel,
        this.$execute,
        this.$result,
        this.$detach,
        this.$attach,
        this.$progress,
      ]);

// @override
// Serializer<CommandStateBarcodeScanRoute> get $serializer => CommandStateBarcodeScanRoute.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(BarcodeScanState)]),
        FullType(RouteResult, [FullType(String)])
      ]);
}

typedef StatefulActionsOptions<BarcodeScanState, BarcodeScanStateBuilder,
    BarcodeScanActions> BarcodeScanActionsOptions();

class _$BarcodeScanActions extends BarcodeScanActions {
  final StatefulActionsOptions<BarcodeScanState, BarcodeScanStateBuilder,
      BarcodeScanActions> $options;

  final ActionDispatcher<BarcodeScanState> $replace;
  final ActionDispatcher $activatedAction;
  final ActionDispatcher $deactivatedAction;
  final ActionDispatcher $pushAction;
  final ActionDispatcher $popAction;

  _$BarcodeScanActions._(this.$options)
      : $replace =
            $options.action<BarcodeScanState>('\$replace', (a) => a?.$replace),
        $activatedAction =
            $options.action('\$activatedAction', (a) => a?.$activatedAction),
        $deactivatedAction = $options.action(
            '\$deactivatedAction', (a) => a?.$deactivatedAction),
        $pushAction = $options.action('\$pushAction', (a) => a?.$pushAction),
        $popAction = $options.action('\$popAction', (a) => a?.$popAction),
        super._();

  factory _$BarcodeScanActions(BarcodeScanActionsOptions options) =>
      _$BarcodeScanActions._(options());

  @override
  BarcodeScanStateBuilder $newBuilder() => BarcodeScanStateBuilder();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.$activatedAction,
        this.$deactivatedAction,
        this.$pushAction,
        this.$popAction,
      ]);

// @override
// Serializer<BarcodeScanStateBarcodeScanActions> get $serializer => BarcodeScanStateBarcodeScanActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(BarcodeScanState);
}
