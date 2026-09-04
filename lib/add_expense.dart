import 'package:flutter/material.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(
            "Add Expense",
        style: TextStyle(
          fontSize: 24,
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
        child: Column(

        ),
      ),
    );
  }
}