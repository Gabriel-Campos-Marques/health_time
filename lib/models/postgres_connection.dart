import 'package:postgres/postgres.dart';

class PostgresConnection {
  var connection = PostgreSQLConnection(
    "containers-us-west-15.railway.app",
    5499,
    "db_healthtime",
    username: "postgres",
    password: "25uWUhd7h9KK7OWkF4tD",
  );

  Future<List<List<dynamic>>> query(
      String sql, Map<String, dynamic>? parametros) async {
    await connection.open();
    List<List<dynamic>> result =
        await connection.query(sql, substitutionValues: parametros);

    return result;
  }
}
