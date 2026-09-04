import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context){
      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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

          // Total Spent Card
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
                      fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "Rs.12,456",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.surface,
                      fontSize: 32,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "August 2026",
                    style: TextStyle(
                      color:Theme.of(context).colorScheme.surface,
                      fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Category Container
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Category Overview",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                       Expanded(
                          child: Container(
                            padding: EdgeInsets.all(15),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(15),
                              ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                        Icons.fastfood_rounded,
                                        size: 20,
                                        color: Theme.of(context).colorScheme.secondary,
                                      ),
                                    SizedBox(width: 10),
                                    Text(
                                        "Food",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Center(
                                  child: Text(
                                    "Rs. 4,500",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                       ),

                      SizedBox(width: 20),

                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.local_taxi_rounded,
                                    size: 20,
                                    color: Theme.of(context).colorScheme.secondary,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Transport",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Center(
                                child: Text(
                                  "Rs. 5,567",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25),

              // Recent Expenses
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Recent Expenses",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.surface,
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
                        Icons.fastfood_rounded,
                      color: Theme.of(context).colorScheme.secondary,
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
                        SizedBox(height: 4),
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

        // Floating button
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
          child: Icon(Icons.add),
        ),
    );
  }
}