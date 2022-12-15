import 'package:flutter/material.dart';
import 'package:moneyapp/widgets/transactions_list.dart';

import '../models/transactions.dart';
import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transactions> _userTransactions = [
    Transactions(
        amount: 200, date: DateTime.now(), id: 't1', title: 'new shoes'),
    Transactions(amount: 120, date: DateTime.now(), id: 't2', title: ' shoes'),
  ];

  void _addNewTransactions(String txTitle, double txAmount) {
    final newTx = Transactions(
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString(),
        title: txTitle);

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransactions(_addNewTransactions),
        TransactionList(_userTransactions)
      ],
    );
  }
}
