// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presence.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PresenceState> _$presenceStateSerializer =
    new _$PresenceStateSerializer();

class _$PresenceStateSerializer implements StructuredSerializer<PresenceState> {
  @override
  final Iterable<Type> types = const [PresenceState, _$PresenceState];
  @override
  final String wireName = 'movemedical_model/presence/PresenceState';

  @override
  Iterable serialize(Serializers serializers, PresenceState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  PresenceState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new PresenceStateBuilder().build();
  }
}

class _$PresenceState extends PresenceState {
  factory _$PresenceState([void updates(PresenceStateBuilder b)]) =>
      (new PresenceStateBuilder()..update(updates)).build();

  _$PresenceState._() : super._();

  @override
  PresenceState rebuild(void updates(PresenceStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PresenceStateBuilder toBuilder() => new PresenceStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresenceState;
  }

  @override
  int get hashCode {
    return 166901365;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('PresenceState').toString();
  }
}

class PresenceStateBuilder
    implements Builder<PresenceState, PresenceStateBuilder> {
  _$PresenceState _$v;

  PresenceStateBuilder();

  @override
  void replace(PresenceState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PresenceState;
  }

  @override
  void update(void updates(PresenceStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PresenceState build() {
    final _$result = _$v ?? new _$PresenceState._();
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

typedef StatefulActionsOptions<PresenceState, PresenceStateBuilder,
    PresenceActions> PresenceActionsOptions();

class _$PresenceActions extends PresenceActions {
  final StatefulActionsOptions<PresenceState, PresenceStateBuilder,
      PresenceActions> $options;

  final ActionDispatcher<PresenceState> $replace;

  _$PresenceActions._(this.$options)
      : $replace =
            $options.action<PresenceState>('\$replace', (a) => a?.$replace),
        super._();

  factory _$PresenceActions(PresenceActionsOptions options) =>
      _$PresenceActions._(options());

  @override
  PresenceState get $initial => PresenceState();

  @override
  PresenceStateBuilder $newBuilder() => PresenceStateBuilder();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
      ]);

// @override
// Serializer<PresenceStatePresenceActions> get $serializer => PresenceStatePresenceActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(PresenceState);
}
