import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  NewTransaction(this.addTx);

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Title',
              ),
            ),
            const Padding(padding: EdgeInsets.all(2)),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Amount",
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color.fromARGB(255, 100, 15, 245),
              ),
              onPressed: () {
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text("Add Transcation"),
            )
          ],
        ),
      ),
    );
  }
}
