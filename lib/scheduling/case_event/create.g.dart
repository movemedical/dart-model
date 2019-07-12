// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateCaseEventState> _$createCaseEventStateSerializer =
    new _$CreateCaseEventStateSerializer();

class _$CreateCaseEventStateSerializer
    implements StructuredSerializer<CreateCaseEventState> {
  @override
  final Iterable<Type> types = const [
    CreateCaseEventState,
    _$CreateCaseEventState
  ];
  @override
  final String wireName =
      'movemedical_model/scheduling/case_event/CreateCaseEventState';

  @override
  Iterable serialize(Serializers serializers, CreateCaseEventState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.request != null) {
      result
        ..add('request')
        ..add(serializers.serialize(object.request,
            specifiedType: const FullType(CreateCaseEventApiRequest)));
    }
    if (object.bizUnit != null) {
      result
        ..add('bizUnit')
        ..add(serializers.serialize(object.bizUnit,
            specifiedType: const FullType(GetUiSetupAllApiBizUnit)));
    }
    if (object.caseType != null) {
      result
        ..add('caseType')
        ..add(serializers.serialize(object.caseType,
            specifiedType: const FullType(CaseType)));
    }
    if (object.procedure != null) {
      result
        ..add('procedure')
        ..add(serializers.serialize(object.procedure,
            specifiedType: const FullType(Procedure)));
    }
    if (object.subProcedure != null) {
      result
        ..add('subProcedure')
        ..add(serializers.serialize(object.subProcedure,
            specifiedType: const FullType(SubProcedure)));
    }
    if (object.physician != null) {
      result
        ..add('physician')
        ..add(serializers.serialize(object.physician,
            specifiedType: const FullType(Physician)));
    }
    if (object.hospital != null) {
      result
        ..add('hospital')
        ..add(serializers.serialize(object.hospital,
            specifiedType: const FullType(Hospital)));
    }
    if (object.hcrTeam != null) {
      result
        ..add('hcrTeam')
        ..add(serializers.serialize(object.hcrTeam,
            specifiedType: const FullType(HcrTeam)));
    }
    if (object.coverage != null) {
      result
        ..add('coverage')
        ..add(serializers.serialize(object.coverage,
            specifiedType: const FullType(HcrTeam)));
    }
    if (object.create != null) {
      result
        ..add('create')
        ..add(serializers.serialize(object.create,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand,
                  const [const FullType(CreateCaseEventApiRequest)]),
              const FullType(
                  ApiResult, const [const FullType(CreateCaseEventApiResponse)])
            ])));
    }
    if (object.searchHcrTeams != null) {
      result
        ..add('searchHcrTeams')
        ..add(serializers.serialize(object.searchHcrTeams,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  ApiCommand, const [const FullType(SearchHcrTeamsApiRequest)]),
              const FullType(
                  ApiResult, const [const FullType(SearchHcrTeamsApiResponse)])
            ])));
    }
    if (object.listSurgeonPhysicians != null) {
      result
        ..add('listSurgeonPhysicians')
        ..add(serializers.serialize(object.listSurgeonPhysicians,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand, const [
                const FullType(ListSurgeonPhysiciansForSchedulingApiRequest)
              ]),
              const FullType(ApiResult, const [
                const FullType(ListSurgeonPhysiciansForSchedulingApiResponse)
              ])
            ])));
    }
    if (object.listHospitals != null) {
      result
        ..add('listHospitals')
        ..add(serializers.serialize(object.listHospitals,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand,
                  const [const FullType(ListHospitalsForSchedulingApiRequest)]),
              const FullType(ApiResult,
                  const [const FullType(ListHospitalsForSchedulingApiResponse)])
            ])));
    }
    if (object.listProcedures != null) {
      result
        ..add('listProcedures')
        ..add(serializers.serialize(object.listProcedures,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand, const [
                const FullType(ListProceduresForSchedulingApiRequest)
              ]),
              const FullType(ApiResult, const [
                const FullType(ListProceduresForSchedulingApiResponse)
              ])
            ])));
    }
    if (object.listSubProcedures != null) {
      result
        ..add('listSubProcedures')
        ..add(serializers.serialize(object.listSubProcedures,
            specifiedType: const FullType(CommandState, const [
              const FullType(ApiCommand,
                  const [const FullType(ListSubProceduresApiRequest)]),
              const FullType(ApiResult,
                  const [const FullType(ListSubProceduresApiResponse)])
            ])));
    }
    if (object.listCaseTypes != null) {
      result
        ..add('listCaseTypes')
        ..add(serializers.serialize(object.listCaseTypes,
            specifiedType: const FullType(CommandState, const [
              const FullType(
                  ApiCommand, const [const FullType(ListCaseTypesApiRequest)]),
              const FullType(
                  ApiResult, const [const FullType(ListCaseTypesApiResponse)])
            ])));
    }

    return result;
  }

  @override
  CreateCaseEventState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateCaseEventStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'request':
          result.request.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CreateCaseEventApiRequest))
              as CreateCaseEventApiRequest);
          break;
        case 'bizUnit':
          result.bizUnit.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GetUiSetupAllApiBizUnit))
              as GetUiSetupAllApiBizUnit);
          break;
        case 'caseType':
          result.caseType.replace(serializers.deserialize(value,
              specifiedType: const FullType(CaseType)) as CaseType);
          break;
        case 'procedure':
          result.procedure.replace(serializers.deserialize(value,
              specifiedType: const FullType(Procedure)) as Procedure);
          break;
        case 'subProcedure':
          result.subProcedure.replace(serializers.deserialize(value,
              specifiedType: const FullType(SubProcedure)) as SubProcedure);
          break;
        case 'physician':
          result.physician.replace(serializers.deserialize(value,
              specifiedType: const FullType(Physician)) as Physician);
          break;
        case 'hospital':
          result.hospital.replace(serializers.deserialize(value,
              specifiedType: const FullType(Hospital)) as Hospital);
          break;
        case 'hcrTeam':
          result.hcrTeam.replace(serializers.deserialize(value,
              specifiedType: const FullType(HcrTeam)) as HcrTeam);
          break;
        case 'coverage':
          result.coverage.replace(serializers.deserialize(value,
              specifiedType: const FullType(HcrTeam)) as HcrTeam);
          break;
        case 'create':
          result.create.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(CreateCaseEventApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(CreateCaseEventApiResponse)])
                  ]))
              as CommandState<ApiCommand<CreateCaseEventApiRequest>,
                  ApiResult<CreateCaseEventApiResponse>>);
          break;
        case 'searchHcrTeams':
          result.searchHcrTeams.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand,
                        const [const FullType(SearchHcrTeamsApiRequest)]),
                    const FullType(ApiResult,
                        const [const FullType(SearchHcrTeamsApiResponse)])
                  ]))
              as CommandState<ApiCommand<SearchHcrTeamsApiRequest>,
                  ApiResult<SearchHcrTeamsApiResponse>>);
          break;
        case 'listSurgeonPhysicians':
          result.listSurgeonPhysicians.replace(serializers.deserialize(value,
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
        case 'listProcedures':
          result.listProcedures.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommandState, const [
                    const FullType(ApiCommand, const [
                      const FullType(ListProceduresForSchedulingApiRequest)
                    ]),
                    const FullType(ApiResult, const [
                      const FullType(ListProceduresForSchedulingApiResponse)
                    ])
                  ]))
              as CommandState<ApiCommand<ListProceduresForSchedulingApiRequest>,
                  ApiResult<ListProceduresForSchedulingApiResponse>>);
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
      }
    }

    return result.build();
  }
}

