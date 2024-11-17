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

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Get screen width and height for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
        iconTheme: IconThemeData(color: Color(0xff122D4F)),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff122d4f),
        ),
        padding: EdgeInsets.all(screenWidth * 0.05), // Dynamic padding
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'MASUKAN KOTA',
                    style: TextStyle(
                      fontSize:
                          screenWidth * 0.05, // Adjust font size responsively
                      color: Color(0xfff9f7e4),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextFormField(
                  controller: daerahController,
                  decoration: InputDecoration(
                    hintText: 'ex: Ciruas',
                    hintStyle: const TextStyle(color: Color(0xfff9f7e4)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xfff9f7e4),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Form Tidak Boleh Kosong!';
                    } else if (RegExp(r'\d').hasMatch(value)) {
                      return 'Form Tidak Boleh Berisi Angka!';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Color(0xfff9f7e4)),
                ),
                SizedBox(height: screenHeight * 0.02),
                Center(
                  child: DropdownButtonFormField<String>(
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
                          style: const TextStyle(color: Color(0xfff9f7e4)),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        SelectedTime = value;
                      });
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Harap Pilih Waktu Prediksi!';
                      }
                      return null;
                    },
                    dropdownColor: const Color(0xff122d4f),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Hasilprediksi(
                              daerah: daerahController.text,
                              waktu: SelectedTime!,
                            ),
                          ),
                        );
                      }
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
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02, // Responsive padding
                        ),
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
