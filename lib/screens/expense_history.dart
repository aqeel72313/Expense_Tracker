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

                  const Text(
                      "September 2026",
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
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
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
                            Icons.fastfood_rounded,
                            size: 30,
                            color: Theme
                                .of(context)
                                .colorScheme
                                .secondary,
                          ),

                          const SizedBox(width: 15),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lunch",
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
                                  "Food",
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
                                  "12/09/2026",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Rs. 500",
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