class _$CreateCaseEventState extends CreateCaseEventState {
  @override
  final CreateCaseEventApiRequest request;
  @override
  final GetUiSetupAllApiBizUnit bizUnit;
  @override
  final CaseType caseType;
  @override
  final Procedure procedure;
  @override
  final SubProcedure subProcedure;
  @override
  final Physician physician;
  @override
  final Hospital hospital;
  @override
  final HcrTeam hcrTeam;
  @override
  final HcrTeam coverage;
  @override
  final CommandState<ApiCommand<CreateCaseEventApiRequest>,
      ApiResult<CreateCaseEventApiResponse>> create;
  @override
  final CommandState<ApiCommand<SearchHcrTeamsApiRequest>,
      ApiResult<SearchHcrTeamsApiResponse>> searchHcrTeams;
  @override
  final CommandState<ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
          ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>
      listSurgeonPhysicians;
  @override
  final CommandState<ApiCommand<ListHospitalsForSchedulingApiRequest>,
      ApiResult<ListHospitalsForSchedulingApiResponse>> listHospitals;
  @override
  final CommandState<ApiCommand<ListProceduresForSchedulingApiRequest>,
      ApiResult<ListProceduresForSchedulingApiResponse>> listProcedures;
  @override
  final CommandState<ApiCommand<ListSubProceduresApiRequest>,
      ApiResult<ListSubProceduresApiResponse>> listSubProcedures;
  @override
  final CommandState<ApiCommand<ListCaseTypesApiRequest>,
      ApiResult<ListCaseTypesApiResponse>> listCaseTypes;

