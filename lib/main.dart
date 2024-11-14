import 'package:flutter/material.dart';
import 'Tracking.dart';
import 'PrediksiCuaca.dart';
import 'About.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Index()));
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WEATHER APP',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff122D4F)),
        ),
        backgroundColor: const Color(0xFFF9F7E4),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: Color(0xff122d4f),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SELAMAT DATANG DI WEATHER APP',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xfff9f7e4),
                    fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Icon(
                Icons.cloud,
                size: 100,
                color: Color(0xfff9f7e4),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Start())),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: const Color(0Xfff9f7e4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Text(
                  'CEK CUACA',
                  style: TextStyle(
                      color: Color(0xff122d4f), fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Prediksi())),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: const Color(0Xfff9f7e4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Text(
                  'PREDIKSI CUACA 16 HARI KEDEPAN',
                  style: TextStyle(
                      color: Color(0xff122d4f), fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
          child: ListView(children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color(0xff122d4f),
          ),
          child: Center(
            child: Text(
              'WEATHER APP',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xfff9f7e4),
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        ListTile(
          title: Text('About'),
          leading: Icon(Icons.person),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const About()));
          },
        )
      ])),
    );
  }
}
