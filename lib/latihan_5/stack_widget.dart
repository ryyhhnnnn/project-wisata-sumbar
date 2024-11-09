import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Agar 'DateFormat' dapat berfungsi

void main() => runApp(const FlutterStackWidget(),
);

class FlutterStackWidget extends StatelessWidget {
  const FlutterStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now(); // Menampilkan Waktu
    String formattedDate = DateFormat('EEEE, d MMMM y').format(now); // Menampilkan Tanggal

    return MaterialApp(
      title: 'Mobile Programming IF-6',
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2020/11/02/15/08/autumn-5706984_640.jpg"),
                  fit: BoxFit.fitHeight,
                  )
                )
              ),
            
            //Waktu, Tanggal, dan Title
            Positioned(
              right: 40.0,
              top: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end, // Align text to the right
                children: [
                  Text(
                    '${now.hour}:${now.minute}', // Menggunakan DateTime sekarang
                    style: const TextStyle(
                      color: Color.fromARGB(255, 18, 14, 14),
                      fontSize: 45.0,
                    ),
                  ),
                 
                  Text(
                    formattedDate, // Menampilkan hari dan tanggal
                    style: const TextStyle(
                      color: Color.fromARGB(255, 18, 14, 14),
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            
            const Positioned(
              right: 40.0,
              top: 200.0, // Ubah posisi agar tidak bertumpuk
              child: Text(
                "Mobile Programming with Flutter",
                style: TextStyle(
                  color: Color.fromARGB(255, 16, 15, 15),
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                )),
            ),
            
            //Card Widget
            Positioned(
              bottom: 48.0,
              left: 10.0,
              right: 10.0,
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: const Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Notification <3",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    
                    Padding(
                      padding: EdgeInsets.only(
                        top: 0, left: 16.0, right: 16.0, bottom:8.0),  
                      child: Text(
                        "Jika semangat belajarmu setipis tisu, kamu akan mudah robek, basah, bahkan diterbangkan angin. :D"),
                      ),
                    
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8.0, left: 16.0, right: 16.0, bottom:32.0),  
                      child: Text(
                        "- Reyhan Aldhika Saputra -",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                        )
                      ),
                    )
                  ]
                ),
              ),
            ),
          ]
        ),  
      ),
    );
  }
}