import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:mysql1/mysql1.dart';

void main(List<String> arguments) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'delivery',
      password: 'root'));

  await conn
      .query("INSERT INTO tb_permissions (name, status) values ('nacme', '1')");

  print(await conn.query('select * from tb_permissions'));

  await serve(
      (Request request) => Response(200, body: 'teste'), 'localhost', 3306);
}
