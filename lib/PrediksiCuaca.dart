import 'package:flutter/material.dart';

import 'HasilPrediksi.dart';

class Prediksi extends StatefulWidget {
  const Prediksi({super.key});

  @override
  State<Prediksi> createState() => _PrediksiState();
}

class _PrediksiState extends State<Prediksi> {
  TextEditingController daerahController = TextEditingController();
  final List<String> Times = [
    '1 Hari Kedepan',
    '2 Hari Kedepan',
    '3 Hari Kedepan',
    '4 Hari Kedepan',
    '5 Hari Kedepan',
    '6 Hari Kedepan',
    '7 Hari Kedepan',
    '8 Hari Kedepan',
    '9 Hari Kedepan',
    '10 Hari Kedepan',
    '11 Hari Kedepan',
    '12 Hari Kedepan',
    '13 Hari Kedepan',
    '14 Hari Kedepan',
    '15 Hari Kedepan',
    '16 Hari Kedepan'
  ];
  final List<String> WaktuPrediksi =
      List.generate(16, (i) => (i + 1).toString());
  String? SelectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CEK PREDIKSI CUACA',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xff122D4F)),
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
        decoration: const BoxDecoration(
          color: Color(0xff122d4f),
        ),
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'MASUKAN KOTA',
                  style: TextStyle(fontSize: 20, color: Color(0xfff9f7e4)),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: daerahController,
                  decoration: InputDecoration(
                    hintText: 'ex: Ciruas',
                    hintStyle: const TextStyle(color: Color(0xfff9f7e4)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color:
                            Color(0xfff9f7e4), // Warna border saat tidak fokus
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.blue, // Warna border saat fokus
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  style:
                      const TextStyle(color: Color(0xfff9f7e4)), // Warna teks
                ),
                SizedBox(height: 20),
                Center(
                  child: DropdownButton<String>(
                    value: SelectedTime,
                    hint: const Text(
                      'Pilih Hari Prediksi',
                      style: TextStyle(color: Color(0xfff9f7e4)),
                    ),
                    items: List.generate(Times.length, (index) {
                      return DropdownMenuItem<String>(
                        value: WaktuPrediksi[index],
                        child: Text(
                          Times[index],
                          style: TextStyle(color: Color(0xfff9f7e4)),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        SelectedTime = value; // Perbarui nilai SelectedTime
                      });
                    },
                    dropdownColor: Color(
                        0xff122d4f), // Ubah warna background dropdown menjadi merah
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hasilprediksi(
                                  daerah: daerahController.text,
                                  waktu: SelectedTime!)));
                      print(daerahController.text);
                      print(SelectedTime);
                    },
                    child: Text(
                      'Tracking',
                      style: TextStyle(
                          color: Color(0xff122d4f),
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Color(0xfff9f7e4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
