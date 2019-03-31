// GENERATED CODE - DO NOT MODIFY BY HAND

part of nav;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NavState> _$navStateSerializer = new _$NavStateSerializer();

class _$NavStateSerializer implements StructuredSerializer<NavState> {
  @override
  final Iterable<Type> types = const [NavState, _$NavState];
  @override
  final String wireName = 'movemedical_model/NavState';

  @override
  Iterable serialize(Serializers serializers, NavState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.stack != null) {
      result
        ..add('stack')
        ..add(serializers.serialize(object.stack,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.auth != null) {
      result
        ..add('auth')
        ..add(serializers.serialize(object.auth,
            specifiedType: const FullType(AuthState)));
    }
    if (object.home != null) {
      result
        ..add('home')
        ..add(serializers.serialize(object.home,
            specifiedType: const FullType(HomeState)));
    }
    if (object.schedule != null) {
      result
        ..add('schedule')
        ..add(serializers.serialize(object.schedule,
            specifiedType: const FullType(ScheduleState)));
    }
    if (object.messages != null) {
      result
        ..add('messages')
        ..add(serializers.serialize(object.messages,
            specifiedType: const FullType(MessagesState)));
    }
    if (object.dir != null) {
      result
        ..add('dir')
        ..add(serializers.serialize(object.dir,
            specifiedType: const FullType(DirectoryState)));
    }

    return result;
  }

  @override
  NavState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NavStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'stack':
          result.stack.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'auth':
          result.auth.replace(serializers.deserialize(value,
              specifiedType: const FullType(AuthState)) as AuthState);
          break;
        case 'home':
          result.home.replace(serializers.deserialize(value,
              specifiedType: const FullType(HomeState)) as HomeState);
          break;
        case 'schedule':
          result.schedule.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScheduleState)) as ScheduleState);
          break;
        case 'messages':
          result.messages.replace(serializers.deserialize(value,
              specifiedType: const FullType(MessagesState)) as MessagesState);
          break;
        case 'dir':
          result.dir.replace(serializers.deserialize(value,
              specifiedType: const FullType(DirectoryState)) as DirectoryState);
          break;
      }
    }

    return result.build();
  }
}

class _$NavState extends NavState {
  @override
  final BuiltList<String> stack;
  @override
  final AuthState auth;
  @override
  final HomeState home;
  @override
  final ScheduleState schedule;
  @override
  final MessagesState messages;
  @override
  final DirectoryState dir;

  factory _$NavState([void updates(NavStateBuilder b)]) =>
      (new NavStateBuilder()..update(updates)).build();

  _$NavState._(
      {this.stack,
      this.auth,
      this.home,
      this.schedule,
      this.messages,
      this.dir})
      : super._();

  @override
  NavState rebuild(void updates(NavStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NavStateBuilder toBuilder() => new NavStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NavState &&
        stack == other.stack &&
        auth == other.auth &&
        home == other.home &&
        schedule == other.schedule &&
        messages == other.messages &&
        dir == other.dir;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, stack.hashCode), auth.hashCode), home.hashCode),
                schedule.hashCode),
            messages.hashCode),
        dir.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NavState')
          ..add('stack', stack)
          ..add('auth', auth)
          ..add('home', home)
          ..add('schedule', schedule)
          ..add('messages', messages)
          ..add('dir', dir))
        .toString();
  }
}

class NavStateBuilder implements Builder<NavState, NavStateBuilder> {
  _$NavState _$v;

  ListBuilder<String> _stack;
  ListBuilder<String> get stack => _$this._stack ??= new ListBuilder<String>();
  set stack(ListBuilder<String> stack) => _$this._stack = stack;

  AuthStateBuilder _auth;
  AuthStateBuilder get auth => _$this._auth ??= new AuthStateBuilder();
  set auth(AuthStateBuilder auth) => _$this._auth = auth;

  HomeStateBuilder _home;
  HomeStateBuilder get home => _$this._home ??= new HomeStateBuilder();
  set home(HomeStateBuilder home) => _$this._home = home;

  ScheduleStateBuilder _schedule;
  ScheduleStateBuilder get schedule =>
      _$this._schedule ??= new ScheduleStateBuilder();
  set schedule(ScheduleStateBuilder schedule) => _$this._schedule = schedule;

  MessagesStateBuilder _messages;
  MessagesStateBuilder get messages =>
      _$this._messages ??= new MessagesStateBuilder();
  set messages(MessagesStateBuilder messages) => _$this._messages = messages;

  DirectoryStateBuilder _dir;
  DirectoryStateBuilder get dir => _$this._dir ??= new DirectoryStateBuilder();
  set dir(DirectoryStateBuilder dir) => _$this._dir = dir;

  NavStateBuilder();

