import 'package:flutter/material.dart';
// For using the numeric keyboard in amount field
import 'package:flutter/services.dart';
// .. means lib folder ke bahir aa kr models folder ma navigate kro
import '../models/expense.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreenState();
}
class _AddExpenseScreenState extends State<AddExpenseScreen>{
final TextEditingController titleController = TextEditingController();
final TextEditingController amountController = TextEditingController();
String selectedCategory = "Select Category";
DateTime? selectedDate;

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
              // for number keyboard
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
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
              "Category",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text("Food"),
                        onTap: () {
                          setState(() {
                            selectedCategory = "Food";
                          });
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text("Transport"),
                        onTap: () {
                          setState(() {
                            selectedCategory = "Transport";
                          });
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text("Shopping"),
                        onTap: () {
                          setState(() {
                            selectedCategory = "Shopping";
                          });
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text("Bills"),
                        onTap: () {
                          setState(() {
                            selectedCategory = "Bills";
                          });
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text("Other"),
                        onTap: () {
                          setState(() {
                            selectedCategory = "Other";
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
              },
            child: Container(
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
                  Text(
                      selectedCategory,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
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
            GestureDetector(
              onTap: () async{
                DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime.now(),
                );
                if (pickedDate != null){
                  setState(() {
                    selectedDate = pickedDate;
                  });
                }
              },
            child: Container(
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
                  Text(
                    selectedDate == null?
                        "Select Date"
                            :"${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    ),
                  ],
                ),
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
                  if(
                  titleController.text.isEmpty ||
                      amountController.text.isEmpty ||
                      selectedCategory == "Select Category" ||
                      selectedDate == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text("Please fill all fields")
                      ),
                    );
                    return;
                  }
                  print(titleController.text);
                  print(amountController.text);
                  print(selectedCategory);
                  print(selectedDate);
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