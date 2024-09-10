/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Weather extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Weather._({
    int? id,
    required this.temperatur,
  }) : super(id);

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

  static final t = WeatherTable();

  static const db = WeatherRepository._();

  int temperatur;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'temperatur': temperatur,
    };
  }

  static WeatherInclude include() {
    return WeatherInclude._();
  }

  static WeatherIncludeList includeList({
    _i1.WhereExpressionBuilder<WeatherTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WeatherTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WeatherTable>? orderByList,
    WeatherInclude? include,
  }) {
    return WeatherIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Weather.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Weather.t),
      include: include,
    );
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

class WeatherTable extends _i1.Table {
  WeatherTable({super.tableRelation}) : super(tableName: 'note') {
    temperatur = _i1.ColumnInt(
      'temperatur',
      this,
    );
  }

  late final _i1.ColumnInt temperatur;

  @override
  List<_i1.Column> get columns => [
        id,
        temperatur,
      ];
}

class WeatherInclude extends _i1.IncludeObject {
  WeatherInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Weather.t;
}

class WeatherIncludeList extends _i1.IncludeList {
  WeatherIncludeList._({
    _i1.WhereExpressionBuilder<WeatherTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Weather.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Weather.t;
}

class WeatherRepository {
  const WeatherRepository._();

  Future<List<Weather>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WeatherTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WeatherTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WeatherTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Weather>(
      where: where?.call(Weather.t),
      orderBy: orderBy?.call(Weather.t),
      orderByList: orderByList?.call(Weather.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Weather?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WeatherTable>? where,
    int? offset,
    _i1.OrderByBuilder<WeatherTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<WeatherTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Weather>(
      where: where?.call(Weather.t),
      orderBy: orderBy?.call(Weather.t),
      orderByList: orderByList?.call(Weather.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Weather?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Weather>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Weather>> insert(
    _i1.Session session,
    List<Weather> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Weather>(
      rows,
      transaction: transaction,
    );
  }

  Future<Weather> insertRow(
    _i1.Session session,
    Weather row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Weather>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Weather>> update(
    _i1.Session session,
    List<Weather> rows, {
    _i1.ColumnSelections<WeatherTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Weather>(
      rows,
      columns: columns?.call(Weather.t),
      transaction: transaction,
    );
  }

  Future<Weather> updateRow(
    _i1.Session session,
    Weather row, {
    _i1.ColumnSelections<WeatherTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Weather>(
      row,
      columns: columns?.call(Weather.t),
      transaction: transaction,
    );
  }

  Future<List<Weather>> delete(
    _i1.Session session,
    List<Weather> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Weather>(
      rows,
      transaction: transaction,
    );
  }

  Future<Weather> deleteRow(
    _i1.Session session,
    Weather row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Weather>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Weather>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<WeatherTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Weather>(
      where: where(Weather.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<WeatherTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Weather>(
      where: where?.call(Weather.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
