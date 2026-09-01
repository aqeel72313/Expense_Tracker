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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      fontSize: 16,
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
              SizedBox(height: 25),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Recent Expenses",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(
                        Icons.restaurant_rounded,
                      size: 30,
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Food",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Today",
                        style: TextStyle(
                          fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "Rs. 850",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
          child: Icon(Icons.add),
        ),
    );
  }
}