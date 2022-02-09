import 'package:mysql1/mysql1.dart';
import 'dart:async';

Future main() async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'book_recommendation',
      password: 'mysql4Abhijit'));

  await conn
      .query('INSERT INTO ratings (usr_id, book_id, rating) VALUES(3, 5, 4)');
}
