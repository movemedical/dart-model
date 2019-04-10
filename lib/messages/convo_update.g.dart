// GENERATED CODE - DO NOT MODIFY BY HAND

part of messages.update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateConversationState> _$updateConversationStateSerializer =
    new _$UpdateConversationStateSerializer();

class _$UpdateConversationStateSerializer
    implements StructuredSerializer<UpdateConversationState> {
  @override
  final Iterable<Type> types = const [
    UpdateConversationState,
    _$UpdateConversationState
  ];
  @override
  final String wireName = 'movemedical_model/messages/UpdateConversationState';

  @override
  Iterable serialize(Serializers serializers, UpdateConversationState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  UpdateConversationState deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new UpdateConversationStateBuilder().build();
  }
}

class _$UpdateConversationState extends UpdateConversationState {
  factory _$UpdateConversationState(
          [void updates(UpdateConversationStateBuilder b)]) =>
      (new UpdateConversationStateBuilder()..update(updates)).build();

  _$UpdateConversationState._() : super._();

  @override
  UpdateConversationState rebuild(
          void updates(UpdateConversationStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateConversationStateBuilder toBuilder() =>
      new UpdateConversationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateConversationState;
  }

  @override
  int get hashCode {
    return 285550084;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('UpdateConversationState').toString();
  }
}

class UpdateConversationStateBuilder
    implements
        Builder<UpdateConversationState, UpdateConversationStateBuilder> {
  _$UpdateConversationState _$v;

  UpdateConversationStateBuilder();

  @override
  void replace(UpdateConversationState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpdateConversationState;
  }

  @override
  void update(void updates(UpdateConversationStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateConversationState build() {
    final _$result = _$v ?? new _$UpdateConversationState._();
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
    CommandState<RouteCommand<UpdateConversationState>, RouteResult<Empty>>,
    CommandStateBuilder<RouteCommand<UpdateConversationState>,
        RouteResult<Empty>>,
    UpdateConversationRoute> UpdateConversationRouteOptions();

class _$UpdateConversationRoute extends UpdateConversationRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<UpdateConversationState>, RouteResult<Empty>>,
      CommandStateBuilder<RouteCommand<UpdateConversationState>,
          RouteResult<Empty>>,
      UpdateConversationRoute> $options;

  final ActionDispatcher<
      CommandState<RouteCommand<UpdateConversationState>,
          RouteResult<Empty>>> $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<UpdateConversationState>, RouteResult<Empty>,
          UpdateConversationRoute, String>> $cancel;
  final ActionDispatcher<
      CommandPayload<
          RouteCommand<UpdateConversationState>,
          RouteResult<Empty>,
          UpdateConversationRoute,
          Command<RouteCommand<UpdateConversationState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<UpdateConversationState>, RouteResult<Empty>,
          UpdateConversationRoute, CommandResult<RouteResult<Empty>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<UpdateConversationState>, RouteResult<Empty>,
          UpdateConversationRoute, CommandProgress>> $progress;

  _$UpdateConversationRoute._(this.$options)
      : $replace = $options.action<
            CommandState<RouteCommand<UpdateConversationState>,
                RouteResult<Empty>>>('\$replace', (a) => a?.$replace),
        $cancel = $options.action<
            CommandPayload<
                RouteCommand<UpdateConversationState>,
                RouteResult<Empty>,
                UpdateConversationRoute,
                String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<UpdateConversationState>,
                    RouteResult<Empty>,
                    UpdateConversationRoute,
                    Command<RouteCommand<UpdateConversationState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<UpdateConversationState>,
                    RouteResult<Empty>,
                    UpdateConversationRoute,
                    CommandResult<RouteResult<Empty>>>>(
            '\$result', (a) => a?.$result),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<UpdateConversationState>,
                RouteResult<Empty>,
                UpdateConversationRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        super._();

  factory _$UpdateConversationRoute(UpdateConversationRouteOptions options) =>
      _$UpdateConversationRoute._(options());

  @override
  CommandState<RouteCommand<UpdateConversationState>, RouteResult<Empty>>
      get $initial => CommandState<RouteCommand<UpdateConversationState>,
          RouteResult<Empty>>();

  @override
  CommandStateBuilder<RouteCommand<UpdateConversationState>, RouteResult<Empty>>
      $newBuilder() => CommandStateBuilder<
          RouteCommand<UpdateConversationState>, RouteResult<Empty>>();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.$cancel,
        this.$execute,
        this.$result,
        this.$progress,
      ]);

// @override
// Serializer<CommandStateUpdateConversationRoute> get $serializer => CommandStateUpdateConversationRoute.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(UpdateConversationState)]),
        FullType(RouteResult, [FullType(Empty)])
      ]);

  @override
  RouteCommandBuilder<UpdateConversationState> newCommandBuilder() =>
      RouteCommand<UpdateConversationState>().toBuilder();

  @override
  RouteResultBuilder<Empty> newResultBuilder() =>
      RouteResult<Empty>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  UpdateConversationStateBuilder newCommandPayloadBuilder() =>
      UpdateConversationState().toBuilder();

  @override
  EmptyBuilder newResultPayloadBuilder() => Empty().toBuilder();

  @override
  Serializer<UpdateConversationState> get commandPayloadSerializer =>
      UpdateConversationState.serializer;

  @override
  Serializer<Empty> get resultPayloadSerializer => Empty.serializer;
}

typedef StatefulActionsOptions<
    UpdateConversationState,
    UpdateConversationStateBuilder,
    UpdateConversationActions> UpdateConversationActionsOptions();

class _$UpdateConversationActions extends UpdateConversationActions {
  final StatefulActionsOptions<UpdateConversationState,
      UpdateConversationStateBuilder, UpdateConversationActions> $options;

  final ActionDispatcher<UpdateConversationState> $replace;
  final ActionDispatcher<Null> $activated;
  final ActionDispatcher<Null> $deactivated;
  final ActionDispatcher<UpdateConversationState> $pushing;
  final ActionDispatcher<Empty> $popping;

  _$UpdateConversationActions._(this.$options)
      : $replace = $options.action<UpdateConversationState>(
            '\$replace', (a) => a?.$replace),
        $activated = $options.action<Null>('\$activated', (a) => a?.$activated),
        $deactivated =
            $options.action<Null>('\$deactivated', (a) => a?.$deactivated),
        $pushing = $options.action<UpdateConversationState>(
            '\$pushing', (a) => a?.$pushing),
        $popping = $options.action<Empty>('\$popping', (a) => a?.$popping),
        super._();

  factory _$UpdateConversationActions(
          UpdateConversationActionsOptions options) =>
      _$UpdateConversationActions._(options());

  @override
  UpdateConversationStateBuilder $newBuilder() =>
      UpdateConversationStateBuilder();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.$activated,
        this.$deactivated,
        this.$pushing,
        this.$popping,
      ]);

// @override
// Serializer<UpdateConversationStateUpdateConversationActions> get $serializer => UpdateConversationStateUpdateConversationActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(UpdateConversationState);

  @override
  EmptyBuilder $newResultBuilder() => Empty().toBuilder();
}
