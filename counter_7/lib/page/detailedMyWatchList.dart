import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/my_watchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/budgetData.dart';
import 'package:counter_7/page/addInfo.dart';
import 'package:counter_7/page/myWatchlistPage.dart';
import 'package:counter_7/main.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.data});

  final List<MyWatchlist> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Watchlist'),
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
            ListTile(
              title: const Text('My Watchlist'),
              onTap: () {
                // Routing the menu to the My Watchlist page
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyWatchlistPage()));
              },
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < listMyWatchlist.length; i++)
              Card(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(listMyWatchlist[i].fields.title),
                          Text(listMyWatchlist[i].fields.rating.toString()),
                          Text(
                              listMyWatchlist[i].fields.releaseDate.toString()),
                          Text(listMyWatchlist[i].fields.review)
                        ],
                      ))),
            TextButton(
                child: const Text(
                  "Back",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {
                  // Routing the menu to Budget Data page
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyWatchlistPage()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
