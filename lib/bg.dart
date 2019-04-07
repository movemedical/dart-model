import 'package:movemedical_model/foundation.dart';

part 'bg.g.dart';

abstract class BgActions
    extends StateActions<BgState, BgStateBuilder, BgActions> {
  BgActions._();

  factory BgActions(BgActionsOptions options) = _$BgActions;
}

abstract class BgState implements Built<BgState, BgStateBuilder> {
  BgState._();

  factory BgState([updates(BgStateBuilder b)]) = _$BgState;

  static Serializer<BgState> get serializer => _$bgStateSerializer;
}
