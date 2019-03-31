// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_bar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabBarState> _$tabBarStateSerializer = new _$TabBarStateSerializer();

class _$TabBarStateSerializer implements StructuredSerializer<TabBarState> {
  @override
  final Iterable<Type> types = const [TabBarState, _$TabBarState];
  @override
  final String wireName = 'movemedical_model/scaffold/TabBarState';

  @override
  Iterable serialize(Serializers serializers, TabBarState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'selectedTab',
      serializers.serialize(object.selectedTab,
          specifiedType: const FullType(MobileNavigationElement)),
    ];

    return result;
  }

  @override
  TabBarState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabBarStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'selectedTab':
          result.selectedTab = serializers.deserialize(value,
                  specifiedType: const FullType(MobileNavigationElement))
              as MobileNavigationElement;
          break;
      }
    }

    return result.build();
  }
}

class _$TabBarState extends TabBarState {
  @override
  final MobileNavigationElement selectedTab;

  factory _$TabBarState([void updates(TabBarStateBuilder b)]) =>
      (new TabBarStateBuilder()..update(updates)).build();

  _$TabBarState._({this.selectedTab}) : super._() {
    if (selectedTab == null) {
      throw new BuiltValueNullFieldError('TabBarState', 'selectedTab');
    }
  }

  @override
  TabBarState rebuild(void updates(TabBarStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  TabBarStateBuilder toBuilder() => new TabBarStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabBarState && selectedTab == other.selectedTab;
  }

  @override
  int get hashCode {
    return $jf($jc(0, selectedTab.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TabBarState')
          ..add('selectedTab', selectedTab))
        .toString();
  }
}

class TabBarStateBuilder implements Builder<TabBarState, TabBarStateBuilder> {
  _$TabBarState _$v;

  MobileNavigationElement _selectedTab;
  MobileNavigationElement get selectedTab => _$this._selectedTab;
  set selectedTab(MobileNavigationElement selectedTab) =>
      _$this._selectedTab = selectedTab;

  TabBarStateBuilder();

  TabBarStateBuilder get _$this {
    if (_$v != null) {
      _selectedTab = _$v.selectedTab;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabBarState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TabBarState;
  }

  @override
  void update(void updates(TabBarStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$TabBarState build() {
    final _$result = _$v ?? new _$TabBarState._(selectedTab: selectedTab);
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

typedef StatefulActionsOptions<TabBarState, TabBarStateBuilder,
    TabBarActions> TabBarActionsOptions();

class _$TabBarActions extends TabBarActions {
  final StatefulActionsOptions<TabBarState, TabBarStateBuilder, TabBarActions>
      $options;

  final ActionDispatcher<TabBarState> $replace;
  final FieldDispatcher<MobileNavigationElement> selectedTab;

  _$TabBarActions._(this.$options)
      : $replace =
            $options.action<TabBarState>('\$replace', (a) => a?.$replace),
        selectedTab = $options.actionField<MobileNavigationElement>(
            'selectedTab',
            (a) => a?.selectedTab,
            (s) => s?.selectedTab,
            (p, b) => p?.selectedTab = b),
        super._();

  factory _$TabBarActions(TabBarActionsOptions options) =>
      _$TabBarActions._(options());

  @override
  TabBarStateBuilder $newBuilder() => TabBarStateBuilder();

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.selectedTab,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    selectedTab.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
  }

// @override
// Serializer<TabBarStateTabBarActions> get $serializer => TabBarStateTabBarActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(TabBarState);
}
