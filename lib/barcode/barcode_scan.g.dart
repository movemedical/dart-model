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
    final result = <Object>[
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BarcodeScanState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BarcodeScanStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BarcodeScanState extends BarcodeScanState {
  @override
  final String value;

  factory _$BarcodeScanState([void updates(BarcodeScanStateBuilder b)]) =>
      (new BarcodeScanStateBuilder()..update(updates)).build();

  _$BarcodeScanState._({this.value}) : super._() {
    if (value == null) {
      throw new BuiltValueNullFieldError('BarcodeScanState', 'value');
    }
  }

  @override
  BarcodeScanState rebuild(void updates(BarcodeScanStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BarcodeScanStateBuilder toBuilder() =>
      new BarcodeScanStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BarcodeScanState && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BarcodeScanState')
          ..add('value', value))
        .toString();
  }
}

class BarcodeScanStateBuilder
    implements Builder<BarcodeScanState, BarcodeScanStateBuilder> {
  _$BarcodeScanState _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  BarcodeScanStateBuilder();

  BarcodeScanStateBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

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
    final _$result = _$v ?? new _$BarcodeScanState._(value: value);
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
    CommandState<RouteCommand<BarcodeScanState>, RouteResult<Value<String>>>,
    CommandStateBuilder<RouteCommand<BarcodeScanState>,
        RouteResult<Value<String>>>,
    BarcodeScanRoute> BarcodeScanRouteOptions();

class _$BarcodeScanRoute extends BarcodeScanRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<BarcodeScanState>, RouteResult<Value<String>>>,
      CommandStateBuilder<RouteCommand<BarcodeScanState>,
          RouteResult<Value<String>>>,
      BarcodeScanRoute> $options;

  final ActionDispatcher<
      CommandState<RouteCommand<BarcodeScanState>,
          RouteResult<Value<String>>>> $replace;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<Value<String>>,
          BarcodeScanRoute, String>> $cancel;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<Value<String>>,
          BarcodeScanRoute, Command<RouteCommand<BarcodeScanState>>>> $execute;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<Value<String>>,
          BarcodeScanRoute, CommandResult<RouteResult<Value<String>>>>> $result;
  final ActionDispatcher<
      CommandPayload<RouteCommand<BarcodeScanState>, RouteResult<Value<String>>,
          BarcodeScanRoute, CommandProgress>> $progress;
  final ActionDispatcher<String> value;

  _$BarcodeScanRoute._(this.$options)
      : $replace = $options.action<
            CommandState<RouteCommand<BarcodeScanState>,
                RouteResult<Value<String>>>>('\$replace', (a) => a?.$replace),
        $cancel = $options.action<
            CommandPayload<
                RouteCommand<BarcodeScanState>,
                RouteResult<Value<String>>,
                BarcodeScanRoute,
                String>>('\$cancel', (a) => a?.$cancel),
        $execute = $options.action<
                CommandPayload<
                    RouteCommand<BarcodeScanState>,
                    RouteResult<Value<String>>,
                    BarcodeScanRoute,
                    Command<RouteCommand<BarcodeScanState>>>>(
            '\$execute', (a) => a?.$execute),
        $result = $options.action<
                CommandPayload<
                    RouteCommand<BarcodeScanState>,
                    RouteResult<Value<String>>,
                    BarcodeScanRoute,
                    CommandResult<RouteResult<Value<String>>>>>(
            '\$result', (a) => a?.$result),
        $progress = $options.action<
            CommandPayload<
                RouteCommand<BarcodeScanState>,
                RouteResult<Value<String>>,
                BarcodeScanRoute,
                CommandProgress>>('\$progress', (a) => a?.$progress),
        value = $options.action<String>('value', (a) => a?.value),
        super._();

  factory _$BarcodeScanRoute(BarcodeScanRouteOptions options) =>
      _$BarcodeScanRoute._(options());

  @override
  CommandState<RouteCommand<BarcodeScanState>, RouteResult<Value<String>>>
      get $initial => CommandState<RouteCommand<BarcodeScanState>,
          RouteResult<Value<String>>>();

  @override
  CommandStateBuilder<RouteCommand<BarcodeScanState>,
          RouteResult<Value<String>>>
      $newBuilder() => CommandStateBuilder<RouteCommand<BarcodeScanState>,
          RouteResult<Value<String>>>();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.$cancel,
        this.$execute,
        this.$result,
        this.$progress,
        this.value,
      ]);

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(CommandState, [
        FullType(RouteCommand, [FullType(BarcodeScanState)]),
        FullType(RouteResult, [
          FullType(Value, [FullType(String)])
        ])
      ]);

  @override
  RouteCommandBuilder<BarcodeScanState> newCommandBuilder() =>
      RouteCommand<BarcodeScanState>().toBuilder();

  @override
  RouteResultBuilder<Value<String>> newResultBuilder() =>
      RouteResult<Value<String>>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  BarcodeScanStateBuilder newCommandPayloadBuilder() =>
      BarcodeScanState().toBuilder();

  @override
  ValueBuilder<String> newResultPayloadBuilder() => Value<String>().toBuilder();

  @override
  Serializer<BarcodeScanState> get commandPayloadSerializer =>
      BarcodeScanState.serializer;

  @override
  Serializer<Value> get resultPayloadSerializer => Value.serializer;
}

typedef StatefulActionsOptions<BarcodeScanState, BarcodeScanStateBuilder,
    BarcodeScanActions> BarcodeScanActionsOptions();

class _$BarcodeScanActions extends BarcodeScanActions {
  final StatefulActionsOptions<BarcodeScanState, BarcodeScanStateBuilder,
      BarcodeScanActions> $options;

  final ActionDispatcher<BarcodeScanState> $replace;
  final ActionDispatcher<Null> $activated;
  final ActionDispatcher<Null> $deactivated;
  final ActionDispatcher<BarcodeScanState> $pushing;
  final ActionDispatcher<Value<String>> $popping;
  final FieldDispatcher<String> value;

  _$BarcodeScanActions._(this.$options)
      : $replace =
            $options.action<BarcodeScanState>('\$replace', (a) => a?.$replace),
        $activated = $options.action<Null>('\$activated', (a) => a?.$activated),
        $deactivated =
            $options.action<Null>('\$deactivated', (a) => a?.$deactivated),
        $pushing =
            $options.action<BarcodeScanState>('\$pushing', (a) => a?.$pushing),
        $popping =
            $options.action<Value<String>>('\$popping', (a) => a?.$popping),
        value = $options.field<String>(
            'value', (a) => a?.value, (s) => s?.value, (p, b) => p?.value = b),
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
        this.$activated,
        this.$deactivated,
        this.$pushing,
        this.$popping,
        this.value,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    value.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
  }

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(BarcodeScanState);

  @override
  ValueBuilder<String> $newResultBuilder() => Value<String>().toBuilder();
}
