import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './transaction_list.dart';

import './new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'Mac Book Air',
      amount: 890.56,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Mac Book Pro',
      amount: 999.56,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );
    setState(() {
      transaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(transaction),
      ],
    );
  }
}
