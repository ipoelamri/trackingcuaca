import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  const Feature({super.key});

  @override
  Widget build(BuildContext context) {
    // Dapatkan ukuran layar
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Feature',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xff122D4F),
            ),
          ),
          backgroundColor: const Color(0xFFF9F7E4),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          iconTheme: const IconThemeData(color: Color(0xff122D4F)),
        ),
        body: Container(
          color: const Color(0xff122D4F),
          padding: EdgeInsets.only(top: screenHeight * 0.03),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'FITUR APLIKASI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.04, // Tetap proporsional
                      color: Color(0xFFF9F7E4),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03), // Spasi responsif
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.all(screenWidth * 0.05), // Padding responsif
                    decoration: const BoxDecoration(
                      color: Color(0xFFF9F7E4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        // Fitur 1
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.timelapse,
                                color: const Color(0xff122d4f),
                                size: screenWidth * 0.08), // Ikon responsif
                            SizedBox(
                                width: screenWidth * 0.03), // Spasi responsif
                            Flexible(
                              child: Text(
                                'Memprediksi cuaca, suhu dan kelembapan dengan real-time.',
                                style: TextStyle(
                                  color: const Color(0xff122d4f),
                                  fontSize:
                                      screenWidth * 0.05, // Font responsif
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: screenHeight * 0.02), // Spasi responsif
                        // Fitur 2
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.date_range,
                                color: const Color(0xff122d4f),
                                size: screenWidth * 0.08),
                            SizedBox(width: screenWidth * 0.03),
                            Flexible(
                              child: Text(
                                'Dapat memprediksi cuaca, suhu dan kelembapan sampai 16 hari kedepan',
                                style: TextStyle(
                                  color: const Color(0xff122d4f),
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        // Fitur 3
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_rounded,
                                color: const Color(0xff122d4f),
                                size: screenWidth * 0.08),
                            SizedBox(width: screenWidth * 0.03),
                            Flexible(
                              child: Text(
                                'Tersedia berbagai lokasi di seluruh dunia',
                                style: TextStyle(
                                  color: const Color(0xff122d4f),
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        // Fitur 4
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.percent_rounded,
                                color: const Color(0xff122d4f),
                                size: screenWidth * 0.08),
                            SizedBox(width: screenWidth * 0.03),
                            Flexible(
                              child: Text(
                                'Tingkat keakuratan 90%',
                                style: TextStyle(
                                  color: const Color(0xff122d4f),
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
