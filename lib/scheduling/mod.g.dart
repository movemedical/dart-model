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
  final String wireName = 'movemedical_model/scheduling/SchedulingModuleState';

  @override
  Iterable serialize(Serializers serializers, SchedulingModuleState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.caseEventList != null) {
      result
        ..add('caseEventList')
        ..add(serializers.serialize(object.caseEventList,
            specifiedType: const FullType(CaseEventListState)));
    }
    if (object.caseEventListRoute != null) {
      result
        ..add('caseEventListRoute')
        ..add(serializers.serialize(object.caseEventListRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  RouteCommand, const [const FullType(CaseEventListState)]),
              const FullType(RouteResult, const [const FullType(Nothing)])
            ])));
    }
    if (object.caseEventListFilter != null) {
      result
        ..add('caseEventListFilter')
        ..add(serializers.serialize(object.caseEventListFilter,
            specifiedType: const FullType(CaseEventListFilterState)));
    }
    if (object.caseEventListFilterRoute != null) {
      result
        ..add('caseEventListFilterRoute')
        ..add(serializers.serialize(object.caseEventListFilterRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(RouteCommand,
                  const [const FullType(CaseEventListFilterState)]),
              const FullType(
                  RouteResult, const [const FullType(ListCaseEventsApiRequest)])
            ])));
    }
    if (object.createCaseEvent != null) {
      result
        ..add('createCaseEvent')
        ..add(serializers.serialize(object.createCaseEvent,
            specifiedType: const FullType(CreateCaseEventState)));
    }
    if (object.createCaseEventRoute != null) {
      result
        ..add('createCaseEventRoute')
        ..add(serializers.serialize(object.createCaseEventRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  RouteCommand, const [const FullType(CreateCaseEventState)]),
              const FullType(RouteResult,
                  const [const FullType(CreateCaseEventApiResponse)])
            ])));
    }
    if (object.caseEventDetail != null) {
      result
        ..add('caseEventDetail')
        ..add(serializers.serialize(object.caseEventDetail,
            specifiedType: const FullType(CaseEventDetailState)));
    }
    if (object.caseEventDetailRoute != null) {
      result
        ..add('caseEventDetailRoute')
        ..add(serializers.serialize(object.caseEventDetailRoute,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  RouteCommand, const [const FullType(CaseEventDetailState)]),
              const FullType(RouteResult, const [const FullType(Nothing)])
            ])));
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
        case 'caseEventList':
          result.caseEventList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CaseEventListState))
              as CaseEventListState);
          break;
        case 'caseEventListRoute':
          result.caseEventListRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(CaseEventListState)]),
                    const FullType(RouteResult, const [const FullType(Nothing)])
                  ]))
              as CommandState<RouteCommand<CaseEventListState>,
                  RouteResult<Nothing>>);
          break;
        case 'caseEventListFilter':
          result.caseEventListFilter.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CaseEventListFilterState))
              as CaseEventListFilterState);
          break;
        case 'caseEventListFilterRoute':
          result.caseEventListFilterRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(CaseEventListFilterState)]),
                    const FullType(RouteResult,
                        const [const FullType(ListCaseEventsApiRequest)])
                  ]))
              as CommandState<RouteCommand<CaseEventListFilterState>,
                  RouteResult<ListCaseEventsApiRequest>>);
          break;
        case 'createCaseEvent':
          result.createCaseEvent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CreateCaseEventState))
              as CreateCaseEventState);
          break;
        case 'createCaseEventRoute':
          result.createCaseEventRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(CreateCaseEventState)]),
                    const FullType(RouteResult,
                        const [const FullType(CreateCaseEventApiResponse)])
                  ]))
              as CommandState<RouteCommand<CreateCaseEventState>,
                  RouteResult<CreateCaseEventApiResponse>>);
          break;
        case 'caseEventDetail':
          result.caseEventDetail.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CaseEventDetailState))
              as CaseEventDetailState);
          break;
        case 'caseEventDetailRoute':
          result.caseEventDetailRoute.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(RouteCommand,
                        const [const FullType(CaseEventDetailState)]),
                    const FullType(RouteResult, const [const FullType(Nothing)])
                  ]))
              as CommandState<RouteCommand<CaseEventDetailState>,
                  RouteResult<Nothing>>);
          break;
      }
    }

    return result.build();
  }
}

class _$SchedulingModuleState extends SchedulingModuleState {
  @override
  final CaseEventListState caseEventList;
  @override
  final CommandState<RouteCommand<CaseEventListState>, RouteResult<Nothing>>
      caseEventListRoute;
  @override
  final CaseEventListFilterState caseEventListFilter;
  @override
  final CommandState<RouteCommand<CaseEventListFilterState>,
      RouteResult<ListCaseEventsApiRequest>> caseEventListFilterRoute;
  @override
  final CreateCaseEventState createCaseEvent;
  @override
  final CommandState<RouteCommand<CreateCaseEventState>,
      RouteResult<CreateCaseEventApiResponse>> createCaseEventRoute;
  @override
  final CaseEventDetailState caseEventDetail;
  @override
  final CommandState<RouteCommand<CaseEventDetailState>, RouteResult<Nothing>>
      caseEventDetailRoute;

