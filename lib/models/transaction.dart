class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  // Non-nullable variables must always be initialized with non-null values.
  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}
