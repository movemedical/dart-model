import 'package:movemedical_model/foundation.dart';

part 'presence.g.dart';

abstract class PresenceActions
    extends StateActions<PresenceState, PresenceStateBuilder, PresenceActions> {
  PresenceActions._();

  factory PresenceActions(PresenceActionsOptions options) = _$PresenceActions;
}

abstract class PresenceState
    implements Built<PresenceState, PresenceStateBuilder> {
  PresenceState._();

  factory PresenceState([updates(PresenceStateBuilder b)]) = _$PresenceState;

  static Serializer<PresenceState> get serializer => _$presenceStateSerializer;
}
