/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Weather implements _i1.SerializableModel {
  Weather._({
    this.id,
    required this.temperatur,
  });

  factory Weather({
    int? id,
    required int temperatur,
  }) = _WeatherImpl;

  factory Weather.fromJson(Map<String, dynamic> jsonSerialization) {
    return Weather(
      id: jsonSerialization['id'] as int?,
      temperatur: jsonSerialization['temperatur'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int temperatur;

  Weather copyWith({
    int? id,
    int? temperatur,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'temperatur': temperatur,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WeatherImpl extends Weather {
  _WeatherImpl({
    int? id,
    required int temperatur,
  }) : super._(
          id: id,
          temperatur: temperatur,
        );

  @override
  Weather copyWith({
    Object? id = _Undefined,
    int? temperatur,
  }) {
    return Weather(
      id: id is int? ? id : this.id,
      temperatur: temperatur ?? this.temperatur,
    );
  }
}
