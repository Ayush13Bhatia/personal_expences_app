import 'package:flutter/material.dart';
import 'package:personal_expences_app/db/db_query.dart';

import 'package:sqflite_sqlcipher/sqflite.dart';

import '../models/transaction.dart';

class SqfLiteHelper {
  static Future<void> createTable(Database db) async {
    await db.execute(Query.createTransactionTable);
  }

  static Future<Database> initializeSqlDB() async {
    var path = getDatabasesPath();
    Database db = await openDatabase(
      "$path/person_expence.db",
      version: Query.dbVersion,
      password: '123',
      onCreate: (db, version) async {
        createTable(db);
      },
    );
    return db;
  }

  static Future<void> insertTransaction(Tranxs tnx) async {
    Database db = await initializeSqlDB();
    await db.insert(Query.transactionTable, tnx.toMap());
  }
}
