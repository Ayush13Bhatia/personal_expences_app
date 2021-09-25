import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  final Function deletetx;
  TransactionList(this.transaction, this.deletetx);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500,
        child: transaction.isEmpty
            ? Column(
                children: [
                  Container(
                    child: Text(
                      "No transaction is done yet!",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    child: Image.asset(
                      "assets/images/waiting.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            : ListView.builder(
                itemBuilder: (BuildContext ctx, index) {
                  return Card(
                    elevation: 5,
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 5,
                    ),
                    child: ListTile(
                      leading: FittedBox(
                        child: CircleAvatar(
                          radius: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                '₹${transaction[index].amount.toStringAsFixed(2)}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      title: Text('${transaction[index].title}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Theme.of(context).primaryColorDark,
                          )),
                      subtitle: Text(
                        DateFormat.yMMMd().format(transaction[index].date),
                        style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        color: Theme.of(context).errorColor,
                        onPressed: () => deletetx(transaction[index].id),
                      ),
                    ),
                  );
                  // Card(
                  //   child: Row(
                  //     children: [
                  //       Container(
                  //         decoration: BoxDecoration(
                  //           border: Border.all(
                  //             color: Theme.of(context).primaryColorLight,
                  //             width: 2,
                  //           ),
                  //         ),
                  //         child: Text(
                  //           '\$${transaction[index].amount.toStringAsFixed(2)}',
                  //           style: TextStyle(
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 18,
                  //             color: Theme.of(context).primaryColorDark,
                  //           ),
                  //         ),
                  //       ),
                  //       const Padding(
                  //         padding: EdgeInsets.all(10),
                  //       ),
                  //       Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text(
                  //             transaction[index].title,
                  //             style: const TextStyle(
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 15,
                  //             ),
                  //           ),
                  //           Text(
                  //             DateFormat.yMMMMd()
                  //                 .format(transaction[index].date),
                  //             style: TextStyle(
                  //               fontSize: 10,
                  //               color: Theme.of(context).primaryColorLight,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // );
                },
                itemCount: transaction.length,
              ));
  }
}
