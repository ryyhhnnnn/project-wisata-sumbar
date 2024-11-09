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
          color: Colors.black,
          foregroundColor: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Latihan Column'),
        ),
        
        body: Column(
          children: [
            Container(
              color: Colors.greenAccent,
              child: const FlutterLogo(
                size: 80.0,
              ),
            ),
            
            Container(
              color: Colors.orangeAccent,
              child: const FlutterLogo(
                size: 80.0,
              ),
            ),
            
            Container(
              color: Colors.purpleAccent,
              child: const FlutterLogo(
                size: 80.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}