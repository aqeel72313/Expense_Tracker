import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget{
  const HistoryScreen({super.key});

  @override
 Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
            "History",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        )
      ),
    );
  }
}