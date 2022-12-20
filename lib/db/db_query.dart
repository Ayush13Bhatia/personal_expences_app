class Query {
  static const int dbVersion = 1;
  static const String transactionTable = 'transaction';

  static const String createTransactionTable = '''CREATE TABLE `$transactionTable`(
  `_id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `title` TEXT,
  `amount` INTEGER,
  `date` TEXT
  ) ''';
}
