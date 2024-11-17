import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Tracking.dart';
import 'PrediksiCuaca.dart';
import 'About.dart';
import 'Feature.dart';
import 'MediaSocial.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Index()));
}

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    double screenHeight = MediaQuery.of(context).size.height;
    print(screenHeight);

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
            // Carousel Slider for scrolling text
            CarouselSlider(
              options: CarouselOptions(
                height:
                    screenHeight * 0.3, // Adjusted height based on screen size
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
                'Memprediksi cuaca seluruh dunia'
              ].map((text) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: screenWidth, // Adjust width based on screen size
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      padding: EdgeInsets.fromLTRB(
                          screenWidth * 0.05,
                          screenHeight * 0.04,
                          screenWidth * 0.05,
                          screenHeight * 0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: Color(0xff122d4f),
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth *
                                0.08, // Adjust font size based on screen width
                          ),
                          textAlign: TextAlign.center,
                        ),
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
                margin: EdgeInsets.only(top: screenHeight * 0.07),
                padding:
                    EdgeInsets.all(screenWidth * 0.05), // Responsive padding
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
                            fontSize: screenWidth *
                                0.05), // Font size adjusted based on screen width
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Adjusted spacing
                      Icon(
                        Icons.cloud,
                        size: screenWidth *
                            0.25, // Icon size adjusted based on screen width
                        color: Color(0xfff9f7e4),
                      ),
                      SizedBox(height: screenHeight * 0.02), // Adjusted spacing
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Start())),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  screenHeight * 0.02), // Responsive padding
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
                      SizedBox(height: screenHeight * 0.02), // Adjusted spacing
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Prediksi())),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  screenHeight * 0.02), // Responsive padding
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
                      Icon(Icons.cloud,
                          size: screenWidth * 0.12,
                          color: Color(0xfff9f7e4)), // Responsive icon size
                      SizedBox(height: 10),
                      Text(
                        'WEATHER APP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff9f7e4),
                            fontSize:
                                screenWidth * 0.05), // Responsive font size
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
            ),
            ListTile(
              title: Text('Contact'),
              leading: Icon(Icons.link),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MediaSocial())),
            ),
          ])),
    );
  }
}
