import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Mobile Programming IF-6',
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        color: Colors.redAccent,
      ),
    ),
    debugShowCheckedModeBanner: false, // Remove the debug banner
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Latihan ImageNetwork Widget',
          style: TextStyle(color: Colors.white),
        ),
      ),
        
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(15),
          width: 350,
          decoration: BoxDecoration(
            border: Border.all(
              width: 4, 
              color: Colors.redAccent),
            borderRadius: const BorderRadius.all(Radius.circular(10))
          ),
          child: const TeksUtama()
        ),
      ),
    )
  ));
}

class TeksUtama extends StatelessWidget {
  const TeksUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Halo',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 35, 21, 41)),
        ),
        
        const Text(
          'Flutter',
          style: TextStyle(
              fontSize: 45, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        
        const Text(
          'Indonesia',
          style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 43, 41, 41)),
        ),
        
        Container(
          padding: const EdgeInsets.all(10),
          child: Image.network(
            'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg',
            width: 200,
            color: Colors.grey,
            colorBlendMode: BlendMode.hue,
          ),
        ),
        
        Container(
            margin: const EdgeInsets.all(10),
            child: Image.network(
            'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg',
            width: 200,
            color: Colors.red,
            colorBlendMode: BlendMode.hue,
          )),
        
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // background
            foregroundColor: Colors.white, // foreground
          ),
          onPressed: () {},
          child: const Text('Klik'),
        ),
      ],
    );
  }
}