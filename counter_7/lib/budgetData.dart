import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/addInfo.dart';

class budgetData {
  final String title;
  final int amount;
  final String budgetType;

  const budgetData(this.title, this.amount, this.budgetType);
}

class MyDataPage extends StatelessWidget {
  const MyDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Data'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Adding clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Routing the menu to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Add Budget Info'),
              onTap: () {
                // Routing the menu to the form page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
                title: const Text('Budget Data'),
                onTap: () {
                  // Routing the menu to Budget Data page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyDataPage()),
                  );
                }),
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < listBudgetData.length; i++)
              Card(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(listBudgetData[i].title),
                          Text(listBudgetData[i].amount.toString()),
                          Text(listBudgetData[i].budgetType)
                        ],
                      ))),
          ],
        ),
      ),
    );
  }
}
