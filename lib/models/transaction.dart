class Tranxs {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  // Non-nullable variables must always be initialized with non-null values.
  Tranxs({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
  factory Tranxs.fromMap(Map<String, dynamic> json) => Tranxs(
        id: json['id'],
        title: json['title'],
        amount: json['amount'],
        date: json['date'],
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'amount': amount,
        'date': date,
      };
}
