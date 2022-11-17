import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/budgetData.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class budgetData {
  final String title;
  final int amount;
  final String budgetType;

  const budgetData(this.title, this.amount, this.budgetType);
}

List<budgetData> listBudgetData = [];

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _title = "";
  int _amount = 0;
  String budgetType = "Expense";
  List<String> listBudgetType = ['Income', 'Expense'];

  budgetData createDataList(newTitle, newAmount, newType) {
    return budgetData(newTitle, newAmount, newType);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Budget Info'),
      ),
      drawer: Drawer(
        child: Column(children: [
          // Adding clickable menu
          ListTile(
            title: const Text('Counter_7'),
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
        ]),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                    // Using padding of 8 pixels
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Title",
                          labelText: "Title",
                          // icons for decoration
                          icon: const Icon(Icons.article),

                          // circular border
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),

                      // onChanged: (String? value) {
                      //      setState(() {
                      //          _title = value!;
                      //      });
                      // },
                      // behavior when Title is typed
                      onSaved: (String? value) {
                        setState(() {
                          _title = value!;
                        });
                      },

                      // validator
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter title';
                        }
                        return null;
                      },
                    )),
                Padding(
                    // Using padding of 8 pixels
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          hintText: "Amount",
                          labelText: "Amount",
                          // icons for decoration
                          icon: const Icon(Icons.attach_money),

                          // circular border
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),

                      // behavior when Amount is typed
                      onSaved: (String? value) {
                        setState(() {
                          _amount = int.parse(value.toString())!;
                        });
                      },

                      // validator
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter amount';
                        }
                        return null;
                      },
                    )),
                ListTile(
                  leading: const Icon(Icons.class_),
                  title: const Text(
                    'Choose Type',
                  ),
                  trailing: DropdownButton(
                    value: budgetType,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: listBudgetType.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        budgetType = newValue!;
                      });
                    },
                  ),
                ),
                TextButton(
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      budgetData newData =
                          createDataList(_title, _amount, budgetType);
                      listBudgetData.add(newData);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
