import 'package:flutter/material.dart';
import '../models/expense.dart';

class HistoryScreen extends StatefulWidget {
  final List<Expense> expenses;

  const HistoryScreen({
    super.key,
    required this.expenses,
  });

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}
class _HistoryScreenState extends State<HistoryScreen>{
  DateTime selectedMonth = DateTime.now();
  @override
  Widget build(BuildContext context){

    final historyExpenses = widget.expenses.where((expense){
      return expense.date.month == selectedMonth.month &&
        expense.date.year ==selectedMonth.year;
    }).toList();

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
      // History Title
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Expense History",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            const SizedBox(height: 15),

            // Month Dropdown Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_month_rounded,
                  ),

                  const SizedBox(width: 12),

                  Text(
                      "${selectedMonth.month}/${selectedMonth.year}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Cards Container

            Expanded(
              child: ListView.builder(
                  itemCount: historyExpenses.length,
                  itemBuilder: (context, index) {
                    final expense = historyExpenses[index];
                    return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color: Theme
                            .of(context)
                            .colorScheme
                            .surface,
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
                            size: 30,
                            color: Theme.of(context).colorScheme.secondary,
                          ),

                          const SizedBox(width: 15),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  expense.title,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Theme
                                        .of(context)
                                        .colorScheme
                                        .primary,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  expense.category,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme
                                        .of(context)
                                        .colorScheme
                                        .primary,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  "${expense.date.day}/${expense.date.month}/${expense.date.year}",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Rs. ${expense.amount}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Theme
                                  .of(context)
                                  .colorScheme
                                  .primary,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}