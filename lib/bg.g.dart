// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bg.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BgState> _$bgStateSerializer = new _$BgStateSerializer();

class _$BgStateSerializer implements StructuredSerializer<BgState> {
  @override
  final Iterable<Type> types = const [BgState, _$BgState];
  @override
  final String wireName = 'movemedical_model/BgState';

  @override
  Iterable serialize(Serializers serializers, BgState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  BgState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new BgStateBuilder().build();
  }
}

class _$BgState extends BgState {
  factory _$BgState([void updates(BgStateBuilder b)]) =>
      (new BgStateBuilder()..update(updates)).build();

  _$BgState._() : super._();

  @override
  BgState rebuild(void updates(BgStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BgStateBuilder toBuilder() => new BgStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BgState;
  }

  @override
  int get hashCode {
    return 693583134;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('BgState').toString();
  }
}

class BgStateBuilder implements Builder<BgState, BgStateBuilder> {
  _$BgState _$v;

  BgStateBuilder();

  @override
  void replace(BgState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BgState;
  }

  @override
  void update(void updates(BgStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BgState build() {
    final _$result = _$v ?? new _$BgState._();
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

typedef StatefulActionsOptions<BgState, BgStateBuilder,
    BgActions> BgActionsOptions();

class _$BgActions extends BgActions {
  final StatefulActionsOptions<BgState, BgStateBuilder, BgActions> $options;

  final ActionDispatcher<BgState> $replace;

  _$BgActions._(this.$options)
      : $replace = $options.action<BgState>('\$replace', (a) => a?.$replace),
        super._();

  factory _$BgActions(BgActionsOptions options) => _$BgActions._(options());

  @override
  BgState get $initial => BgState();

  @override
  BgStateBuilder $newBuilder() => BgStateBuilder();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
      ]);

// @override
// Serializer<BgStateBgActions> get $serializer => BgStateBgActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(BgState);
}
