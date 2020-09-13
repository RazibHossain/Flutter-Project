import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: "T1",
      title: "Shoe",
      amount: 101.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: "T2",
      title: "Shirst",
      amount: 201.0,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            color: Colors.blue,
            child: Container(
              width: double.infinity,
              child: Text(
                "Chart 1",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            elevation: 50,
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    child: Text(tx.amount.toString()),
                  ),
                  Column(
                    children: <Widget>[
                      Text(tx.title),
                      Text(tx.date.toString()),
                    ],
                  ),
                ],
              ));
            }).toList(),
            /*
          //Normally column er kaj hocche multiple widget rakha jar karone children a array hishebe 
          widget thake. but ai khetre amra point korlam list object transactions  a and .map() diye list k
          list of widget a tranform kore nilam. map()method call korle toList() lage cz map method iterable
          jar karone ta list a trasform kora lage.
          */
          ),
        ],
      ),
    );
  }
}