  factory _$CreateCaseEventState(
          [void updates(CreateCaseEventStateBuilder b)]) =>
      (new CreateCaseEventStateBuilder()..update(updates)).build();

  _$CreateCaseEventState._(
      {this.request,
      this.bizUnit,
      this.caseType,
      this.procedure,
      this.subProcedure,
      this.physician,
      this.hospital,
      this.hcrTeam,
      this.coverage,
      this.create,
      this.searchHcrTeams,
      this.listSurgeonPhysicians,
      this.listHospitals,
      this.listProcedures,
      this.listSubProcedures,
      this.listCaseTypes})
      : super._();

  @override
  CreateCaseEventState rebuild(void updates(CreateCaseEventStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCaseEventStateBuilder toBuilder() =>
      new CreateCaseEventStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCaseEventState &&
        request == other.request &&
        bizUnit == other.bizUnit &&
        caseType == other.caseType &&
        procedure == other.procedure &&
        subProcedure == other.subProcedure &&
        physician == other.physician &&
        hospital == other.hospital &&
        hcrTeam == other.hcrTeam &&
        coverage == other.coverage &&
        create == other.create &&
        searchHcrTeams == other.searchHcrTeams &&
        listSurgeonPhysicians == other.listSurgeonPhysicians &&
        listHospitals == other.listHospitals &&
        listProcedures == other.listProcedures &&
        listSubProcedures == other.listSubProcedures &&
        listCaseTypes == other.listCaseTypes;
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
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    request
                                                                        .hashCode),
                                                                bizUnit
                                                                    .hashCode),
                                                            caseType.hashCode),
                                                        procedure.hashCode),
                                                    subProcedure.hashCode),
                                                physician.hashCode),
                                            hospital.hashCode),
                                        hcrTeam.hashCode),
                                    coverage.hashCode),
                                create.hashCode),
                            searchHcrTeams.hashCode),
                        listSurgeonPhysicians.hashCode),
                    listHospitals.hashCode),
                listProcedures.hashCode),
            listSubProcedures.hashCode),
        listCaseTypes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateCaseEventState')
          ..add('request', request)
          ..add('bizUnit', bizUnit)
          ..add('caseType', caseType)
          ..add('procedure', procedure)
          ..add('subProcedure', subProcedure)
          ..add('physician', physician)
          ..add('hospital', hospital)
          ..add('hcrTeam', hcrTeam)
          ..add('coverage', coverage)
          ..add('create', create)
          ..add('searchHcrTeams', searchHcrTeams)
          ..add('listSurgeonPhysicians', listSurgeonPhysicians)
          ..add('listHospitals', listHospitals)
          ..add('listProcedures', listProcedures)
          ..add('listSubProcedures', listSubProcedures)
          ..add('listCaseTypes', listCaseTypes))
        .toString();
  }
}

