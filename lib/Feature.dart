import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
  const Feature({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Feature',
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
          iconTheme: IconThemeData(color: Color(0xff122D4F)),
        ),
        body: Container(
          color: Color(0xff122D4F),
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'FITUR APLIKASI',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFFF9F7E4)),
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF9F7E4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.timelapse,
                                color: Color(0xff122d4f), size: 30),
                            SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                'Memprediksi cuaca dengan real-time.',
                                style: TextStyle(
                                    color: Color(0xff122d4f),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.date_range,
                                color: Color(0xff122d4f), size: 30),
                            SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                'Dapat memprediksi cuaca sampai 16 hari kedepan',
                                style: TextStyle(
                                    color: Color(0xff122d4f),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_rounded,
                                color: Color(0xff122d4f), size: 30),
                            SizedBox(width: 10),
                            Flexible(
                              child: Text(
                                'Tersedia berbabgai lokasi diseluruh dunia',
                                style: TextStyle(
                                    color: Color(0xff122d4f),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.percent_rounded,
                                color: Color(0xff122d4f), size: 30),
                            SizedBox(width: 10),
                            Text(
                              'Tingkat keakuratan 90%',
                              style: TextStyle(
                                  color: Color(0xff122d4f),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        )
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
