import 'package:flutter/material.dart';
import '../models/expense.dart';
import 'add_expense.dart';

class HomeScreen extends StatefulWidget {
  final List<Expense> expenses;

  const HomeScreen({
    super.key,
    required this.expenses,
  });
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
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
                        "Rs.12,676",
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
                                    "Rs. 4,550",
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
                                  "Rs. 5,457",
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
              // Cards
              Expanded(
                child: ListView.builder(
                  itemCount: widget.expenses.length,
                  itemBuilder: (context, index){
                    final expense = widget.expenses[index];
                    final today = DateTime.now();
                    final isToday =
                        expense.date.day == today.day &&
                            expense.date.month == today.month &&
                            expense.date.year == today.year ;

                    final yesterday = today.subtract(const Duration(days: 1));
                    final isYesterday =
                    expense.date.day == yesterday.day &&
                    expense.date.month == yesterday.month &&
                    expense.date.year == yesterday.year ;


                      return Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        margin: const EdgeInsets.only(bottom: 4),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(15),
                        ),
                         child: Row(
                           children: [
                             Icon(
                               expense.category == "Food"
                                ? Icons.fastfood_rounded
                                  : expense.category == "Transport"
                                    ? Icons.local_taxi_rounded
                                      : expense.category == "Shopping"
                                        ? Icons.shopping_cart_rounded
                                          : expense.category == "Bills"
                                            ? Icons.receipt_long_rounded
                                              : Icons.category_rounded,
                               color: Theme.of(context).colorScheme.secondary,
                               size: 30,
                             ),
                             const SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    expense.title,
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    expense.category,
                                    style: TextStyle(
                                      fontSize: 14
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    isToday
                                      ? "Today"
                                        : isYesterday
                                          ? "Yesterday"
                                          :"${expense.date.day}/${expense.date.month}/${expense.date.year}",
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                             const Spacer(),
                             
                             Text(
                               "Rs. ${expense.amount}",
                               style: const TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ],
                         ),
                      );
                    }
                ),
              ),
            ],
          ),
        ),

        // Floating button
        floatingActionButton: FloatingActionButton(
            onPressed: () async{
              final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>AddExpenseScreen(
                      expenses: widget.expenses,
                    ),
                  ),
              );
              if(result==true){
                setState(() {

                });
              }
            },
          child: Icon(Icons.add),
        ),
      );
  }
}