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
        title: const Text("Latihan ListView Separated Widget"),
      ),
 
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            child:Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(bulan[index], style: const TextStyle(fontSize: 30)),
            )
          );
        },
        
        separatorBuilder: (context, position) {
          return Container(
            padding: const EdgeInsets.all(10),
            color: const Color.fromARGB(255, 244, 222, 150),
            child: const Text('Ini contoh Separator Builder',
              style: TextStyle(fontSize: 20)),
          );    
        },
        itemCount: bulan.length
      )
    );
  }
}