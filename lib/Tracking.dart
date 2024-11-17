import 'package:flutter/material.dart';
import 'HasilTracking.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  TextEditingController daerahController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CEK CUACA',
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
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: const Text(
                    'MASUKAN KOTA',
                    style: TextStyle(fontSize: 20, color: Color(0xfff9f7e4)),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
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
                  validator: (value) => value == null || value.isEmpty
                      ? 'Form Tidak Boleh Kosong!'
                      : RegExp(r'\d').hasMatch(value)
                          ? 'Form Tidak Boleh Berisi Angka!'
                          : null,
                  style:
                      const TextStyle(color: Color(0xfff9f7e4)), // Warna teks
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate())
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HasilTracking(
                                    daerah: daerahController.text)));
                      print(daerahController.text);
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