class CreateCaseEventStateBuilder
    implements Builder<CreateCaseEventState, CreateCaseEventStateBuilder> {
  _$CreateCaseEventState _$v;

  CreateCaseEventApiRequestBuilder _request;
  CreateCaseEventApiRequestBuilder get request =>
      _$this._request ??= new CreateCaseEventApiRequestBuilder();
  set request(CreateCaseEventApiRequestBuilder request) =>
      _$this._request = request;

  GetUiSetupAllApiBizUnitBuilder _bizUnit;
  GetUiSetupAllApiBizUnitBuilder get bizUnit =>
      _$this._bizUnit ??= new GetUiSetupAllApiBizUnitBuilder();
  set bizUnit(GetUiSetupAllApiBizUnitBuilder bizUnit) =>
      _$this._bizUnit = bizUnit;

  CaseTypeBuilder _caseType;
  CaseTypeBuilder get caseType => _$this._caseType ??= new CaseTypeBuilder();
  set caseType(CaseTypeBuilder caseType) => _$this._caseType = caseType;

  ProcedureBuilder _procedure;
  ProcedureBuilder get procedure =>
      _$this._procedure ??= new ProcedureBuilder();
  set procedure(ProcedureBuilder procedure) => _$this._procedure = procedure;

  SubProcedureBuilder _subProcedure;
  SubProcedureBuilder get subProcedure =>
      _$this._subProcedure ??= new SubProcedureBuilder();
  set subProcedure(SubProcedureBuilder subProcedure) =>
      _$this._subProcedure = subProcedure;

  PhysicianBuilder _physician;
  PhysicianBuilder get physician =>
      _$this._physician ??= new PhysicianBuilder();
  set physician(PhysicianBuilder physician) => _$this._physician = physician;

  HospitalBuilder _hospital;
  HospitalBuilder get hospital => _$this._hospital ??= new HospitalBuilder();
  set hospital(HospitalBuilder hospital) => _$this._hospital = hospital;

  HcrTeamBuilder _hcrTeam;
  HcrTeamBuilder get hcrTeam => _$this._hcrTeam ??= new HcrTeamBuilder();
  set hcrTeam(HcrTeamBuilder hcrTeam) => _$this._hcrTeam = hcrTeam;

  HcrTeamBuilder _coverage;
  HcrTeamBuilder get coverage => _$this._coverage ??= new HcrTeamBuilder();
  set coverage(HcrTeamBuilder coverage) => _$this._coverage = coverage;

  CommandStateBuilder<ApiCommand<CreateCaseEventApiRequest>,
      ApiResult<CreateCaseEventApiResponse>> _create;
  CommandStateBuilder<ApiCommand<CreateCaseEventApiRequest>,
          ApiResult<CreateCaseEventApiResponse>>
      get create => _$this._create ??= new CommandStateBuilder<
          ApiCommand<CreateCaseEventApiRequest>,
          ApiResult<CreateCaseEventApiResponse>>();
  set create(
          CommandStateBuilder<ApiCommand<CreateCaseEventApiRequest>,
                  ApiResult<CreateCaseEventApiResponse>>
              create) =>
      _$this._create = create;

  CommandStateBuilder<ApiCommand<SearchHcrTeamsApiRequest>,
      ApiResult<SearchHcrTeamsApiResponse>> _searchHcrTeams;
  CommandStateBuilder<ApiCommand<SearchHcrTeamsApiRequest>,
          ApiResult<SearchHcrTeamsApiResponse>>
      get searchHcrTeams => _$this._searchHcrTeams ??= new CommandStateBuilder<
          ApiCommand<SearchHcrTeamsApiRequest>,
          ApiResult<SearchHcrTeamsApiResponse>>();
  set searchHcrTeams(
          CommandStateBuilder<ApiCommand<SearchHcrTeamsApiRequest>,
                  ApiResult<SearchHcrTeamsApiResponse>>
              searchHcrTeams) =>
      _$this._searchHcrTeams = searchHcrTeams;

  CommandStateBuilder<ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
          ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>
      _listSurgeonPhysicians;
  CommandStateBuilder<ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
          ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>
      get listSurgeonPhysicians =>
          _$this._listSurgeonPhysicians ??= new CommandStateBuilder<
              ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
              ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>();
  set listSurgeonPhysicians(
          CommandStateBuilder<
                  ApiCommand<ListSurgeonPhysiciansForSchedulingApiRequest>,
                  ApiResult<ListSurgeonPhysiciansForSchedulingApiResponse>>
              listSurgeonPhysicians) =>
      _$this._listSurgeonPhysicians = listSurgeonPhysicians;

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

  CommandStateBuilder<ApiCommand<ListProceduresForSchedulingApiRequest>,
      ApiResult<ListProceduresForSchedulingApiResponse>> _listProcedures;
  CommandStateBuilder<ApiCommand<ListProceduresForSchedulingApiRequest>,
          ApiResult<ListProceduresForSchedulingApiResponse>>
      get listProcedures => _$this._listProcedures ??= new CommandStateBuilder<
          ApiCommand<ListProceduresForSchedulingApiRequest>,
          ApiResult<ListProceduresForSchedulingApiResponse>>();
  set listProcedures(
          CommandStateBuilder<ApiCommand<ListProceduresForSchedulingApiRequest>,
                  ApiResult<ListProceduresForSchedulingApiResponse>>
              listProcedures) =>
      _$this._listProcedures = listProcedures;

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

  CreateCaseEventStateBuilder();

  CreateCaseEventStateBuilder get _$this {
    if (_$v != null) {
      _request = _$v.request?.toBuilder();
      _bizUnit = _$v.bizUnit?.toBuilder();
      _caseType = _$v.caseType?.toBuilder();
      _procedure = _$v.procedure?.toBuilder();
      _subProcedure = _$v.subProcedure?.toBuilder();
      _physician = _$v.physician?.toBuilder();
      _hospital = _$v.hospital?.toBuilder();
      _hcrTeam = _$v.hcrTeam?.toBuilder();
      _coverage = _$v.coverage?.toBuilder();
      _create = _$v.create?.toBuilder();
      _searchHcrTeams = _$v.searchHcrTeams?.toBuilder();
      _listSurgeonPhysicians = _$v.listSurgeonPhysicians?.toBuilder();
      _listHospitals = _$v.listHospitals?.toBuilder();
      _listProcedures = _$v.listProcedures?.toBuilder();
      _listSubProcedures = _$v.listSubProcedures?.toBuilder();
      _listCaseTypes = _$v.listCaseTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCaseEventState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateCaseEventState;
  }

  @override
  void update(void updates(CreateCaseEventStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateCaseEventState build() {
    _$CreateCaseEventState _$result;
    try {
      _$result = _$v ??
          new _$CreateCaseEventState._(
              request: _request?.build(),
              bizUnit: _bizUnit?.build(),
              caseType: _caseType?.build(),
              procedure: _procedure?.build(),
              subProcedure: _subProcedure?.build(),
              physician: _physician?.build(),
              hospital: _hospital?.build(),
              hcrTeam: _hcrTeam?.build(),
              coverage: _coverage?.build(),
              create: _create?.build(),
              searchHcrTeams: _searchHcrTeams?.build(),
              listSurgeonPhysicians: _listSurgeonPhysicians?.build(),
              listHospitals: _listHospitals?.build(),
              listProcedures: _listProcedures?.build(),
              listSubProcedures: _listSubProcedures?.build(),
              listCaseTypes: _listCaseTypes?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'request';
        _request?.build();
        _$failedField = 'bizUnit';
        _bizUnit?.build();
        _$failedField = 'caseType';
        _caseType?.build();
        _$failedField = 'procedure';
        _procedure?.build();
        _$failedField = 'subProcedure';
        _subProcedure?.build();
        _$failedField = 'physician';
        _physician?.build();
        _$failedField = 'hospital';
        _hospital?.build();
        _$failedField = 'hcrTeam';
        _hcrTeam?.build();
        _$failedField = 'coverage';
        _coverage?.build();
        _$failedField = 'create';
        _create?.build();
        _$failedField = 'searchHcrTeams';
        _searchHcrTeams?.build();
        _$failedField = 'listSurgeonPhysicians';
        _listSurgeonPhysicians?.build();
        _$failedField = 'listHospitals';
        _listHospitals?.build();
        _$failedField = 'listProcedures';
        _listProcedures?.build();
        _$failedField = 'listSubProcedures';
        _listSubProcedures?.build();
        _$failedField = 'listCaseTypes';
        _listCaseTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateCaseEventState', _$failedField, e.toString());
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
    CommandState<RouteCommand<CreateCaseEventState>,
        RouteResult<CreateCaseEventApiResponse>>,
    CommandStateBuilder<RouteCommand<CreateCaseEventState>,
        RouteResult<CreateCaseEventApiResponse>>,
    CreateCaseEventRoute> CreateCaseEventRouteOptions();

class _$CreateCaseEventRoute extends CreateCaseEventRoute {
  final StatefulActionsOptions<
      CommandState<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>,
      CommandStateBuilder<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>,
      CreateCaseEventRoute> options$;

  final ActionDispatcher<
      CommandState<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>> replace$;
  final ActionDispatcher<String> cancel$;
  final ActionDispatcher<Command<RouteCommand<CreateCaseEventState>>> execute$;
  final ActionDispatcher<CommandResult<RouteResult<CreateCaseEventApiResponse>>>
      result$;
  final ActionDispatcher<CommandProgress> progress$;

  _$CreateCaseEventRoute._(this.options$)
      : replace$ = options$.action<
                CommandState<RouteCommand<CreateCaseEventState>,
                    RouteResult<CreateCaseEventApiResponse>>>(
            'replace\$', (a) => a?.replace$),
        cancel$ = options$.action<String>('cancel\$', (a) => a?.cancel$),
        execute$ = options$.action<Command<RouteCommand<CreateCaseEventState>>>(
            'execute\$', (a) => a?.execute$),
        result$ = options$
            .action<CommandResult<RouteResult<CreateCaseEventApiResponse>>>(
                'result\$', (a) => a?.result$),
        progress$ =
            options$.action<CommandProgress>('progress\$', (a) => a?.progress$),
        super._();

  factory _$CreateCaseEventRoute(CreateCaseEventRouteOptions options) =>
      _$CreateCaseEventRoute._(options());

  @override
  CommandState<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>
      get initialState$ => CommandState<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>();

  @override
  CommandStateBuilder<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>
      newBuilder$() => CommandStateBuilder<RouteCommand<CreateCaseEventState>,
          RouteResult<CreateCaseEventApiResponse>>();

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
  RouteCommandBuilder<CreateCaseEventState> newCommandBuilder() =>
      RouteCommand<CreateCaseEventState>().toBuilder();

  @override
  RouteResultBuilder<CreateCaseEventApiResponse> newResultBuilder() =>
      RouteResult<CreateCaseEventApiResponse>().toBuilder();

  @override
  Serializer<RouteResult> get resultSerializer => RouteResult.serializer;

  @override
  CreateCaseEventStateBuilder newCommandPayloadBuilder() =>
      CreateCaseEventState().toBuilder();

  @override
  CreateCaseEventApiResponseBuilder newResultPayloadBuilder() =>
      CreateCaseEventApiResponse().toBuilder();

  @override
  Serializer<CreateCaseEventState> get commandPayloadSerializer =>
      CreateCaseEventState.serializer;

  @override
  Serializer<CreateCaseEventApiResponse> get resultPayloadSerializer =>
      CreateCaseEventApiResponse.serializer;
}

typedef StatefulActionsOptions<
    CreateCaseEventState,
    CreateCaseEventStateBuilder,
    CreateCaseEventActions> CreateCaseEventActionsOptions();

class _$CreateCaseEventActions extends CreateCaseEventActions {
  final StatefulActionsOptions<CreateCaseEventState,
      CreateCaseEventStateBuilder, CreateCaseEventActions> options$;

  final ActionDispatcher<CreateCaseEventState> replace$;
  final ActionDispatcher activated$;
  final ActionDispatcher deactivated$;
  final ActionDispatcher<CreateCaseEventState> pushing$;
  final ActionDispatcher<CreateCaseEventApiResponse> popping$;
  final CreateCaseEventApiRequestActions request;
  final FieldDispatcher<GetUiSetupAllApiBizUnit> bizUnit;
  final FieldDispatcher<CaseType> caseType;
  final FieldDispatcher<Procedure> procedure;
  final FieldDispatcher<SubProcedure> subProcedure;
  final FieldDispatcher<Physician> physician;
  final FieldDispatcher<Hospital> hospital;
  final FieldDispatcher<HcrTeam> hcrTeam;
  final FieldDispatcher<HcrTeam> coverage;
  final CreateCaseEventApi create;
  final ListCaseTypesApi listCaseTypes;
  final ListSurgeonPhysiciansForSchedulingApi listSurgeonPhysicians;
  final ListHospitalsForSchedulingApi listHospitals;
  final SearchHcrTeamsApi searchHcrTeams;
  final ListProceduresForSchedulingApi listProcedures;
  final ListSubProceduresApi listSubProcedures;

  _$CreateCaseEventActions._(this.options$)
      : replace$ = options$.action<CreateCaseEventState>(
            'replace\$', (a) => a?.replace$),
        activated$ = options$.action('activated\$', (a) => a?.activated$),
        deactivated$ = options$.action('deactivated\$', (a) => a?.deactivated$),
        pushing$ = options$.action<CreateCaseEventState>(
            'pushing\$', (a) => a?.pushing$),
        popping$ = options$.action<CreateCaseEventApiResponse>(
            'popping\$', (a) => a?.popping$),
        request = CreateCaseEventApiRequestActions(() => options$.stateful<
                CreateCaseEventApiRequest,
                CreateCaseEventApiRequestBuilder,
                CreateCaseEventApiRequestActions>(
            'request',
            (a) => a.request,
            (s) => s?.request,
            (b) => b?.request,
            (parent, builder) => parent?.request = builder)),
        bizUnit = options$.field<GetUiSetupAllApiBizUnit>('bizUnit',
            (a) => a?.bizUnit, (s) => s?.bizUnit, (p, b) => p?.bizUnit = b),
        caseType = options$.field<CaseType>('caseType', (a) => a?.caseType,
            (s) => s?.caseType, (p, b) => p?.caseType = b),
        procedure = options$.field<Procedure>('procedure', (a) => a?.procedure,
            (s) => s?.procedure, (p, b) => p?.procedure = b),
        subProcedure = options$.field<SubProcedure>(
            'subProcedure',
            (a) => a?.subProcedure,
            (s) => s?.subProcedure,
            (p, b) => p?.subProcedure = b),
        physician = options$.field<Physician>('physician', (a) => a?.physician,
            (s) => s?.physician, (p, b) => p?.physician = b),
        hospital = options$.field<Hospital>('hospital', (a) => a?.hospital,
            (s) => s?.hospital, (p, b) => p?.hospital = b),
        hcrTeam = options$.field<HcrTeam>('hcrTeam', (a) => a?.hcrTeam,
            (s) => s?.hcrTeam, (p, b) => p?.hcrTeam = b),
        coverage = options$.field<HcrTeam>('coverage', (a) => a?.coverage,
            (s) => s?.coverage, (p, b) => p?.coverage = b),
        create = CreateCaseEventApi(() => options$.stateful<
                CommandState<ApiCommand<CreateCaseEventApiRequest>,
                    ApiResult<CreateCaseEventApiResponse>>,
                CommandStateBuilder<ApiCommand<CreateCaseEventApiRequest>,
                    ApiResult<CreateCaseEventApiResponse>>,
                CreateCaseEventApi>('create', (a) => a.create, (s) => s?.create,
            (b) => b?.create, (parent, builder) => parent?.create = builder)),
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
        listSurgeonPhysicians = ListSurgeonPhysiciansForSchedulingApi(
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
                    'listSurgeonPhysicians',
                    (a) => a.listSurgeonPhysicians,
                    (s) => s?.listSurgeonPhysicians,
                    (b) => b?.listSurgeonPhysicians,
                    (parent, builder) =>
                        parent?.listSurgeonPhysicians = builder)),
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
        listProcedures = ListProceduresForSchedulingApi(() => options$.stateful<
                CommandState<ApiCommand<ListProceduresForSchedulingApiRequest>,
                    ApiResult<ListProceduresForSchedulingApiResponse>>,
                CommandStateBuilder<
                    ApiCommand<ListProceduresForSchedulingApiRequest>,
                    ApiResult<ListProceduresForSchedulingApiResponse>>,
                ListProceduresForSchedulingApi>(
            'listProcedures',
            (a) => a.listProcedures,
            (s) => s?.listProcedures,
            (b) => b?.listProcedures,
            (parent, builder) => parent?.listProcedures = builder)),
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
        super._();

  factory _$CreateCaseEventActions(CreateCaseEventActionsOptions options) =>
      _$CreateCaseEventActions._(options());

  @override
  CreateCaseEventStateBuilder newBuilder$() => CreateCaseEventStateBuilder();

  BuiltList<ModuxActions> _nested$;
  @override
  BuiltList<ModuxActions> get nested$ => _nested$ ??= BuiltList<ModuxActions>([
        this.request,
        this.create,
        this.listCaseTypes,
        this.listSurgeonPhysicians,
        this.listHospitals,
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
        this.bizUnit,
        this.caseType,
        this.procedure,
        this.subProcedure,
        this.physician,
        this.hospital,
        this.hcrTeam,
        this.coverage,
      ]);

  @override
  void reducer$(AppReducerBuilder reducer) {
    super.reducer$(reducer);
    request.reducer$(reducer);
    bizUnit.reducer$(reducer);
    caseType.reducer$(reducer);
    procedure.reducer$(reducer);
    subProcedure.reducer$(reducer);
    physician.reducer$(reducer);
    hospital.reducer$(reducer);
    hcrTeam.reducer$(reducer);
    coverage.reducer$(reducer);
    create.reducer$(reducer);
    listCaseTypes.reducer$(reducer);
    listSurgeonPhysicians.reducer$(reducer);
    listHospitals.reducer$(reducer);
    searchHcrTeams.reducer$(reducer);
    listProcedures.reducer$(reducer);
    listSubProcedures.reducer$(reducer);
  }

  @override
  void middleware$(AppMiddlewareBuilder middleware) {
    super.middleware$(middleware);
    request.middleware$(middleware);
    create.middleware$(middleware);
    listCaseTypes.middleware$(middleware);
    listSurgeonPhysicians.middleware$(middleware);
    listHospitals.middleware$(middleware);
    searchHcrTeams.middleware$(middleware);
    listProcedures.middleware$(middleware);
    listSubProcedures.middleware$(middleware);
  }

  @override
  CreateCaseEventApiResponseBuilder newResultBuilder$() =>
      CreateCaseEventApiResponse().toBuilder();
}
