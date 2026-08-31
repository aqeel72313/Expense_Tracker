import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text(
              "Expense Tracker",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.history_rounded),
            )
          ],
        ),
        body: Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                        "Total Spent this Month",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Rs.12,456",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "August 2026",
                    style: TextStyle(
                      color:Theme.of(context).colorScheme.surface,
                    ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}