import 'package:flutter/material.dart';
import 'Tracking.dart';
import 'PrediksiCuaca.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Index()));
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override

  /// The home page of the application, which displays the logo and the 'START'
  /// button.
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
        color: Color(0xff122d4f),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SELAMAT DATANG DI WEATHER APP',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xfff9f7e4)),
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
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
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
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
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
    );
  }
}