  NavStateBuilder get _$this {
    if (_$v != null) {
      _stack = _$v.stack?.toBuilder();
      _auth = _$v.auth?.toBuilder();
      _home = _$v.home?.toBuilder();
      _schedule = _$v.schedule?.toBuilder();
      _messages = _$v.messages?.toBuilder();
      _dir = _$v.dir?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NavState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NavState;
  }

  @override
  void update(void updates(NavStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NavState build() {
    _$NavState _$result;
    try {
      _$result = _$v ??
          new _$NavState._(
              stack: _stack?.build(),
              auth: _auth?.build(),
              home: _home?.build(),
              schedule: _schedule?.build(),
              messages: _messages?.build(),
              dir: _dir?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'stack';
        _stack?.build();
        _$failedField = 'auth';
        _auth?.build();
        _$failedField = 'home';
        _home?.build();
        _$failedField = 'schedule';
        _schedule?.build();
        _$failedField = 'messages';
        _messages?.build();
        _$failedField = 'dir';
        _dir?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NavState', _$failedField, e.toString());
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

typedef StatefulActionsOptions<NavState, NavStateBuilder,
    NavActions> NavActionsOptions();

class _$NavActions extends NavActions {
  final StatefulActionsOptions<NavState, NavStateBuilder, NavActions> $options;

  final ActionDispatcher<NavState> $replace;
  final FieldDispatcher<BuiltList<String>> stack;
  final AuthActions auth;
  final HomeActions home;
  final ScheduleActions schedule;
  final MessagesActions messages;
  final DirectoryActions dir;

  _$NavActions._(this.$options)
      : $replace = $options.action<NavState>('\$replace', (a) => a?.$replace),
        stack = $options.actionField<BuiltList<String>>(
            'stack', (a) => a?.stack, (s) => s?.stack, (p, b) => p?.stack = b),
        auth = AuthActions(() =>
            $options.stateful<AuthState, AuthStateBuilder, AuthActions>(
                'auth',
                (a) => a.auth,
                (s) => s?.auth,
                (b) => b?.auth,
                (parent, builder) => parent?.auth = builder)),
        home = HomeActions(() =>
            $options.stateful<HomeState, HomeStateBuilder, HomeActions>(
                'home',
                (a) => a.home,
                (s) => s?.home,
                (b) => b?.home,
                (parent, builder) => parent?.home = builder)),
        schedule = ScheduleActions(() => $options
            .stateful<ScheduleState, ScheduleStateBuilder, ScheduleActions>(
                'schedule',
                (a) => a.schedule,
                (s) => s?.schedule,
                (b) => b?.schedule,
                (parent, builder) => parent?.schedule = builder)),
        messages = MessagesActions(() => $options
            .stateful<MessagesState, MessagesStateBuilder, MessagesActions>(
                'messages',
                (a) => a.messages,
                (s) => s?.messages,
                (b) => b?.messages,
                (parent, builder) => parent?.messages = builder)),
        dir = DirectoryActions(() => $options
            .stateful<DirectoryState, DirectoryStateBuilder, DirectoryActions>(
                'dir',
                (a) => a.dir,
                (s) => s?.dir,
                (b) => b?.dir,
                (parent, builder) => parent?.dir = builder)),
        super._();

  factory _$NavActions(NavActionsOptions options) => _$NavActions._(options());

  @override
  NavStateBuilder $newBuilder() => NavStateBuilder();

  BuiltList<ModuxActions> _$nested;
  @override
  BuiltList<ModuxActions> get $nested => _$nested ??= BuiltList<ModuxActions>([
        this.auth,
        this.home,
        this.schedule,
        this.messages,
        this.dir,
      ]);

  BuiltList<ActionDispatcher> _$actions;
  @override
  BuiltList<ActionDispatcher> get $actions =>
      _$actions ??= BuiltList<ActionDispatcher>([
        this.$replace,
        this.stack,
      ]);

  @override
  void $reducer(AppReducerBuilder reducer) {
    super.$reducer(reducer);
    stack.$reducer(reducer);
    auth.$reducer(reducer);
    home.$reducer(reducer);
    schedule.$reducer(reducer);
    messages.$reducer(reducer);
    dir.$reducer(reducer);
  }

  @override
  void $middleware(AppMiddlewareBuilder middleware) {
    super.$middleware(middleware);
    auth.$middleware(middleware);
    home.$middleware(middleware);
    schedule.$middleware(middleware);
    messages.$middleware(middleware);
    dir.$middleware(middleware);
  }

// @override
// Serializer<NavStateNavActions> get $serializer => NavStateNavActions.serializer;

  FullType _$fullType;
  @override
  FullType get $fullType => _$fullType ??= FullType(NavState);
}
