import 'package:flutter/material.dart ';
import 'package:intl/intl.dart';
import 'package:moneyapp/models/transactions.dart';

class TransactionList extends StatelessWidget {
  final List<Transactions> transaction;
  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${transaction[index].amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  transaction[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  DateFormat.yMMMd().format(transaction[index].date),
                  style: TextStyle(color: Colors.grey),
                )
              ])
            ]),
          );
        },
        itemCount: transaction.length,
      ),
    );
  }
}