  factory _$SchedulingModuleState(
          [void updates(SchedulingModuleStateBuilder b)]) =>
      (new SchedulingModuleStateBuilder()..update(updates)).build();

  _$SchedulingModuleState._(
      {this.caseEventList,
      this.caseEventListRoute,
      this.caseEventListFilter,
      this.caseEventListFilterRoute,
      this.createCaseEvent,
      this.createCaseEventRoute,
      this.caseEventDetail,
      this.caseEventDetailRoute})
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
        caseEventList == other.caseEventList &&
        caseEventListRoute == other.caseEventListRoute &&
        caseEventListFilter == other.caseEventListFilter &&
        caseEventListFilterRoute == other.caseEventListFilterRoute &&
        createCaseEvent == other.createCaseEvent &&
        createCaseEventRoute == other.createCaseEventRoute &&
        caseEventDetail == other.caseEventDetail &&
        caseEventDetailRoute == other.caseEventDetailRoute;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, caseEventList.hashCode),
                                caseEventListRoute.hashCode),
                            caseEventListFilter.hashCode),
                        caseEventListFilterRoute.hashCode),
                    createCaseEvent.hashCode),
                createCaseEventRoute.hashCode),
            caseEventDetail.hashCode),
        caseEventDetailRoute.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SchedulingModuleState')
          ..add('caseEventList', caseEventList)
          ..add('caseEventListRoute', caseEventListRoute)
          ..add('caseEventListFilter', caseEventListFilter)
          ..add('caseEventListFilterRoute', caseEventListFilterRoute)
          ..add('createCaseEvent', createCaseEvent)
          ..add('createCaseEventRoute', createCaseEventRoute)
          ..add('caseEventDetail', caseEventDetail)
          ..add('caseEventDetailRoute', caseEventDetailRoute))
        .toString();
  }
}

