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
          color: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan GridView Builder Widget'),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (_, index) => const FlutterLogo(),
            itemCount: 4,
        )
      ),
    );
  }
}