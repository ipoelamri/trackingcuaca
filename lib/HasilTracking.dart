import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
            padding: EdgeInsets.all(20),
            child: Center(
              child: FutureBuilder(
                  future: getDataFromAPI(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }
                    if (snapshot.hasData) {
                      print(snapshot.data);
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Cuaca di daereh ${widget.daerah} adalah :",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff9f7e4),
                                fontSize: 20),
                          ),
                          // Text('${snapshot.data!['weather'][0]['main']}'),
                          if (snapshot.data!['weather'][0]['main'] == 'Rain')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Hujan",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          if (snapshot.data!['weather'][0]['main'] == 'Clear')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Cerah",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          if (snapshot.data!['weather'][0]['main'] == 'Clouds')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Berawan",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          if (snapshot.data!['weather'][0]['main'] == 'Dust')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Berdebu",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          if (snapshot.data!['weather'][0]['main'] == 'Haze')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Kabut Tipis",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          if (snapshot.data!['weather'][0]['main'] == 'Fog')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Kabut Tebal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          if (snapshot.data!['weather'][0]['main'] == 'Mist')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Berkabut",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          if (snapshot.data!['weather'][0]['main'] == 'Drizzle')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Hujan Gerimis",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          if (snapshot.data!['weather'][0]['main'] == 'Snow')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Salju",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          if (snapshot.data!['weather'][0]['main'] ==
                              'Thunderstorm')
                            const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Badai Petir",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xfff9f7e4),
                                        fontSize: 20),
                                  ),
                                ]),
                          Image(
                              image: NetworkImage(
                                "https://openweathermap.org/img/wn/${snapshot.data!['weather'][0]['icon']}@2x.png",
                              ),
                              width: 100,
                              height: 100),
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
                      );
                    } else {
                      return const Text('Error!! Daerah tidak ditemukan');
                    }
                  }),
            ),
          )),
    );
  }
}
