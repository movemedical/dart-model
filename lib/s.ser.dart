library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:movemedical_api/state/push.dart';
import 'foundation.dart';

import 's.ser.gg.dart';

@SerializersFor(const [AppState, PushPayloads])
final Serializers serializers = _create($serializers());

Serializers createSerializers() => _create($serializers());

Serializers _create(SerializersBuilder b) {
  // Add DateTime serializers.
  b.add(Iso8601DateTimeSerializer());

  // Json serialization plugin.
  b.addPlugin(StandardJsonPlugin());

  b
    ..addBuilderFactory(
        FullType(BuiltList, [FullType(String)]), () => ListBuilder<String>())
    ..addBuilderFactory(
        FullType(BuiltList, [FullType(int)]), () => ListBuilder<int>())
    ..addBuilderFactory(
        FullType(BuiltList, [FullType(num)]), () => ListBuilder<num>())
    ..addBuilderFactory(FullType(BuiltList, [FullType(Duration)]),
        () => ListBuilder<Duration>())
    ..addBuilderFactory(
        FullType(BuiltSet, [FullType(String)]), () => SetBuilder<String>())
    ..addBuilderFactory(
        FullType(BuiltMap, [FullType(String), FullType(String)]),
        () => MapBuilder<String, String>())
    ..addBuilderFactory(FullType(BuiltMap, [FullType(int), FullType(String)]),
        () => MapBuilder<int, String>());

  return b.build();
}

/// Alternative serializer for [DateTime].
///
/// Install this to use ISO8601 format instead of the default (microseconds
/// since epoch). Use [SerializersBuilder.add] to install it.
///
/// An exception will be thrown on attempt to serialize local DateTime
/// instances; you must use UTC.
class Iso8601DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  final bool structured = false;
  @override
  final Iterable<Type> types = new BuiltList<Type>([DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime,
      {FullType specifiedType = FullType.unspecified}) {
    if (!dateTime.isUtc) {
      dateTime = dateTime.toUtc();
//      throw new ArgumentError.value(
//          dateTime, 'dateTime', 'Must be in utc for serialization.');
    }

    return dateTime.toIso8601String();
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return DateTime.parse(serialized as String).toUtc();
  }
}
