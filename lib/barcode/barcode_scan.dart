library barcode.scan;

import '../foundation.dart';

part 'barcode_scan.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class BarcodeScanRoute extends DialogRoute<
    BarcodeScanState,
    BarcodeScanStateBuilder,
    Value<String>,
    ValueBuilder<String>,
    BarcodeScanActions,
    BarcodeScanRoute> {
  ActionDispatcher<String> get value;

  BarcodeScanRoute._();

  factory BarcodeScanRoute(BarcodeScanRouteOptions options) =
      _$BarcodeScanRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class BarcodeScanActions extends DialogActions<
    BarcodeScanState,
    BarcodeScanStateBuilder,
    Value<String>,
    ValueBuilder<String>,
    BarcodeScanActions,
    BarcodeScanRoute> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////
  FieldDispatcher<String> get value;

  ////////////////////////////////////
  /// Initial State
  ////////////////////////////////////

  @override
  BarcodeScanState get $initial => BarcodeScanState((b) => b);

  ////////////////////////////////////
  /// Construction
  ////////////////////////////////////

  BarcodeScanActions._();

  factory BarcodeScanActions(BarcodeScanActionsOptions options) =
      _$BarcodeScanActions;
}

////////////////////////////////////
/// State
////////////////////////////////////

abstract class BarcodeScanState
    implements Built<BarcodeScanState, BarcodeScanStateBuilder> {
  String get value;

  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  BarcodeScanState._();

  factory BarcodeScanState([updates(BarcodeScanStateBuilder b)]) =
      _$BarcodeScanState;

  static Serializer<BarcodeScanState> get serializer =>
      _$barcodeScanStateSerializer;
}
