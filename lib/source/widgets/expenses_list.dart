import 'package:expense_tracker/source/widgets/expense_item.dart';
import 'package:flutter/material.dart';
import '../models/expense.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) => Dismissible(
            background: Container(
              color: Theme.of(context).colorScheme.error.withValues(alpha: 0.75),
              margin: EdgeInsets.symmetric(
                  horizontal: Theme.of(context).cardTheme.margin?.horizontal ?? 16,
              ),
            ),
            key: ValueKey(expenses[index]),
            onDismissed: (direction) {
              onRemoveExpense(expenses[index]);
            },
            child: ExpenseItem(expenses[index])));
  }
}
