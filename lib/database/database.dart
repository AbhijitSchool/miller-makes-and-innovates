import 'package:mysql1/mysql1.dart';
import 'dart:async';

Future signup(String username, String password, String email) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'book_recommendation',
      password: 'mysql4Abhijit'));

  await conn.query(
      'INSERT INTO users (username, pass, email) VALUES($username, $password, $email)');
}

Future rating(int userid, int itemid, int rating) async {
  final conn = await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'book_recommendation',
      password: 'mysql4Abhijit'));

  await conn.query(
      'INSTER INTO ratings (usr_id, book_id, rating) VALUES($userid, $itemid, $rating)');
}