class SchedulingModuleStateBuilder
    implements Builder<SchedulingModuleState, SchedulingModuleStateBuilder> {
  _$SchedulingModuleState _$v;

  CaseEventListStateBuilder _caseEventList;
  CaseEventListStateBuilder get caseEventList =>
      _$this._caseEventList ??= new CaseEventListStateBuilder();
  set caseEventList(CaseEventListStateBuilder caseEventList) =>
      _$this._caseEventList = caseEventList;

  CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Nothing>>
      _caseEventListRoute;
  CommandStateBuilder<RouteCommand<CaseEventListState>, RouteResult<Nothing>>
      get caseEventListRoute =>
          _$this._caseEventListRoute ??= new CommandStateBuilder<
              RouteCommand<CaseEventListState>, RouteResult<Nothing>>();
  set caseEventListRoute(
          CommandStateBuilder<RouteCommand<CaseEventListState>,
                  RouteResult<Nothing>>
              caseEventListRoute) =>
      _$this._caseEventListRoute = caseEventListRoute;

  CaseEventListFilterStateBuilder _caseEventListFilter;
  CaseEventListFilterStateBuilder get caseEventListFilter =>
      _$this._caseEventListFilter ??= new CaseEventListFilterStateBuilder();
  set caseEventListFilter(
          CaseEventListFilterStateBuilder caseEventListFilter) =>
      _$this._caseEventListFilter = caseEventListFilter;

  CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
      RouteResult<ListCaseEventsApiRequest>> _caseEventListFilterRoute;
  CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>
      get caseEventListFilterRoute =>
          _$this._caseEventListFilterRoute ??= new CommandStateBuilder<
              RouteCommand<CaseEventListFilterState>,
              RouteResult<ListCaseEventsApiRequest>>();
  set caseEventListFilterRoute(
          CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
                  RouteResult<ListCaseEventsApiRequest>>
              caseEventListFilterRoute) =>
      _$this._caseEventListFilterRoute = caseEventListFilterRoute;

  CreateCaseEventStateBuilder _createCaseEvent;
  CreateCaseEventStateBuilder get createCaseEvent =>
      _$this._createCaseEvent ??= new CreateCaseEventStateBuilder();
  set createCaseEvent(CreateCaseEventStateBuilder createCaseEvent) =>
      _$this._createCaseEvent = createCaseEvent;

  CommandStateBuilder<RouteCommand<CreateCaseEventState>,
      RouteResult<CreateCaseEventApiResponse>> _createCaseEventRoute;
  CommandStateBuilder<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>
      get createCaseEventRoute =>
          _$this._createCaseEventRoute ??= new CommandStateBuilder<
              RouteCommand<CreateCaseEventState>,
              RouteResult<CreateCaseEventApiResponse>>();
  set createCaseEventRoute(
          CommandStateBuilder<RouteCommand<CreateCaseEventState>,
                  RouteResult<CreateCaseEventApiResponse>>
              createCaseEventRoute) =>
      _$this._createCaseEventRoute = createCaseEventRoute;

  CaseEventDetailStateBuilder _caseEventDetail;
  CaseEventDetailStateBuilder get caseEventDetail =>
      _$this._caseEventDetail ??= new CaseEventDetailStateBuilder();
  set caseEventDetail(CaseEventDetailStateBuilder caseEventDetail) =>
      _$this._caseEventDetail = caseEventDetail;

  CommandStateBuilder<RouteCommand<CaseEventDetailState>, RouteResult<Nothing>>
      _caseEventDetailRoute;
  CommandStateBuilder<RouteCommand<CaseEventDetailState>, RouteResult<Nothing>>
      get caseEventDetailRoute =>
          _$this._caseEventDetailRoute ??= new CommandStateBuilder<
              RouteCommand<CaseEventDetailState>, RouteResult<Nothing>>();
  set caseEventDetailRoute(
          CommandStateBuilder<RouteCommand<CaseEventDetailState>,
                  RouteResult<Nothing>>
              caseEventDetailRoute) =>
      _$this._caseEventDetailRoute = caseEventDetailRoute;

  SchedulingModuleStateBuilder();

  SchedulingModuleStateBuilder get _$this {
    if (_$v != null) {
      _caseEventList = _$v.caseEventList?.toBuilder();
      _caseEventListRoute = _$v.caseEventListRoute?.toBuilder();
      _caseEventListFilter = _$v.caseEventListFilter?.toBuilder();
      _caseEventListFilterRoute = _$v.caseEventListFilterRoute?.toBuilder();
      _createCaseEvent = _$v.createCaseEvent?.toBuilder();
      _createCaseEventRoute = _$v.createCaseEventRoute?.toBuilder();
      _caseEventDetail = _$v.caseEventDetail?.toBuilder();
      _caseEventDetailRoute = _$v.caseEventDetailRoute?.toBuilder();
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
              caseEventList: _caseEventList?.build(),
              caseEventListRoute: _caseEventListRoute?.build(),
              caseEventListFilter: _caseEventListFilter?.build(),
              caseEventListFilterRoute: _caseEventListFilterRoute?.build(),
              createCaseEvent: _createCaseEvent?.build(),
              createCaseEventRoute: _createCaseEventRoute?.build(),
              caseEventDetail: _caseEventDetail?.build(),
              caseEventDetailRoute: _caseEventDetailRoute?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'caseEventList';
        _caseEventList?.build();
        _$failedField = 'caseEventListRoute';
        _caseEventListRoute?.build();
        _$failedField = 'caseEventListFilter';
        _caseEventListFilter?.build();
        _$failedField = 'caseEventListFilterRoute';
        _caseEventListFilterRoute?.build();
        _$failedField = 'createCaseEvent';
        _createCaseEvent?.build();
        _$failedField = 'createCaseEventRoute';
        _createCaseEventRoute?.build();
        _$failedField = 'caseEventDetail';
        _caseEventDetail?.build();
        _$failedField = 'caseEventDetailRoute';
        _caseEventDetailRoute?.build();
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
      SchedulingModuleStateBuilder, SchedulingModuleActions> options$;

  final ActionDispatcher<SchedulingModuleState> replace$;
  final CaseEventListActions caseEventList;
  final CaseEventListRoute caseEventListRoute;
  final CaseEventListFilterActions caseEventListFilter;
  final CaseEventListFilterRoute caseEventListFilterRoute;
  final CreateCaseEventActions createCaseEvent;
  final CreateCaseEventRoute createCaseEventRoute;
  final CaseEventDetailActions caseEventDetail;
  final CaseEventDetailRoute caseEventDetailRoute;

  _$SchedulingModuleActions._(this.options$)
      : replace$ = options$.action<SchedulingModuleState>(
            'replace\$', (a) => a?.replace$),
        caseEventList = CaseEventListActions(() => options$.stateful<
                CaseEventListState,
                CaseEventListStateBuilder,
                CaseEventListActions>(
            'caseEventList',
            (a) => a.caseEventList,
            (s) => s?.caseEventList,
            (b) => b?.caseEventList,
            (parent, builder) => parent?.caseEventList = builder)),
        caseEventListRoute = CaseEventListRoute(() => options$.stateful<
                CommandState<RouteCommand<CaseEventListState>,
                    RouteResult<Nothing>>,
                CommandStateBuilder<RouteCommand<CaseEventListState>,
                    RouteResult<Nothing>>,
                CaseEventListRoute>(
            'caseEventListRoute',
            (a) => a.caseEventListRoute,
            (s) => s?.caseEventListRoute,
            (b) => b?.caseEventListRoute,
            (parent, builder) => parent?.caseEventListRoute = builder)),
        caseEventListFilter = CaseEventListFilterActions(() =>
            options$.stateful<
                    CaseEventListFilterState,
                    CaseEventListFilterStateBuilder,
                    CaseEventListFilterActions>(
                'caseEventListFilter',
                (a) => a.caseEventListFilter,
                (s) => s?.caseEventListFilter,
                (b) => b?.caseEventListFilter,
                (parent, builder) => parent?.caseEventListFilter = builder)),
        caseEventListFilterRoute = CaseEventListFilterRoute(() =>
            options$.stateful<
                    CommandState<RouteCommand<CaseEventListFilterState>,
                        RouteResult<ListCaseEventsApiRequest>>,
                    CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
                        RouteResult<ListCaseEventsApiRequest>>,
                    CaseEventListFilterRoute>(
                'caseEventListFilterRoute',
                (a) => a.caseEventListFilterRoute,
                (s) => s?.caseEventListFilterRoute,
                (b) => b?.caseEventListFilterRoute,
                (parent, builder) =>
                    parent?.caseEventListFilterRoute = builder)),
        createCaseEvent = CreateCaseEventActions(() => options$.stateful<
                CreateCaseEventState,
                CreateCaseEventStateBuilder,
                CreateCaseEventActions>(
            'createCaseEvent',
            (a) => a.createCaseEvent,
            (s) => s?.createCaseEvent,
            (b) => b?.createCaseEvent,
            (parent, builder) => parent?.createCaseEvent = builder)),
        createCaseEventRoute = CreateCaseEventRoute(() => options$.stateful<
                CommandState<RouteCommand<CreateCaseEventState>,
                    RouteResult<CreateCaseEventApiResponse>>,
                CommandStateBuilder<RouteCommand<CreateCaseEventState>,
                    RouteResult<CreateCaseEventApiResponse>>,
                CreateCaseEventRoute>(
            'createCaseEventRoute',
            (a) => a.createCaseEventRoute,
            (s) => s?.createCaseEventRoute,
            (b) => b?.createCaseEventRoute,
            (parent, builder) => parent?.createCaseEventRoute = builder)),
        caseEventDetail = CaseEventDetailActions(() => options$.stateful<
                CaseEventDetailState,
                CaseEventDetailStateBuilder,
                CaseEventDetailActions>(
            'caseEventDetail',
            (a) => a.caseEventDetail,
            (s) => s?.caseEventDetail,
            (b) => b?.caseEventDetail,
            (parent, builder) => parent?.caseEventDetail = builder)),
        caseEventDetailRoute = CaseEventDetailRoute(() => options$.stateful<
                CommandState<RouteCommand<CaseEventDetailState>,
                    RouteResult<Nothing>>,
                CommandStateBuilder<RouteCommand<CaseEventDetailState>,
                    RouteResult<Nothing>>,
                CaseEventDetailRoute>(
            'caseEventDetailRoute',
            (a) => a.caseEventDetailRoute,
            (s) => s?.caseEventDetailRoute,
            (b) => b?.caseEventDetailRoute,
            (parent, builder) => parent?.caseEventDetailRoute = builder)),
        super._();

  factory _$SchedulingModuleActions(SchedulingModuleActionsOptions options) =>
      _$SchedulingModuleActions._(options());

  @override
  SchedulingModuleState get initialState$ => SchedulingModuleState();

  @override
  SchedulingModuleStateBuilder newBuilder$() => SchedulingModuleStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.caseEventList,
        this.caseEventListRoute,
        this.caseEventListFilter,
        this.caseEventListFilterRoute,
        this.createCaseEvent,
        this.createCaseEventRoute,
        this.caseEventDetail,
        this.caseEventDetailRoute,
      ]);

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
      ]);

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    caseEventList.reducer$(reducer);
    caseEventListRoute.reducer$(reducer);
    caseEventListFilter.reducer$(reducer);
    caseEventListFilterRoute.reducer$(reducer);
    createCaseEvent.reducer$(reducer);
    createCaseEventRoute.reducer$(reducer);
    caseEventDetail.reducer$(reducer);
    caseEventDetailRoute.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    caseEventList.middleware$(middleware);
    caseEventListRoute.middleware$(middleware);
    caseEventListFilter.middleware$(middleware);
    caseEventListFilterRoute.middleware$(middleware);
    createCaseEvent.middleware$(middleware);
    createCaseEventRoute.middleware$(middleware);
    caseEventDetail.middleware$(middleware);
    caseEventDetailRoute.middleware$(middleware);
  }
}
