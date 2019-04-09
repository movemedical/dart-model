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
    final result = <Object>[
      'selectedTab',
      serializers.serialize(object.selectedTab,
          specifiedType: const FullType(MobileNavigationElement)),
      'gotoDashboard',
      serializers.serialize(object.gotoDashboard,
          specifiedType: const FullType(CommandState, const [
            const FullType(
                RouteCommand, const [const FullType(DashboardState)]),
            const FullType(RouteResult, const [const FullType(Empty)])
          ])),
      'gotoConversationList',
      serializers.serialize(object.gotoConversationList,
          specifiedType: const FullType(CommandState, const [
            const FullType(
                RouteCommand, const [const FullType(ConversationListState)]),
            const FullType(RouteResult, const [const FullType(Empty)])
          ])),
    ];

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
        case 'gotoDashboard':
          result.gotoDashboard.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(
                        RouteCommand, const [const FullType(DashboardState)]),
                    const FullType(RouteResult, const [const FullType(Empty)])
                  ]))
              as CommandState<RouteCommand<DashboardState>,
                  RouteResult<Empty>>);
          break;
        case 'gotoConversationList':
          result.gotoConversationList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(ConversationListState)]),
                    const FullType(RouteResult, const [const FullType(Empty)])
                  ]))
              as CommandState<RouteCommand<ConversationListState>,
                  RouteResult<Empty>>);
          break;
      }
    }

    return result.build();
  }
}

class _$BottomBarState extends BottomBarState {
  @override
  final MobileNavigationElement selectedTab;
  @override
  final CommandState<RouteCommand<DashboardState>, RouteResult<Empty>>
      gotoDashboard;
  @override
  final CommandState<RouteCommand<ConversationListState>, RouteResult<Empty>>
      gotoConversationList;

  factory _$BottomBarState([void updates(BottomBarStateBuilder b)]) =>
      (new BottomBarStateBuilder()..update(updates)).build();

  _$BottomBarState._(
      {this.selectedTab, this.gotoDashboard, this.gotoConversationList})
      : super._() {
    if (selectedTab == null) {
      throw new BuiltValueNullFieldError('BottomBarState', 'selectedTab');
    }
    if (gotoDashboard == null) {
      throw new BuiltValueNullFieldError('BottomBarState', 'gotoDashboard');
    }
    if (gotoConversationList == null) {
      throw new BuiltValueNullFieldError(
          'BottomBarState', 'gotoConversationList');
    }
  }

  @override
  BottomBarState rebuild(void updates(BottomBarStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  BottomBarStateBuilder toBuilder() =>
      new BottomBarStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BottomBarState &&
        selectedTab == other.selectedTab &&
        gotoDashboard == other.gotoDashboard &&
        gotoConversationList == other.gotoConversationList;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, selectedTab.hashCode), gotoDashboard.hashCode),
        gotoConversationList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BottomBarState')
          ..add('selectedTab', selectedTab)
          ..add('gotoDashboard', gotoDashboard)
          ..add('gotoConversationList', gotoConversationList))
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

  CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Empty>>
      _gotoDashboard;
  CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Empty>>
      get gotoDashboard => _$this._gotoDashboard ??= new CommandStateBuilder<
          RouteCommand<DashboardState>, RouteResult<Empty>>();
  set gotoDashboard(
          CommandStateBuilder<RouteCommand<DashboardState>, RouteResult<Empty>>
              gotoDashboard) =>
      _$this._gotoDashboard = gotoDashboard;

  CommandStateBuilder<RouteCommand<ConversationListState>, RouteResult<Empty>>
      _gotoConversationList;
  CommandStateBuilder<RouteCommand<ConversationListState>, RouteResult<Empty>>
      get gotoConversationList =>
          _$this._gotoConversationList ??= new CommandStateBuilder<
              RouteCommand<ConversationListState>, RouteResult<Empty>>();
  set gotoConversationList(
          CommandStateBuilder<RouteCommand<ConversationListState>,
                  RouteResult<Empty>>
              gotoConversationList) =>
      _$this._gotoConversationList = gotoConversationList;

  BottomBarStateBuilder();

  BottomBarStateBuilder get _$this {
    if (_$v != null) {
      _selectedTab = _$v.selectedTab;
      _gotoDashboard = _$v.gotoDashboard?.toBuilder();
      _gotoConversationList = _$v.gotoConversationList?.toBuilder();
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
    _$BottomBarState _$result;
    try {
      _$result = _$v ??
          new _$BottomBarState._(
              selectedTab: selectedTab,
              gotoDashboard: gotoDashboard.build(),
              gotoConversationList: gotoConversationList.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gotoDashboard';
        gotoDashboard.build();
        _$failedField = 'gotoConversationList';
        gotoConversationList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BottomBarState', _$failedField, e.toString());
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

typedef StatefulActionsOptions<BottomBarState, BottomBarStateBuilder,
    BottomBarActions> BottomBarActionsOptions();

class _$BottomBarActions extends BottomBarActions {
  final StatefulActionsOptions<BottomBarState, BottomBarStateBuilder,
      BottomBarActions> $options;

  final ActionDispatcher<BottomBarState> $replace;
  final FieldDispatcher<MobileNavigationElement> selectedTab;
  final DashboardRoute gotoDashboard;
  final ConversationListRoute gotoConversationList;

  _$BottomBarActions._(this.$options)
      : $replace =
            $options.action<BottomBarState>('\$replace', (a) => a?.$replace),
        selectedTab = $options.actionField<MobileNavigationElement>(
            'selectedTab',
            (a) => a?.selectedTab,
            (s) => s?.selectedTab,
            (p, b) => p?.selectedTab = b),
        gotoDashboard = DashboardRoute(() => $options.stateful<
                CommandState<RouteCommand<DashboardState>, RouteResult<Empty>>,
                CommandStateBuilder<RouteCommand<DashboardState>,
                    RouteResult<Empty>>,
                DashboardRoute>(
            'gotoDashboard',
            (a) => a.gotoDashboard,
            (s) => s?.gotoDashboard,
            (b) => b?.gotoDashboard,
            (parent, builder) => parent?.gotoDashboard = builder)),
        gotoConversationList = ConversationListRoute(() => $options.stateful<
                CommandState<RouteCommand<ConversationListState>,
                    RouteResult<Empty>>,
                CommandStateBuilder<RouteCommand<ConversationListState>,
                    RouteResult<Empty>>,
                ConversationListRoute>(
            'gotoConversationList',
            (a) => a.gotoConversationList,
            (s) => s?.gotoConversationList,
            (b) => b?.gotoConversationList,
            (parent, builder) => parent?.gotoConversationList = builder)),
        super._();

  factory _$BottomBarActions(BottomBarActionsOptions options) =>
      _$BottomBarActions._(options());

  @override
  BottomBarStateBuilder $newBuilder() => BottomBarStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.gotoDashboard,
        this.gotoConversationList,
      ]);

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
    gotoDashboard.$reducer(reducer);
    gotoConversationList.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    gotoDashboard.$middleware(middleware);
    gotoConversationList.$middleware(middleware);
  }

// @override
// Serializer<BottomBarStateBottomBarActions> get $serializer => BottomBarStateBottomBarActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(BottomBarState);
}
