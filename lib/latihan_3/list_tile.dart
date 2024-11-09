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
        title: const Text("Latihan ListTile Widget"),
      ),
 
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(bulan[index],
              style: const TextStyle(fontSize: 30)),
              subtitle: Text('Ini subtitle dari ${bulan[index]}'),
              leading: CircleAvatar(
                child: Text(bulan[index][0],
                  style: const TextStyle(fontSize: 20)),
              )),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}