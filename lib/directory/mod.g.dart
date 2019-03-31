// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DirectoryState> _$directoryStateSerializer =
    new _$DirectoryStateSerializer();

class _$DirectoryStateSerializer
    implements StructuredSerializer<DirectoryState> {
  @override
  final Iterable<Type> types = const [DirectoryState, _$DirectoryState];
  @override
  final String wireName = 'movemedical_model/directory/DirectoryState';

  @override
  Iterable serialize(Serializers serializers, DirectoryState object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  DirectoryState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new DirectoryStateBuilder().build();
  }
}

class _$DirectoryState extends DirectoryState {
  factory _$DirectoryState([void updates(DirectoryStateBuilder b)]) =>
      (new DirectoryStateBuilder()..update(updates)).build();

  _$DirectoryState._() : super._();

  @override
  DirectoryState rebuild(void updates(DirectoryStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DirectoryStateBuilder toBuilder() =>
      new DirectoryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DirectoryState;
  }

  @override
  int get hashCode {
    return 40078809;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('DirectoryState').toString();
  }
}

class DirectoryStateBuilder
    implements Builder<DirectoryState, DirectoryStateBuilder> {
  _$DirectoryState _$v;

  DirectoryStateBuilder();

  @override
  void replace(DirectoryState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DirectoryState;
  }

  @override
  void update(void updates(DirectoryStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DirectoryState build() {
    final _$result = _$v ?? new _$DirectoryState._();
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

typedef StatefulActionsOptions<DirectoryState, DirectoryStateBuilder,
    DirectoryActions> DirectoryActionsOptions();

class _$DirectoryActions extends DirectoryActions {
  final StatefulActionsOptions<DirectoryState, DirectoryStateBuilder,
      DirectoryActions> $options;

  final ActionDispatcher<DirectoryState> $replace;

  _$DirectoryActions._(this.$options)
      : $replace =
            $options.action<DirectoryState>('\$replace', (a) => a?.$replace),
        super._();

  factory _$DirectoryActions(DirectoryActionsOptions options) =>
      _$DirectoryActions._(options());

  @override
  DirectoryState get $initial => DirectoryState();

  @override
  DirectoryStateBuilder $newBuilder() => DirectoryStateBuilder();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
      ]);

// @override
// Serializer<DirectoryStateDirectoryActions> get $serializer => DirectoryStateDirectoryActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(DirectoryState);
}
