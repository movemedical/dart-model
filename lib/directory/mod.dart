import '../foundation.dart';

part 'mod.g.dart';

abstract class DirectoryModuleActions extends StateActions<DirectoryModuleState,
    DirectoryModuleStateBuilder, DirectoryModuleActions> {
  DirectoryModuleActions._();

  factory DirectoryModuleActions(DirectoryModuleActionsOptions options) =
      _$DirectoryModuleActions;
}

abstract class DirectoryModuleState
    implements Built<DirectoryModuleState, DirectoryModuleStateBuilder> {
  DirectoryModuleState._();

  factory DirectoryModuleState([updates(DirectoryModuleStateBuilder b)]) =
      _$DirectoryModuleState;

  static Serializer<DirectoryModuleState> get serializer =>
      _$directoryModuleStateSerializer;
}
