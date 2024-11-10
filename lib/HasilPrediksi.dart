import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Hasilprediksi extends StatefulWidget {
  final String daerah;
  final String waktu;

  const Hasilprediksi({super.key, required this.daerah, required this.waktu});

  @override
  State<Hasilprediksi> createState() => _HasilprediksiState();
}

class _HasilprediksiState extends State<Hasilprediksi> {
  late String lastTime;

  @override
  void initState() {
    super.initState();
    lastTime = (int.parse(widget.waktu) - 1)
        .toString(); // Menghitung dan mengubahnya ke String
  }

  Future<Map<String, dynamic>> getDataFromAPI() async {
    final response = await http.get(Uri.parse(
        "http://api.openweathermap.org/data/2.5/forecast?q=${widget.daerah}&cnt=${widget.waktu}&appid=ac4cb75c09156fba5da60238f85650e1&&units=metric"));
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
      debugShowCheckedModeBanner: false,
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
                  final int index = int.parse(lastTime);
                  final List weatherData = snapshot.data!['list'];
                  final weather = weatherData[index]['weather'][0];
                  final temp = weatherData[index]['main']['temp'];
                  final humidity = weatherData[index]['main']['humidity'];
                  final weatherIcon = weatherData[index]['weather'][0]['icon'];
                  final weatherCondition = weather['main'];

                  // Mapping kondisi cuaca
                  Map<String, String> weatherConditions = {
                    'Rain': 'Hujan',
                    'Clear': 'Cerah',
                    'Clouds': 'Berawan',
                    'Dust': 'Berdebu',
                    'Haze': 'Kabut Tipis',
                    'Fog': 'Kabut Tebal',
                    'Mist': 'Berkabut',
                    'Drizzle': 'Hujan Gerimis',
                    'Snow': 'Salju',
                    'Thunderstorm': 'Badai Petir'
                  };

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cuaca di daerah ${widget.daerah} adalah : ",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff9f7e4),
                            fontSize: 20),
                      ),
                      Text(
                        weatherConditions[weatherCondition] ?? "Tidak Dikenal",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff9f7e4),
                            fontSize: 20),
                      ),
                      Image.network(
                        "https://openweathermap.org/img/wn/$weatherIcon@2x.png",
                        width: 100,
                        height: 100,
                      ),
                      Text(
                        "Suhu : $temp°C",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff9f7e4),
                            fontSize: 20),
                      ),
                      Text(
                        "Kelembaban : $humidity%",
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
              },
            ),
          ),
        ),
      ),
    );
  }
}
