// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mod.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SchedulingModuleState> _$schedulingModuleStateSerializer =
    new _$SchedulingModuleStateSerializer();

class _$SchedulingModuleStateSerializer
    implements StructuredSerializer<SchedulingModuleState> {
  @override
  final Iterable<Type> types = const [
    SchedulingModuleState,
    _$SchedulingModuleState
  ];
  @override
  final String wireName = 'movemedical_model/schedule/SchedulingModuleState';

  @override
  Iterable serialize(Serializers serializers, SchedulingModuleState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(object.list,
            specifiedType: const FullType(CaseEventListState)));
    }
    if (object.listFilter != null) {
      result
        ..add('listFilter')
        ..add(serializers.serialize(object.listFilter,
            specifiedType: const FullType(CaseEventListFilterState)));
    }
    if (object.detail != null) {
      result
        ..add('detail')
        ..add(serializers.serialize(object.detail,
            specifiedType: const FullType(CaseEventDetailState)));
    }

    return result;
  }

  @override
  SchedulingModuleState deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SchedulingModuleStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CaseEventListState))
              as CaseEventListState);
          break;
        case 'listFilter':
          result.listFilter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CaseEventListFilterState))
              as CaseEventListFilterState);
          break;
        case 'detail':
          result.detail.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CaseEventDetailState))
              as CaseEventDetailState);
          break;
      }
    }

    return result.build();
  }
}

class _$SchedulingModuleState extends SchedulingModuleState {
  @override
  final CaseEventListState list;
  @override
  final CaseEventListFilterState listFilter;
  @override
  final CaseEventDetailState detail;

  factory _$SchedulingModuleState(
          [void updates(SchedulingModuleStateBuilder b)]) =>
      (new SchedulingModuleStateBuilder()..update(updates)).build();

  _$SchedulingModuleState._({this.list, this.listFilter, this.detail})
      : super._();

  @override
  SchedulingModuleState rebuild(void updates(SchedulingModuleStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SchedulingModuleStateBuilder toBuilder() =>
      new SchedulingModuleStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SchedulingModuleState &&
        list == other.list &&
        listFilter == other.listFilter &&
        detail == other.detail;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, list.hashCode), listFilter.hashCode), detail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SchedulingModuleState')
          ..add('list', list)
          ..add('listFilter', listFilter)
          ..add('detail', detail))
        .toString();
  }
}

class SchedulingModuleStateBuilder
    implements Builder<SchedulingModuleState, SchedulingModuleStateBuilder> {
  _$SchedulingModuleState _$v;

  CaseEventListStateBuilder _list;
  CaseEventListStateBuilder get list =>
      _$this._list ??= new CaseEventListStateBuilder();
  set list(CaseEventListStateBuilder list) => _$this._list = list;

  CaseEventListFilterStateBuilder _listFilter;
  CaseEventListFilterStateBuilder get listFilter =>
      _$this._listFilter ??= new CaseEventListFilterStateBuilder();
  set listFilter(CaseEventListFilterStateBuilder listFilter) =>
      _$this._listFilter = listFilter;

  CaseEventDetailStateBuilder _detail;
  CaseEventDetailStateBuilder get detail =>
      _$this._detail ??= new CaseEventDetailStateBuilder();
  set detail(CaseEventDetailStateBuilder detail) => _$this._detail = detail;

  SchedulingModuleStateBuilder();

  SchedulingModuleStateBuilder get _$this {
    if (_$v != null) {
      _list = _$v.list?.toBuilder();
      _listFilter = _$v.listFilter?.toBuilder();
      _detail = _$v.detail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SchedulingModuleState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SchedulingModuleState;
  }

  @override
  void update(void updates(SchedulingModuleStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SchedulingModuleState build() {
    _$SchedulingModuleState _$result;
    try {
      _$result = _$v ??
          new _$SchedulingModuleState._(
              list: _list?.build(),
              listFilter: _listFilter?.build(),
              detail: _detail?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'listFilter';
        _listFilter?.build();
        _$failedField = 'detail';
        _detail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SchedulingModuleState', _$failedField, e.toString());
      }
      rethrow;
    }
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
    SchedulingModuleState,
    SchedulingModuleStateBuilder,
    SchedulingModuleActions> SchedulingModuleActionsOptions();

class _$SchedulingModuleActions extends SchedulingModuleActions {
  final StatefulActionsOptions<SchedulingModuleState,
      SchedulingModuleStateBuilder, SchedulingModuleActions> $options;

  final ActionDispatcher<SchedulingModuleState> $replace;
  final CaseEventListActions list;
  final CaseEventListFilterActions listFilter;
  final CaseEventDetailActions detail;

  _$SchedulingModuleActions._(this.$options)
      : $replace = $options.action<SchedulingModuleState>(
            '\$replace', (a) => a?.$replace),
        list = CaseEventListActions(() => $options.stateful<CaseEventListState,
                CaseEventListStateBuilder, CaseEventListActions>(
            'list',
            (a) => a.list,
            (s) => s?.list,
            (b) => b?.list,
            (parent, builder) => parent?.list = builder)),
        listFilter = CaseEventListFilterActions(() => $options.stateful<
                CaseEventListFilterState,
                CaseEventListFilterStateBuilder,
                CaseEventListFilterActions>(
            'listFilter',
            (a) => a.listFilter,
            (s) => s?.listFilter,
            (b) => b?.listFilter,
            (parent, builder) => parent?.listFilter = builder)),
        detail = CaseEventDetailActions(() => $options.stateful<
                CaseEventDetailState,
                CaseEventDetailStateBuilder,
                CaseEventDetailActions>(
            'detail',
            (a) => a.detail,
            (s) => s?.detail,
            (b) => b?.detail,
            (parent, builder) => parent?.detail = builder)),
        super._();

  factory _$SchedulingModuleActions(SchedulingModuleActionsOptions options) =>
      _$SchedulingModuleActions._(options());

  @override
  SchedulingModuleState get $initial => SchedulingModuleState();

  @override
  SchedulingModuleStateBuilder $newBuilder() => SchedulingModuleStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.list,
        this.listFilter,
        this.detail,
      ]);

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    list.$reducer(reducer);
    listFilter.$reducer(reducer);
    detail.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    list.$middleware(middleware);
    listFilter.$middleware(middleware);
    detail.$middleware(middleware);
  }

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(SchedulingModuleState);
}
