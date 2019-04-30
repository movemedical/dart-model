// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CaseEventListFilterState> _$caseEventListFilterStateSerializer =
    new _$CaseEventListFilterStateSerializer();

class _$CaseEventListFilterStateSerializer
    implements StructuredSerializer<CaseEventListFilterState> {
  @override
  final Iterable<Type> types = const [
    CaseEventListFilterState,
    _$CaseEventListFilterState
  ];
  @override
  final String wireName =
      'movemedical_model/scheduling/case_event/CaseEventListFilterState';

  @override
  Iterable serialize(Serializers serializers, CaseEventListFilterState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(ListCaseEventsApiRequest)),
      'bizUnits',
      serializers.serialize(object.bizUnits,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GetUiSetupAllApiBizUnit)])),
      'listCaseTypes',
      serializers.serialize(object.listCaseTypes,
          specifiedType: const FullType(CommandState, const [
            const FullType(
                ApiCommand, const [const FullType(ListCaseTypesApiRequest)]),
            const FullType(
                ApiResult, const [const FullType(ListCaseTypesApiResponse)])
          ])),
      'caseTypes',
      serializers.serialize(object.caseTypes,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CaseType)])),
      'listHospitals',
      serializers.serialize(object.listHospitals,
          specifiedType: const FullType(CommandState, const [
            const FullType(ApiCommand,
                const [const FullType(ListHospitalsForSchedulingApiRequest)]),
            const FullType(ApiResult,
                const [const FullType(ListHospitalsForSchedulingApiResponse)])
          ])),
      'hospitals',
      serializers.serialize(object.hospitals,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Hospital)])),
      'listPhysicians',
      serializers.serialize(object.listPhysicians,
          specifiedType: const FullType(CommandState, const [
            const FullType(ApiCommand, const [
              const FullType(ListSurgeonPhysiciansForSchedulingApiRequest)
            ]),
            const FullType(ApiResult, const [
              const FullType(ListSurgeonPhysiciansForSchedulingApiResponse)
            ])
          ])),
      'physicians',
      serializers.serialize(object.physicians,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Physician)])),
      'listHcrTeams',
      serializers.serialize(object.listHcrTeams,
          specifiedType: const FullType(CommandState, const [
            const FullType(
                ApiCommand, const [const FullType(SearchHcrTeamsApiRequest)]),
            const FullType(
                ApiResult, const [const FullType(SearchHcrTeamsApiResponse)])
          ])),
      'hcrTeams',
      serializers.serialize(object.hcrTeams,
          specifiedType:
              const FullType(BuiltList, const [const FullType(HcrTeam)])),
      'listProcedures',
      serializers.serialize(object.listProcedures,
          specifiedType: const FullType(CommandState, const [
            const FullType(ApiCommand,
                const [const FullType(ListProceduresForSearchApiRequest)]),
            const FullType(ApiResult,
                const [const FullType(ListProceduresForSearchApiResponse)])
          ])),
      'procedures',
      serializers.serialize(object.procedures,
          specifiedType: const FullType(BuiltList,
              const [const FullType(ListProceduresForSearchApiProcedure)])),
      'listSubProcedures',
      serializers.serialize(object.listSubProcedures,
          specifiedType: const FullType(CommandState, const [
            const FullType(ApiCommand,
                const [const FullType(ListSubProceduresApiRequest)]),
            const FullType(
                ApiResult, const [const FullType(ListSubProceduresApiResponse)])
          ])),
      'subProcedures',
      serializers.serialize(object.subProcedures,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SubProcedure)])),
    ];

    return result;
  }

  @override
  CaseEventListFilterState deserialize(
      Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CaseEventListFilterStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ListCaseEventsApiRequest))
              as ListCaseEventsApiRequest);
          break;
        case 'bizUnits':
          result.bizUnits.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GetUiSetupAllApiBizUnit)
              ])) as BuiltList);
          break;
        case 'listCaseTypes':
          result.listCaseTypes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(ListCaseTypesApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(ListCaseTypesApiResponse)])
                  ]))
              as CommandState<ApiCommand<ListCaseTypesApiRequest>,
                  ApiResult<ListCaseTypesApiResponse>>);
          break;
        case 'caseTypes':
          result.caseTypes.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(CaseType)])) as BuiltList);
          break;
        case 'listHospitals':
          result.listHospitals.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand, const [
                      const FullType(ListHospitalsForSchedulingApiRequest)
                    ]),
                    const FullType(ApiResult, const [
                      const FullType(ListHospitalsForSchedulingApiResponse)
                    ])
                  ]))
              as CommandState<ApiCommand<ListHospitalsForSchedulingApiRequest>,
                  ApiResult<ListHospitalsForSchedulingApiResponse>>);
          break;
        case 'hospitals':
          result.hospitals.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Hospital)])) as BuiltList);
          break;
        case 'listPhysicians':
          result.listPhysicians.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand, const [
                      const FullType(
                          ListSurgeonPhysiciansForSchedulingApiRequest)
                    ]),
                    const FullType(ApiResult, const [
                      const FullType(
                          ListSurgeonPhysiciansForSchedulingApiResponse)
                    ])
                  ]))
              as CommandState<
                  ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
                  ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>);
          break;
        case 'physicians':
          result.physicians.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Physician)])) as BuiltList);
          break;
        case 'listHcrTeams':
          result.listHcrTeams.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(SearchHcrTeamsApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(SearchHcrTeamsApiResponse)])
                  ]))
              as CommandState<ApiCommand<SearchHcrTeamsApiRequest>,
                  ApiResult<SearchHcrTeamsApiResponse>>);
          break;
        case 'hcrTeams':
          result.hcrTeams.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(HcrTeam)])) as BuiltList);
          break;
        case 'listProcedures':
          result.listProcedures.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand, const [
                      const FullType(ListProceduresForSearchApiRequest)
                    ]),
                    const FullType(ApiResult, const [
                      const FullType(ListProceduresForSearchApiResponse)
                    ])
                  ]))
              as CommandState<ApiCommand<ListProceduresForSearchApiRequest>,
                  ApiResult<ListProceduresForSearchApiResponse>>);
          break;
        case 'procedures':
          result.procedures.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ListProceduresForSearchApiProcedure)
              ])) as BuiltList);
          break;
        case 'listSubProcedures':
          result.listSubProcedures.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(ListSubProceduresApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(ListSubProceduresApiResponse)])
                  ]))
              as CommandState<ApiCommand<ListSubProceduresApiRequest>,
                  ApiResult<ListSubProceduresApiResponse>>);
          break;
        case 'subProcedures':
          result.subProcedures.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SubProcedure)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$CaseEventListFilterState extends CaseEventListFilterState {
  @override
  final ListCaseEventsApiRequest request;
  @override
  final BuiltList<GetUiSetupAllApiBizUnit> bizUnits;
  @override
  final CommandState<ApiCommand<ListCaseTypesApiRequest>,
      ApiResult<ListCaseTypesApiResponse>> listCaseTypes;
  @override
  final BuiltList<CaseType> caseTypes;
  @override
  final CommandState<ApiCommand<ListHospitalsForSchedulingApiRequest>,
      ApiResult<ListHospitalsForSchedulingApiResponse>> listHospitals;
  @override
  final BuiltList<Hospital> hospitals;
  @override
  final CommandState<ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
      ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>> listPhysicians;
  @override
  final BuiltList<Physician> physicians;
  @override
  final CommandState<ApiCommand<SearchHcrTeamsApiRequest>,
      ApiResult<SearchHcrTeamsApiResponse>> listHcrTeams;
  @override
  final BuiltList<HcrTeam> hcrTeams;
  @override
  final CommandState<ApiCommand<ListProceduresForSearchApiRequest>,
      ApiResult<ListProceduresForSearchApiResponse>> listProcedures;
  @override
  final BuiltList<ListProceduresForSearchApiProcedure> procedures;
  @override
  final CommandState<ApiCommand<ListSubProceduresApiRequest>,
      ApiResult<ListSubProceduresApiResponse>> listSubProcedures;
  @override
  final BuiltList<SubProcedure> subProcedures;

  factory _$CaseEventListFilterState(
          [void updates(CaseEventListFilterStateBuilder b)]) =>
      (new CaseEventListFilterStateBuilder()..update(updates)).build();

  _$CaseEventListFilterState._(
      {this.request,
      this.bizUnits,
      this.listCaseTypes,
      this.caseTypes,
      this.listHospitals,
      this.hospitals,
      this.listPhysicians,
      this.physicians,
      this.listHcrTeams,
      this.hcrTeams,
      this.listProcedures,
      this.procedures,
      this.listSubProcedures,
      this.subProcedures})
      : super._() {
    if (request == null) {
      throw new BuiltValueNullFieldError('CaseEventListFilterState', 'request');
    }
    if (bizUnits == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'bizUnits');
    }
    if (listCaseTypes == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'listCaseTypes');
    }
    if (caseTypes == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'caseTypes');
    }
    if (listHospitals == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'listHospitals');
    }
    if (hospitals == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'hospitals');
    }
    if (listPhysicians == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'listPhysicians');
    }
    if (physicians == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'physicians');
    }
    if (listHcrTeams == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'listHcrTeams');
    }
    if (hcrTeams == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'hcrTeams');
    }
    if (listProcedures == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'listProcedures');
    }
    if (procedures == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'procedures');
    }
    if (listSubProcedures == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'listSubProcedures');
    }
    if (subProcedures == null) {
      throw new BuiltValueNullFieldError(
          'CaseEventListFilterState', 'subProcedures');
    }
  }

  @override
  CaseEventListFilterState rebuild(
          void updates(CaseEventListFilterStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CaseEventListFilterStateBuilder toBuilder() =>
      new CaseEventListFilterStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaseEventListFilterState &&
        request == other.request &&
        bizUnits == other.bizUnits &&
        listCaseTypes == other.listCaseTypes &&
        caseTypes == other.caseTypes &&
        listHospitals == other.listHospitals &&
        hospitals == other.hospitals &&
        listPhysicians == other.listPhysicians &&
        physicians == other.physicians &&
        listHcrTeams == other.listHcrTeams &&
        hcrTeams == other.hcrTeams &&
        listProcedures == other.listProcedures &&
        procedures == other.procedures &&
        listSubProcedures == other.listSubProcedures &&
        subProcedures == other.subProcedures;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(0,
                                                            request.hashCode),
                                                        bizUnits.hashCode),
                                                    listCaseTypes.hashCode),
                                                caseTypes.hashCode),
                                            listHospitals.hashCode),
                                        hospitals.hashCode),
                                    listPhysicians.hashCode),
                                physicians.hashCode),
                            listHcrTeams.hashCode),
                        hcrTeams.hashCode),
                    listProcedures.hashCode),
                procedures.hashCode),
            listSubProcedures.hashCode),
        subProcedures.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CaseEventListFilterState')
          ..add('request', request)
          ..add('bizUnits', bizUnits)
          ..add('listCaseTypes', listCaseTypes)
          ..add('caseTypes', caseTypes)
          ..add('listHospitals', listHospitals)
          ..add('hospitals', hospitals)
          ..add('listPhysicians', listPhysicians)
          ..add('physicians', physicians)
          ..add('listHcrTeams', listHcrTeams)
          ..add('hcrTeams', hcrTeams)
          ..add('listProcedures', listProcedures)
          ..add('procedures', procedures)
          ..add('listSubProcedures', listSubProcedures)
          ..add('subProcedures', subProcedures))
        .toString();
  }
}

