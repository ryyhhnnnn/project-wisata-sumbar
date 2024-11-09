import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile Programming IF-6',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.yellowAccent,
          foregroundColor: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ShowListView(),
    );
  }
}

class ShowListView extends StatelessWidget {
  final List bulan = [
    "Januari",
    "Februari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember",
  ];

  ShowListView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latihan ListView Builder Widget"),
      ),
 
    body: ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          color: Colors.amber[50],
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          padding: const EdgeInsets.all(10),
          child: Text(
            bulan[index],
            style: const TextStyle(fontSize: 16),
          ),
        );
      },
      itemCount: bulan.length,
    ));
  }
}
