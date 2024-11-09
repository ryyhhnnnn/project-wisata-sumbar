import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan ListView Widget'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text('ListView Widget',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ),
            
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                'Detail text yang akan ditampilkan dalam ListView'
                'Detail text yang akan ditampilkan dalam ListView'
                'Detail text yang akan ditampilkan dalam ListView'
                'Detail text yang akan ditampilkan dalam ListView'
                'Detail text yang akan ditampilkan dalam ListView'
                'Detail text yang akan ditampilkan dalam ListView',
                style: TextStyle(fontSize: 16)),
            ),
          ]
        )
      ),
    );
  }
}