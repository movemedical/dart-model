import '../foundation.dart';

part 'mod.g.dart';

abstract class DirectoryActions extends StateActions<DirectoryState,
    DirectoryStateBuilder, DirectoryActions> {
  DirectoryActions._();

  factory DirectoryActions(DirectoryActionsOptions options) =
      _$DirectoryActions;
}

abstract class DirectoryState
    implements Built<DirectoryState, DirectoryStateBuilder> {
  DirectoryState._();

  factory DirectoryState([updates(DirectoryStateBuilder b)]) = _$DirectoryState;

  static Serializer<DirectoryState> get serializer =>
      _$directoryStateSerializer;
}