class CaseEventListFilterStateBuilder
    implements
        Builder<CaseEventListFilterState, CaseEventListFilterStateBuilder> {
  _$CaseEventListFilterState _$v;

  ListCaseEventsApiRequestBuilder _request;
  ListCaseEventsApiRequestBuilder get request =>
      _$this._request ??= new ListCaseEventsApiRequestBuilder();
  set request(ListCaseEventsApiRequestBuilder request) =>
      _$this._request = request;

  ListBuilder<GetUiSetupAllApiBizUnit> _bizUnits;
  ListBuilder<GetUiSetupAllApiBizUnit> get bizUnits =>
      _$this._bizUnits ??= new ListBuilder<GetUiSetupAllApiBizUnit>();
  set bizUnits(ListBuilder<GetUiSetupAllApiBizUnit> bizUnits) =>
      _$this._bizUnits = bizUnits;

  CommandStateBuilder<ApiCommand<ListCaseTypesApiRequest>,
      ApiResult<ListCaseTypesApiResponse>> _listCaseTypes;
  CommandStateBuilder<ApiCommand<ListCaseTypesApiRequest>,
          ApiResult<ListCaseTypesApiResponse>>
      get listCaseTypes => _$this._listCaseTypes ??= new CommandStateBuilder<
          ApiCommand<ListCaseTypesApiRequest>,
          ApiResult<ListCaseTypesApiResponse>>();
  set listCaseTypes(
          CommandStateBuilder<ApiCommand<ListCaseTypesApiRequest>,
                  ApiResult<ListCaseTypesApiResponse>>
              listCaseTypes) =>
      _$this._listCaseTypes = listCaseTypes;

  ListBuilder<CaseType> _caseTypes;
  ListBuilder<CaseType> get caseTypes =>
      _$this._caseTypes ??= new ListBuilder<CaseType>();
  set caseTypes(ListBuilder<CaseType> caseTypes) =>
      _$this._caseTypes = caseTypes;

  CommandStateBuilder<ApiCommand<ListHospitalsForSchedulingApiRequest>,
      ApiResult<ListHospitalsForSchedulingApiResponse>> _listHospitals;
  CommandStateBuilder<ApiCommand<ListHospitalsForSchedulingApiRequest>,
          ApiResult<ListHospitalsForSchedulingApiResponse>>
      get listHospitals => _$this._listHospitals ??= new CommandStateBuilder<
          ApiCommand<ListHospitalsForSchedulingApiRequest>,
          ApiResult<ListHospitalsForSchedulingApiResponse>>();
  set listHospitals(
          CommandStateBuilder<ApiCommand<ListHospitalsForSchedulingApiRequest>,
                  ApiResult<ListHospitalsForSchedulingApiResponse>>
              listHospitals) =>
      _$this._listHospitals = listHospitals;

  ListBuilder<Hospital> _hospitals;
  ListBuilder<Hospital> get hospitals =>
      _$this._hospitals ??= new ListBuilder<Hospital>();
  set hospitals(ListBuilder<Hospital> hospitals) =>
      _$this._hospitals = hospitals;

  CommandStateBuilder<ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
      ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>> _listPhysicians;
  CommandStateBuilder<ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
          ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>
      get listPhysicians => _$this._listPhysicians ??= new CommandStateBuilder<
          ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
          ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>();
  set listPhysicians(
          CommandStateBuilder<
                  ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
                  ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>
              listPhysicians) =>
      _$this._listPhysicians = listPhysicians;

  ListBuilder<Physician> _physicians;
  ListBuilder<Physician> get physicians =>
      _$this._physicians ??= new ListBuilder<Physician>();
  set physicians(ListBuilder<Physician> physicians) =>
      _$this._physicians = physicians;

  CommandStateBuilder<ApiCommand<SearchHcrTeamsApiRequest>,
      ApiResult<SearchHcrTeamsApiResponse>> _listHcrTeams;
  CommandStateBuilder<ApiCommand<SearchHcrTeamsApiRequest>,
          ApiResult<SearchHcrTeamsApiResponse>>
      get listHcrTeams => _$this._listHcrTeams ??= new CommandStateBuilder<
          ApiCommand<SearchHcrTeamsApiRequest>,
          ApiResult<SearchHcrTeamsApiResponse>>();
  set listHcrTeams(
          CommandStateBuilder<ApiCommand<SearchHcrTeamsApiRequest>,
                  ApiResult<SearchHcrTeamsApiResponse>>
              listHcrTeams) =>
      _$this._listHcrTeams = listHcrTeams;

  ListBuilder<HcrTeam> _hcrTeams;
  ListBuilder<HcrTeam> get hcrTeams =>
      _$this._hcrTeams ??= new ListBuilder<HcrTeam>();
  set hcrTeams(ListBuilder<HcrTeam> hcrTeams) => _$this._hcrTeams = hcrTeams;

  CommandStateBuilder<ApiCommand<ListProceduresForSearchApiRequest>,
      ApiResult<ListProceduresForSearchApiResponse>> _listProcedures;
  CommandStateBuilder<ApiCommand<ListProceduresForSearchApiRequest>,
          ApiResult<ListProceduresForSearchApiResponse>>
      get listProcedures => _$this._listProcedures ??= new CommandStateBuilder<
          ApiCommand<ListProceduresForSearchApiRequest>,
          ApiResult<ListProceduresForSearchApiResponse>>();
  set listProcedures(
          CommandStateBuilder<ApiCommand<ListProceduresForSearchApiRequest>,
                  ApiResult<ListProceduresForSearchApiResponse>>
              listProcedures) =>
      _$this._listProcedures = listProcedures;

  ListBuilder<ListProceduresForSearchApiProcedure> _procedures;
  ListBuilder<ListProceduresForSearchApiProcedure> get procedures =>
      _$this._procedures ??=
          new ListBuilder<ListProceduresForSearchApiProcedure>();
  set procedures(ListBuilder<ListProceduresForSearchApiProcedure> procedures) =>
      _$this._procedures = procedures;

  CommandStateBuilder<ApiCommand<ListSubProceduresApiRequest>,
      ApiResult<ListSubProceduresApiResponse>> _listSubProcedures;
  CommandStateBuilder<ApiCommand<ListSubProceduresApiRequest>,
          ApiResult<ListSubProceduresApiResponse>>
      get listSubProcedures =>
          _$this._listSubProcedures ??= new CommandStateBuilder<
              ApiCommand<ListSubProceduresApiRequest>,
              ApiResult<ListSubProceduresApiResponse>>();
  set listSubProcedures(
          CommandStateBuilder<ApiCommand<ListSubProceduresApiRequest>,
                  ApiResult<ListSubProceduresApiResponse>>
              listSubProcedures) =>
      _$this._listSubProcedures = listSubProcedures;

  ListBuilder<SubProcedure> _subProcedures;
  ListBuilder<SubProcedure> get subProcedures =>
      _$this._subProcedures ??= new ListBuilder<SubProcedure>();
  set subProcedures(ListBuilder<SubProcedure> subProcedures) =>
      _$this._subProcedures = subProcedures;

  CaseEventListFilterStateBuilder();

  CaseEventListFilterStateBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
      _bizUnits = _$v.bizUnits?.toBuilder();
      _listCaseTypes = _$v.listCaseTypes?.toBuilder();
      _caseTypes = _$v.caseTypes?.toBuilder();
      _listHospitals = _$v.listHospitals?.toBuilder();
      _hospitals = _$v.hospitals?.toBuilder();
      _listPhysicians = _$v.listPhysicians?.toBuilder();
      _physicians = _$v.physicians?.toBuilder();
      _listHcrTeams = _$v.listHcrTeams?.toBuilder();
      _hcrTeams = _$v.hcrTeams?.toBuilder();
      _listProcedures = _$v.listProcedures?.toBuilder();
      _procedures = _$v.procedures?.toBuilder();
      _listSubProcedures = _$v.listSubProcedures?.toBuilder();
      _subProcedures = _$v.subProcedures?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaseEventListFilterState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CaseEventListFilterState;
  }

  @override
  void update(void updates(CaseEventListFilterStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CaseEventListFilterState build() {
    _$CaseEventListFilterState _$result;
    try {
      _$result = _$v ??
          new _$CaseEventListFilterState._(
              request: request.build(),
              bizUnits: bizUnits.build(),
              listCaseTypes: listCaseTypes.build(),
              caseTypes: caseTypes.build(),
              listHospitals: listHospitals.build(),
              hospitals: hospitals.build(),
              listPhysicians: listPhysicians.build(),
              physicians: physicians.build(),
              listHcrTeams: listHcrTeams.build(),
              hcrTeams: hcrTeams.build(),
              listProcedures: listProcedures.build(),
              procedures: procedures.build(),
              listSubProcedures: listSubProcedures.build(),
              subProcedures: subProcedures.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        request.build();
        _$failedField = 'bizUnits';
        bizUnits.build();
        _$failedField = 'listCaseTypes';
        listCaseTypes.build();
        _$failedField = 'caseTypes';
        caseTypes.build();
        _$failedField = 'listHospitals';
        listHospitals.build();
        _$failedField = 'hospitals';
        hospitals.build();
        _$failedField = 'listPhysicians';
        listPhysicians.build();
        _$failedField = 'physicians';
        physicians.build();
        _$failedField = 'listHcrTeams';
        listHcrTeams.build();
        _$failedField = 'hcrTeams';
        hcrTeams.build();
        _$failedField = 'listProcedures';
        listProcedures.build();
        _$failedField = 'procedures';
        procedures.build();
        _$failedField = 'listSubProcedures';
        listSubProcedures.build();
        _$failedField = 'subProcedures';
        subProcedures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CaseEventListFilterState', _$failedField, e.toString());
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
    CommandState<RouteCommand<CaseEventListFilterState>,
        RouteResult<ListCaseEventsApiRequest>>,
    CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
        RouteResult<ListCaseEventsApiRequest>>,
    CaseEventListFilterRoute> CaseEventListFilterRouteOptions();

class _$CaseEventListFilterRoute extends CaseEventListFilterRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>,
      CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>,
      CaseEventListFilterRoute> options$;

  final ActionDispatcher<
      CommandState<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>> replace$;
  final ActionDispatcher<String> cancel$;
  final ActionDispatcher<Command<RouteCommand<CaseEventListFilterState>>>
      execute$;
  final ActionDispatcher<CommandResult<RouteResult<ListCaseEventsApiRequest>>>
      result$;
  final ActionDispatcher<CommandProgress> progress$;

  _$CaseEventListFilterRoute._(this.options$)
      : replace$ = options$.action<
                CommandState<RouteCommand<CaseEventListFilterState>,
                    RouteResult<ListCaseEventsApiRequest>>>(
            'replace\$', (a) => a?.replace$),
        cancel$ = options$.action<String>('cancel\$', (a) => a?.cancel$),
        execute$ =
            options$.action<Command<RouteCommand<CaseEventListFilterState>>>(
                'execute\$', (a) => a?.execute$),
        result$ = options$
            .action<CommandResult<RouteResult<ListCaseEventsApiRequest>>>(
                'result\$', (a) => a?.result$),
        progress$ =
            options$.action<CommandProgress>('progress\$', (a) => a?.progress$),
        super._();

  factory _$CaseEventListFilterRoute(CaseEventListFilterRouteOptions options) =>
      _$CaseEventListFilterRoute._(options());

  @override
  CommandState<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>
      get initialState$ => CommandState<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>();

  @override
  CommandStateBuilder<RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>
      newBuilder$() => CommandStateBuilder<
          RouteCommand<CaseEventListFilterState>,
          RouteResult<ListCaseEventsApiRequest>>();

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
        this.cancel$,
        this.execute$,
        this.result$,
        this.progress$,
      ]);

  @override
  RouteCommandBuilder<CaseEventListFilterState> newCommandBuilder() =>
      RouteCommand<CaseEventListFilterState>().toBuilder();

  @override
  RouteResultBuilder<ListCaseEventsApiRequest> newResultBuilder() =>
      RouteResult<ListCaseEventsApiRequest>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  CaseEventListFilterStateBuilder newCommandPayloadBuilder() =>
      CaseEventListFilterState().toBuilder();

  @override
  ListCaseEventsApiRequestBuilder newResultPayloadBuilder() =>
      ListCaseEventsApiRequest().toBuilder();

  @override
  Serializer<CaseEventListFilterState> get commandPayloadSerializer =>
      CaseEventListFilterState.serializer;

  @override
  Serializer<ListCaseEventsApiRequest> get resultPayloadSerializer =>
      ListCaseEventsApiRequest.serializer;
}

typedef StatefulActionsOptions<
    CaseEventListFilterState,
    CaseEventListFilterStateBuilder,
    CaseEventListFilterActions> CaseEventListFilterActionsOptions();

class _$CaseEventListFilterActions extends CaseEventListFilterActions {
  final StatefulActionsOptions<CaseEventListFilterState,
      CaseEventListFilterStateBuilder, CaseEventListFilterActions> options$;

  final ActionDispatcher<CaseEventListFilterState> replace$;
  final ActionDispatcher activated$;
  final ActionDispatcher deactivated$;
  final ActionDispatcher<CaseEventListFilterState> pushing$;
  final ActionDispatcher<ListCaseEventsApiRequest> popping$;
  final ListCaseEventsApiRequestActions request;
  final FieldDispatcher<BuiltList<GetUiSetupAllApiBizUnit>> bizUnits;
  final ListCaseTypesApi listCaseTypes;
  final FieldDispatcher<BuiltList<CaseType>> caseTypes;
  final ListHospitalsForSchedulingApi listHospitals;
  final FieldDispatcher<BuiltList<Hospital>> hospitals;
  final ListSurgeonPhysiciansForSchedulingApi listPhysicians;
  final FieldDispatcher<BuiltList<Physician>> physicians;
  final SearchHcrTeamsApi searchHcrTeams;
  final FieldDispatcher<BuiltList<HcrTeam>> hcrTeams;
  final ListProceduresForSearchApi listProcedures;
  final FieldDispatcher<BuiltList<ListProceduresForSearchApiProcedure>>
      procedures;
  final ListSubProceduresApi listSubProcedures;
  final FieldDispatcher<BuiltList<SubProcedure>> subProcedures;

  _$CaseEventListFilterActions._(this.options$)
      : replace$ = options$.action<CaseEventListFilterState>(
            'replace\$', (a) => a?.replace$),
        activated$ = options$.action('activated\$', (a) => a?.activated$),
        deactivated$ = options$.action('deactivated\$', (a) => a?.deactivated$),
        pushing$ = options$.action<CaseEventListFilterState>(
            'pushing\$', (a) => a?.pushing$),
        popping$ = options$.action<ListCaseEventsApiRequest>(
            'popping\$', (a) => a?.popping$),
        request = ListCaseEventsApiRequestActions(() => options$.stateful<
                ListCaseEventsApiRequest,
                ListCaseEventsApiRequestBuilder,
                ListCaseEventsApiRequestActions>(
            'request',
            (a) => a.request,
            (s) => s?.request,
            (b) => b?.request,
            (parent, builder) => parent?.request = builder)),
        bizUnits = options$.field<BuiltList<GetUiSetupAllApiBizUnit>>(
            'bizUnits',
            (a) => a?.bizUnits,
            (s) => s?.bizUnits,
            (p, b) => p?.bizUnits = b),
        listCaseTypes = ListCaseTypesApi(() => options$.stateful<
                CommandState<ApiCommand<ListCaseTypesApiRequest>,
                    ApiResult<ListCaseTypesApiResponse>>,
                CommandStateBuilder<ApiCommand<ListCaseTypesApiRequest>,
                    ApiResult<ListCaseTypesApiResponse>>,
                ListCaseTypesApi>(
            'listCaseTypes',
            (a) => a.listCaseTypes,
            (s) => s?.listCaseTypes,
            (b) => b?.listCaseTypes,
            (parent, builder) => parent?.listCaseTypes = builder)),
        caseTypes = options$.field<BuiltList<CaseType>>(
            'caseTypes',
            (a) => a?.caseTypes,
            (s) => s?.caseTypes,
            (p, b) => p?.caseTypes = b),
        listHospitals = ListHospitalsForSchedulingApi(() => options$.stateful<
                CommandState<ApiCommand<ListHospitalsForSchedulingApiRequest>,
                    ApiResult<ListHospitalsForSchedulingApiResponse>>,
                CommandStateBuilder<
                    ApiCommand<ListHospitalsForSchedulingApiRequest>,
                    ApiResult<ListHospitalsForSchedulingApiResponse>>,
                ListHospitalsForSchedulingApi>(
            'listHospitals',
            (a) => a.listHospitals,
            (s) => s?.listHospitals,
            (b) => b?.listHospitals,
            (parent, builder) => parent?.listHospitals = builder)),
        hospitals = options$.field<BuiltList<Hospital>>(
            'hospitals',
            (a) => a?.hospitals,
            (s) => s?.hospitals,
            (p, b) => p?.hospitals = b),
        listPhysicians = ListSurgeonPhysiciansForSchedulingApi(
            () =>
                options$.stateful<
                        CommandState<
                            ApiCommand<
                                ListSurgeonPhysiciansForSchedulingApiRequest>,
                            ApiResult<
                                ListSurgeonPhysiciansForSchedulingApiResponse>>,
                        CommandStateBuilder<
                            ApiCommand<
                                ListSurgeonPhysiciansForSchedulingApiRequest>,
                            ApiResult<
                                ListSurgeonPhysiciansForSchedulingApiResponse>>,
                        ListSurgeonPhysiciansForSchedulingApi>(
                    'listPhysicians',
                    (a) => a.listPhysicians,
                    (s) => s?.listPhysicians,
                    (b) => b?.listPhysicians,
                    (parent, builder) => parent?.listPhysicians = builder)),
        physicians = options$.field<BuiltList<Physician>>(
            'physicians',
            (a) => a?.physicians,
            (s) => s?.physicians,
            (p, b) => p?.physicians = b),
        searchHcrTeams = SearchHcrTeamsApi(() => options$.stateful<
                CommandState<ApiCommand<SearchHcrTeamsApiRequest>,
                    ApiResult<SearchHcrTeamsApiResponse>>,
                CommandStateBuilder<ApiCommand<SearchHcrTeamsApiRequest>,
                    ApiResult<SearchHcrTeamsApiResponse>>,
                SearchHcrTeamsApi>(
            'searchHcrTeams',
            (a) => a.searchHcrTeams,
            (s) => s?.searchHcrTeams,
            (b) => b?.searchHcrTeams,
            (parent, builder) => parent?.searchHcrTeams = builder)),
        hcrTeams = options$.field<BuiltList<HcrTeam>>('hcrTeams',
            (a) => a?.hcrTeams, (s) => s?.hcrTeams, (p, b) => p?.hcrTeams = b),
        listProcedures = ListProceduresForSearchApi(() => options$.stateful<
                CommandState<ApiCommand<ListProceduresForSearchApiRequest>,
                    ApiResult<ListProceduresForSearchApiResponse>>,
                CommandStateBuilder<
                    ApiCommand<ListProceduresForSearchApiRequest>,
                    ApiResult<ListProceduresForSearchApiResponse>>,
                ListProceduresForSearchApi>(
            'listProcedures',
            (a) => a.listProcedures,
            (s) => s?.listProcedures,
            (b) => b?.listProcedures,
            (parent, builder) => parent?.listProcedures = builder)),
        procedures =
            options$.field<BuiltList<ListProceduresForSearchApiProcedure>>(
                'procedures',
                (a) => a?.procedures,
                (s) => s?.procedures,
                (p, b) => p?.procedures = b),
        listSubProcedures = ListSubProceduresApi(() => options$.stateful<
                CommandState<ApiCommand<ListSubProceduresApiRequest>,
                    ApiResult<ListSubProceduresApiResponse>>,
                CommandStateBuilder<ApiCommand<ListSubProceduresApiRequest>,
                    ApiResult<ListSubProceduresApiResponse>>,
                ListSubProceduresApi>(
            'listSubProcedures',
            (a) => a.listSubProcedures,
            (s) => s?.listSubProcedures,
            (b) => b?.listSubProcedures,
            (parent, builder) => parent?.listSubProcedures = builder)),
        subProcedures = options$.field<BuiltList<SubProcedure>>(
            'subProcedures',
            (a) => a?.subProcedures,
            (s) => s?.subProcedures,
            (p, b) => p?.subProcedures = b),
        super._();

  factory _$CaseEventListFilterActions(
          CaseEventListFilterActionsOptions options) =>
      _$CaseEventListFilterActions._(options());

  @override
  CaseEventListFilterStateBuilder newBuilder$() =>
      CaseEventListFilterStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.request,
        this.listCaseTypes,
        this.listHospitals,
        this.listPhysicians,
        this.searchHcrTeams,
        this.listProcedures,
        this.listSubProcedures,
      ]);

  BuiltList<ActionDispatcher> _actions$;
  @override
  BuiltList<ActionDispatcher> get actions$ =>
      _actions$ ??= BuiltList<ActionDispatcher>([
        this.replace$,
        this.activated$,
        this.deactivated$,
        this.pushing$,
        this.popping$,
        this.bizUnits,
        this.caseTypes,
        this.hospitals,
        this.physicians,
        this.hcrTeams,
        this.procedures,
        this.subProcedures,
      ]);

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    request.reducer$(reducer);
    bizUnits.reducer$(reducer);
    listCaseTypes.reducer$(reducer);
    caseTypes.reducer$(reducer);
    listHospitals.reducer$(reducer);
    hospitals.reducer$(reducer);
    listPhysicians.reducer$(reducer);
    physicians.reducer$(reducer);
    searchHcrTeams.reducer$(reducer);
    hcrTeams.reducer$(reducer);
    listProcedures.reducer$(reducer);
    procedures.reducer$(reducer);
    listSubProcedures.reducer$(reducer);
    subProcedures.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    request.middleware$(middleware);
    listCaseTypes.middleware$(middleware);
    listHospitals.middleware$(middleware);
    listPhysicians.middleware$(middleware);
    searchHcrTeams.middleware$(middleware);
    listProcedures.middleware$(middleware);
    listSubProcedures.middleware$(middleware);
  }

  @override
  ListCaseEventsApiRequestBuilder newResultBuilder$() =>
      ListCaseEventsApiRequest().toBuilder();
}
