import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Tracking.dart';
import 'PrediksiCuaca.dart';
import 'About.dart';
import 'Feature.dart';

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
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFF9F7E4)),
        ),
        backgroundColor: const Color(0xff122d4f),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFFF9F7E4)),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF9F7E4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Carousel Slider untuk teks bergeser otomatis
            CarouselSlider(
              options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 3),
              ),
              items: [
                'Selamat datang di Weather App',
                'Dapatkan informasi cuaca terkini',
                'Cek prediksi cuaca 16 hari ke depan',
                'Tingkat keakuratan prediksi 90%',
                'Temukan cuaca di mana saja',
                'Dapat memprediksi lokasi seluruh dunia'
              ].map((text) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        text,
                        style: TextStyle(
                            color: Color(0xff122d4f),
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color(0xff122d4f),
                ),
                padding: EdgeInsets.all(20),
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
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Start())),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          backgroundColor: const Color(0Xfff9f7e4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: Text(
                          'CEK CUACA',
                          style: TextStyle(
                              color: Color(0xff122d4f),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Prediksi())),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          backgroundColor: const Color(0Xfff9f7e4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        child: Text(
                          'PREDIKSI CUACA 16 HARI KEDEPAN',
                          style: TextStyle(
                              color: Color(0xff122d4f),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
          backgroundColor: Color(0xfff9f7e4),
          child: ListView(children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff122d4f),
              ),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud, size: 50, color: Color(0xfff9f7e4)),
                      SizedBox(height: 10),
                      Text(
                        'WEATHER APP',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff9f7e4),
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const About()));
              },
            ),
            ListTile(
              title: Text('Feature'),
              leading: Icon(Icons.featured_play_list),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Feature())),
            )
          ])),
    );
  }
}
