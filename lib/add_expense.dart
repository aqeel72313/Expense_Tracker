import 'package:flutter/material.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}
class _AddExpenseScreenState extends State<AddExpenseScreen>{
final TextEditingController titleController = TextEditingController();
final TextEditingController amountController = TextEditingController();
String selectedCategory = "Select Category";
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            // Expense Title Field
            Text(
                "Expense Title",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Enter Expense Title",
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Amount Field
            Text(
                "Amount",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                hintText: "Enter Amount",
                filled: true,
                fillColor: Theme.of(context).colorScheme.surface,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Category Field
            Text(
              (selectedCategory),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Text("Select Category"),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Date Field
            Text(
              "Date",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 6),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.calendar_month_rounded),
                  SizedBox(width: 6),
                  Text("Select Date"),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Save Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                minimumSize: const Size(double.infinity,50),
              ),
                onPressed:(){
                  print(titleController.text);
                  print(amountController.text);
                },
                child: Text(
                  "Save",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface,
                  fontSize: 22
                  ),
                ),
            )
          ],
        ),
        ),
      ),
    );
  }
}