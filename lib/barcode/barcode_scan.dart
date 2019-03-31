library barcode.scan;

import '../foundation.dart';

part 'barcode_scan.g.dart';

////////////////////////////////
/// Route
////////////////////////////////

abstract class BarcodeScanRoute extends RouteDispatcher<BarcodeScanState,
    BarcodeScanStateBuilder, String, BarcodeScanActions, BarcodeScanRoute> {
  BarcodeScanRoute._();

  factory BarcodeScanRoute(BarcodeScanRouteOptions options) =
      _$BarcodeScanRoute;
}

////////////////////////////////////
/// Actions
////////////////////////////////////

abstract class BarcodeScanActions extends RouteActions<BarcodeScanState,
    BarcodeScanStateBuilder, String, BarcodeScanActions, BarcodeScanRoute> {
  ////////////////////////////////////
  /// Actions
  ////////////////////////////////////

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
  ////////////////////////////////////
  /// Boilerplate
  ////////////////////////////////////

  BarcodeScanState._();

  factory BarcodeScanState([updates(BarcodeScanStateBuilder b)]) =
      _$BarcodeScanState;

  static Serializer<BarcodeScanState> get serializer =>
      _$barcodeScanStateSerializer;
}
