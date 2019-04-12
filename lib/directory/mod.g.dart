// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DirectoryModuleState> _$directoryModuleStateSerializer =
    new _$DirectoryModuleStateSerializer();

class _$DirectoryModuleStateSerializer
    implements StructuredSerializer<DirectoryModuleState> {
  @override
  final Iterable<Type> types = const [
    DirectoryModuleState,
    _$DirectoryModuleState
  ];
  @override
  final String wireName = 'movemedical_model/directory/DirectoryModuleState';

  @override
  Iterable serialize(Serializers serializers, DirectoryModuleState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  DirectoryModuleState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new DirectoryModuleStateBuilder().build();
  }
}

class _$DirectoryModuleState extends DirectoryModuleState {
  factory _$DirectoryModuleState(
          [void updates(DirectoryModuleStateBuilder b)]) =>
      (new DirectoryModuleStateBuilder()..update(updates)).build();

  _$DirectoryModuleState._() : super._();

  @override
  DirectoryModuleState rebuild(void updates(DirectoryModuleStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectoryModuleStateBuilder toBuilder() =>
      new DirectoryModuleStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectoryModuleState;
  }

  @override
  int get hashCode {
    return 824778324;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DirectoryModuleState').toString();
  }
}

class DirectoryModuleStateBuilder
    implements Builder<DirectoryModuleState, DirectoryModuleStateBuilder> {
  _$DirectoryModuleState _$v;

  DirectoryModuleStateBuilder();

  @override
  void replace(DirectoryModuleState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DirectoryModuleState;
  }

  @override
  void update(void updates(DirectoryModuleStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DirectoryModuleState build() {
    final _$result = _$v ?? new _$DirectoryModuleState._();
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
    DirectoryModuleState,
    DirectoryModuleStateBuilder,
    DirectoryModuleActions> DirectoryModuleActionsOptions();

class _$DirectoryModuleActions extends DirectoryModuleActions {
  final StatefulActionsOptions<DirectoryModuleState,
      DirectoryModuleStateBuilder, DirectoryModuleActions> $options;

  final ActionDispatcher<DirectoryModuleState> $replace;

  _$DirectoryModuleActions._(this.$options)
      : $replace = $options.action<DirectoryModuleState>(
            '\$replace', (a) => a?.$replace),
        super._();

  factory _$DirectoryModuleActions(DirectoryModuleActionsOptions options) =>
      _$DirectoryModuleActions._(options());

  @override
  DirectoryModuleState get $initial => DirectoryModuleState();

  @override
  DirectoryModuleStateBuilder $newBuilder() => DirectoryModuleStateBuilder();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
      ]);

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(DirectoryModuleState);
}
