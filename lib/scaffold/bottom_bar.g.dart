// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_bar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BottomBarState> _$bottomBarStateSerializer =
    new _$BottomBarStateSerializer();

class _$BottomBarStateSerializer
    implements StructuredSerializer<BottomBarState> {
  @override
  final Iterable<Type> types = const [BottomBarState, _$BottomBarState];
  @override
  final String wireName = 'movemedical_model/scaffold/BottomBarState';

  @override
  Iterable serialize(Serializers serializers, BottomBarState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.selectedTab != null) {
      result
        ..add('selectedTab')
        ..add(serializers.serialize(object.selectedTab,
            specifiedType: const FullType(MobileNavigationElement)));
    }

    return result;
  }

  @override
  BottomBarState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BottomBarStateBuilder();

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

class _$BottomBarState extends BottomBarState {
  @override
  final MobileNavigationElement selectedTab;

  factory _$BottomBarState([void updates(BottomBarStateBuilder b)]) =>
      (new BottomBarStateBuilder()..update(updates)).build();

  _$BottomBarState._({this.selectedTab}) : super._();

  @override
  BottomBarState rebuild(void updates(BottomBarStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BottomBarStateBuilder toBuilder() =>
      new BottomBarStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BottomBarState && selectedTab == other.selectedTab;
  }

  @override
  int get hashCode {
    return $jf($jc(0, selectedTab.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BottomBarState')
          ..add('selectedTab', selectedTab))
        .toString();
  }
}

class BottomBarStateBuilder
    implements Builder<BottomBarState, BottomBarStateBuilder> {
  _$BottomBarState _$v;

  MobileNavigationElement _selectedTab;
  MobileNavigationElement get selectedTab => _$this._selectedTab;
  set selectedTab(MobileNavigationElement selectedTab) =>
      _$this._selectedTab = selectedTab;

  BottomBarStateBuilder();

  BottomBarStateBuilder get _$this {
    if (_$v != null) {
      _selectedTab = _$v.selectedTab;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BottomBarState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BottomBarState;
  }

  @override
  void update(void updates(BottomBarStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$BottomBarState build() {
    final _$result = _$v ?? new _$BottomBarState._(selectedTab: selectedTab);
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

typedef StatefulActionsOptions<BottomBarState, BottomBarStateBuilder,
    BottomBarActions> BottomBarActionsOptions();

class _$BottomBarActions extends BottomBarActions {
  final StatefulActionsOptions<BottomBarState, BottomBarStateBuilder,
      BottomBarActions> options$;

  final ActionDispatcher<BottomBarState> replace$;
  final FieldDispatcher<MobileNavigationElement> selectedTab;

  _$BottomBarActions._(this.options$)
      : replace$ =
            options$.action<BottomBarState>('replace\$', (a) => a?.replace$),
        selectedTab = options$.field<MobileNavigationElement>(
            'selectedTab',
            (a) => a?.selectedTab,
            (s) => s?.selectedTab,
            (p, b) => p?.selectedTab = b),
        super._();

  factory _$BottomBarActions(BottomBarActionsOptions options) =>
      _$BottomBarActions._(options());

  @override
  BottomBarStateBuilder newBuilder$() => BottomBarStateBuilder();

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
        this.selectedTab,
      ]);

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    selectedTab.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
  }
}
