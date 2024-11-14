import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';

class HasilTracking extends StatefulWidget {
  final String daerah;
  const HasilTracking({super.key, required this.daerah});

  @override
  State<HasilTracking> createState() => _HasilTrackingState();
}

class _HasilTrackingState extends State<HasilTracking> {
  Future<Map<String, dynamic>> getDataFromAPI() async {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=${widget.daerah}&appid=bb783490ba619c4cc870a9a7b0a8fb86&&units=metric"));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to load data API Error');
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'CEK CUACA',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff122D4F)),
          ),
          backgroundColor: const Color(0xFFF9F7E4),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Container(
          color: Color(0xff122d4f),
          padding: EdgeInsets.all(30),
          child: FutureBuilder(
            future: getDataFromAPI(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasData) {
                final weatherMain = snapshot.data!['weather'][0]['main'];

                return Stack(
                  children: [
                    if (weatherMain == 'Rain')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Rain.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (weatherMain == 'Clear')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Clear.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (weatherMain == 'Clouds')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Clouds.json',
                          fit: BoxFit.contain,
                        ),
                      ),
                    if (weatherMain == 'Snow')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Snow.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (weatherMain == 'Drizzle')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Rain.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (weatherMain == 'Mist')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Clouds.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (weatherMain == 'Haze')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Clouds.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (weatherMain == 'Dust')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Dust.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (weatherMain == 'Fog')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Dust.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (weatherMain == 'Thunderstorm')
                      Positioned.fill(
                        child: Lottie.asset(
                          'lib/asset/animate/Thunderstorm.json',
                          fit: BoxFit.cover,
                        ),
                      ),
                    // Tambahkan kondisi Lottie lainnya sesuai cuaca

                    // Konten utama berada di atas Lottie
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cuaca di daerah ${widget.daerah} adalah :",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff9f7e4),
                                fontSize: 20),
                          ),
                          Text(
                            snapshot.data!['weather'][0]['main'] == 'Rain'
                                ? "Hujan"
                                : weatherMain == 'Clear'
                                    ? "Cerah"
                                    : weatherMain == 'Clouds'
                                        ? "Berawan"
                                        : weatherMain == 'Snow'
                                            ? "Salju"
                                            : weatherMain == 'Drizzle'
                                                ? "Hujan Gerimis"
                                                : weatherMain == 'Mist'
                                                    ? "Berkabut"
                                                    : weatherMain == 'Haze'
                                                        ? "Berkabut Tipis"
                                                        : weatherMain == 'Dust'
                                                            ? "Berdebu"
                                                            : weatherMain ==
                                                                    'Fog'
                                                                ? "Berkabut Tebal"
                                                                : weatherMain ==
                                                                        'Thunderstorm'
                                                                    ? "Petir"
                                                                    : "cuaca tidak ditemukan",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff9f7e4),
                                fontSize: 20),
                          ),
                          Image(
                            image: NetworkImage(
                              "https://openweathermap.org/img/wn/${snapshot.data!['weather'][0]['icon']}@2x.png",
                            ),
                            width: 100,
                            height: 100,
                          ),
                          Text(
                            "Suhu : ${snapshot.data!['main']['temp']}°C",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff9f7e4),
                                fontSize: 20),
                          ),
                          Text(
                            "Kelembaban : ${snapshot.data!['main']['humidity']}%",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff9f7e4),
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: Text(
                    'Error!! Daerah tidak ditemukan',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xfff9f7e4),
                        fontSize: 20),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
