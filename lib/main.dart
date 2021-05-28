import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Personal Expences App",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Expences App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: const Card(
                color: Colors.blue,
                elevation: 5,
                child: Text("CHART!"),
              ),
            ),
            UserTransaction()
          ],
        ));
  }
}
